# The unpaired polygon perimeter is the canonical additive circle

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).** The Lean module described here is an authored proof candidate. It has not been elaborated by Lean, accepted by the kernel, or audited for generated declarations, transitive axioms, unsafe dependencies, or native execution.

- Owner: [grwtsk/math#941](https://github.com/grwtsk/math/issues/941).
- Parent: [draft PR #901](https://github.com/grwtsk/math/pull/901), exact immutable head `e08b2826f99c21c62b51b07a8b383109f424cd60`.
- Parent issue: [#889](https://github.com/grwtsk/math/issues/889).
- New module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean`.
- Parent coordinate module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean`.
- Original unpaired-perimeter module: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean`.

## 1. Exact problem closed by this source candidate

For `k ≥ 0`, write

\[
g=k+2,\qquad N=4g=4(k+2).
\]

The parent PR #901 defined the genuine continuous map

\[
\Theta_k:P_k\longrightarrow \operatorname{AddCircle}(N)
       =\mathbb R/(N\mathbb Z),
\]

where `P_k = UnpairedPerimeter k` is the quotient of the original `4g` directed real unit intervals by consecutive endpoint seams only. On every original source point `p=((h,i),t)`,

\[
\Theta_k(q_k(p))
  = [\,4\,\operatorname{handleOrdinal}(h)+i+t\,].
\tag{E1}
\]

PR #901 proved that (E1) respects all four seam constructors and is continuous, but deliberately did not infer a homeomorphism from continuity.

The new source candidate supplies the missing global statements

```lean
perimeterAngle_injective k
perimeterAngle_surjective k
perimeterAngle_bijective k
```

and packages the result as

```lean
perimeterCircleHomeomorph k :
  UnpairedPerimeter k ≃ₜ AddCircle (angularPeriod k)
```

followed by

```lean
perimeterUnitCircleHomeomorph k :
  UnpairedPerimeter k ≃ₜ UnitAddCircle
```

The proof is source-specific: it retains every inherited handle and signed-side identifier and uses the exact endpoint quotient generated in issue #868.

## 2. Finite source decomposition

The original handle carrier is

\[
\operatorname{Handle}(k)=\operatorname{Fin}(2)\sqcup\operatorname{Fin}(k),
\]

and the directed corner carrier is

\[
\operatorname{PolygonCorner}(k)
 =\operatorname{Handle}(k)\times\operatorname{Fin}(4).
\]

The parent ordinal maps are

\[
\operatorname{handleOrdinal}(h)\in\{0,\ldots,k+1\},
\]

and

\[
j(h,i)=4\,\operatorname{handleOrdinal}(h)+i
       \in\{0,\ldots,4(k+2)-1\}.
\tag{E2}
\]

The new source proves both ordinal maps injective. It then constructs explicit inverses:

```lean
handleOfOrdinal :
  Fin (k + 2) → Handle k

cornerOfOrdinal :
  Fin (4 * (k + 2)) → PolygonCorner k
```

The handle inverse preserves the original distinction between the first two base handles and the `k` additional handles. The directed-side inverse uses quotient and remainder by four:

\[
n\longmapsto
\left(
  \operatorname{handleOfOrdinal}\!\left(\left\lfloor n/4\right\rfloor\right),
  n\bmod 4
\right).
\tag{E3}
\]

The source candidate records the exact right-inverse identity

```lean
directedSideOrdinal_cornerOfOrdinal
```

rather than merely comparing finite cardinalities.

This matters because `4g` is the number of directed boundary intervals. It is not the number `2g` of unoriented one-cell generator labels.

## 3. Half-open endpoint normalization

Each source interval is closed, so a naive union of the coordinate intervals

\[
[j,j+1]
\]

duplicates every seam address. The proof therefore normalizes right endpoints before invoking a fundamental-domain injectivity theorem.

The source defines

```lean
nextDirectedCorner k c
```

by advancing local side positions `0→1→2→3`; after side `3`, it uses the inherited `nextHandle k`, including the final wrap to the first handle.

It proves

```lean
perimeterProjection_one_eq_nextDirectedCorner
```

from the four actual source seam theorems:

```lean
perimeter_seam_01
perimeter_seam_12
perimeter_seam_23
perimeter_seam_next
```

No numerical equality is substituted for the quotient relation.

The canonical representative

```lean
canonicalBoundaryPoint k p
```

moves `t=1` to the next interval at `t=0` and leaves all other source points unchanged. The source candidate proves:

\[
q_k(\operatorname{canonical}(p))=q_k(p),
\tag{E4}
\]

\[
0\le t(\operatorname{canonical}(p))<1,
\tag{E5}
\]

and

\[
0\le
  \operatorname{sourceRealAngularAddress}
    (\operatorname{canonical}(p))
<N.
\tag{E6}
\]

Thus every quotient class is represented by a source point in one of the disjoint half-open intervals

\[
[j,j+1),\qquad 0\le j<N.
\]

## 4. Injectivity in the additive-circle fundamental domain

Mathlib supplies the imported theorem

```lean
AddCircle.coe_eq_coe_iff_of_mem_Ico
```

which says that the quotient map

\[
[0,N)\longrightarrow\mathbb R/(N\mathbb Z)
\]

is injective when `N>0`.

Suppose two perimeter classes have equal circle coordinates. Normalize source representatives `p` and `q` as above. Their real addresses both lie in `[0,N)`, so equality in `AddCircle N` implies equality in `ℝ`:

\[
j(p)+t(p)=j(q)+t(q).
\tag{E7}
\]

Because `j(p),j(q)` are integers and `0≤t(p),t(q)<1`, (E7) forces

\[
j(p)=j(q),\qquad t(p)=t(q).
\tag{E8}
\]

The proved injectivity of `directedSideOrdinal` then restores the exact original source corner, not merely an anonymous finite index. Therefore the canonical source points are equal. Equation (E4) returns equality of the original perimeter classes.

This proves the source candidate

```lean
perimeterAngle_injective
```

without assuming that the endpoint quotient is already a circle.

## 5. Surjectivity by floor and fractional part

Mathlib supplies a representative of every additive-circle point in the half-open fundamental domain:

```lean
AddCircle.eq_coe_Ico
```

Given `x∈[0,N)`, the source chooses

\[
n=\lfloor x\rfloor,\qquad
t=\operatorname{fract}(x)=x-\lfloor x\rfloor.
\]

The imported floor and fractional-part bounds give

\[
0\le n<N,\qquad 0\le t<1.
\tag{E9}
\]

The explicit `cornerOfOrdinal` construction turns `n` into the exact inherited polygon side, and `t` is a point of Mathlib's `unitInterval`. The imported identity

\[
\operatorname{fract}(x)+\lfloor x\rfloor=x
\tag{E10}
\]

then proves that this source point has real address `x`.

This yields

```lean
exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico
perimeterAngle_surjective
```

and hence the global bijection.

## 6. Compactness and the homeomorphism

The source `BoundaryPoint k` is a finite disjoint union of compact unit intervals. With the finite side index carrying the same discrete topology as in the parent modules, it is compact.

The quotient projection

```lean
perimeterProjection k :
  BoundaryPoint k → UnpairedPerimeter k
```

is already continuous and is proved explicitly surjective. The new source candidate therefore proves `UnpairedPerimeter k` compact as a continuous image.

The additive circle over `ℝ` is Hausdorff in the imported Mathlib topology. The source then applies

```lean
Continuous.homeoOfEquivCompactToT2
```

to the proved continuous bijection. This is the valid compact-to-Hausdorff upgrade that was intentionally unavailable in PR #901 before bijectivity and compactness were supplied.

The resulting homeomorphism has exactly the parent coordinate as its forward map:

\[
\operatorname{perimeterCircleHomeomorph}_k(x)
 =\Theta_k(x).
\tag{E11}
\]

Composition with the imported nonzero-period rescaling homeomorphism gives the standard unit additive circle. Explicit genus fixtures specialize to periods eight and twelve.

## 7. What is now closed, conditionally on elaboration

At source level, the dependency chain is:

\[
\begin{aligned}
&\text{exact source ordinals}
\\
&\Longrightarrow
\text{source ordinal inverse}
\\
&\Longrightarrow
\text{half-open endpoint normalization}
\\
&\Longrightarrow
\text{fundamental-domain injectivity}
\\
&\Longrightarrow
\Theta_k\ \text{injective},
\end{aligned}
\]

and

\[
\text{Ico representative}
+\text{floor/fract decomposition}
\Longrightarrow
\Theta_k\ \text{surjective}.
\]

Together with compactness and continuity:

\[
\boxed{
P_k\cong \operatorname{AddCircle}(4g)\cong\mathbb R/\mathbb Z.
}
\tag{E12}
\]

Because the file is still unelaborated, (E12) is an authored theorem candidate, not yet a kernel-accepted repository theorem.

## 8. Remaining topological frontier

The next independent obligation is not another proof that the perimeter is a circle. It is to connect this authenticated source circle to a standard closed disk and to the existing filled quotient.

A suitable next bounded increment should construct a standard disk model and prove a source-preserving boundary homeomorphism or cone-to-disk homeomorphism, then transport the already-defined attaching-direction map

\[
P_k\longrightarrow B_k
\]

to an actual standard boundary map

\[
\partial D^2\longrightarrow B_k.
\]

Still separate are:

- joint continuity of the radial filling map;
- the pushout/adjunction property of the filled quotient;
- a genuine CW surface and manifold theorem;
- cellular-versus-singular chain comparison;
- van Kampen and Hurewicz;
- hyperbolic structures and primitive geodesic lengths;
- Selberg or Weil–Petersson trace statements;
- GUE, sofic, Chowla, Möbius, zeta-divisor, or Riemann-hypothesis consequences.

No such theorem is inferred from (E12).

## 9. Hostile review controls

Review and replay must reject any implementation that:

1. replaces `4g` directed sides by `2g` generator labels;
2. forgets the original base-versus-extra handle identity;
3. treats the real period `N` as zero;
4. uses closed intervals without resolving duplicate right endpoints;
5. omits the final `nextHandle` wrap seam;
6. identifies distinct strict interior source points;
7. proves only a cardinality equality rather than an exact ordinal inverse;
8. assumes injectivity or surjectivity of `perimeterAngle`;
9. infers a homeomorphism from continuity alone;
10. silently changes the topology on the interval factor;
11. substitutes the already paired one-skeleton for the unpaired source;
12. promotes this result to a disk, CW, manifold, trace-formula, arithmetic, or RH theorem.

## 10. Trust and operations

The new work is isolated on a direct child branch of the exact PR #901 head. It adds one Lean source, this mathematical note, and a passive verification manifest. It does not modify parent sources, public roots, toolchains, dependencies, workflows, CI, caches, executors, or native/VM/F06 settings.

Required before acceptance:

- Lean/Lake elaboration at the exact immutable head;
- exact theorem-type extraction;
- authored and generated declaration reconciliation;
- full transitive import review;
- axiom and unsafe-declaration audit;
- executable hostile-fixture replay;
- source, note, manifest, parent, and commit hash reconciliation.

**Current trust status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**
