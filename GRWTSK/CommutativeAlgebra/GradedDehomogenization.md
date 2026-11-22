# Homogeneous dehomogenization and power annihilation

Local attribution: grwtsk contributors.

Maintained source: [GradedDehomogenization.lean](GradedDehomogenization.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedDehomogenization`.

## Actual statement and hypotheses

Let `O,A` be commutative rings, let `A` be an `O`-algebra, and let
`𝒜 : ℤ → Submodule O A` carry Mathlib's actual `GradedAlgebra` structure.
Let `J` be a homogeneous ideal. For a homogeneous element `f∈𝒜 d` of
nonzero integer degree and a homogeneous element `h∈𝒜 w`, the theorem
`exists_pow_mul_mem_of_mem_sup_span_sub_one` proves

\[
\boxed{
h\in J+(f-1)\quad\Longrightarrow\quad
\exists n\in\mathbb N,\ f^n h\in J.
}
\]

The ideal in the premise is literally `J ⊔ Ideal.span {f - 1}`. The
conclusion is membership in the original ideal, with an actual power
multiplier. No abstract saturation predicate or unspecified annihilator
function replaces these objects.

There is no Noetherian, finite-generation, domain, characteristic-zero,
regular-element, or reducedness assumption on `A`. The element `f` may
be zero or a zero divisor. Only its **degree** is required to be nonzero.
The natural exponent may be zero. The grading is by `ℤ`; nonzero degree
therefore has infinite additive order. A general finite grading group
with merely `d≠0` would not give that property.

The exact interface is

```lean
theorem exists_pow_mul_mem_of_mem_sup_span_sub_one
    (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (f : A) (hd : d ≠ 0) (hf : f ∈ 𝒜 d)
    (w : ℤ) (h : A) (hh : h ∈ 𝒜 w)
    (hmem : h ∈ J ⊔ Ideal.span {f - 1}) :
    ∃ n : ℕ, f ^ n * h ∈ J
```

The ambient rings, algebra, and grading are the variables specified
above. Their type universes are arbitrary; specializing them to `Type`
recovers the submitted statement's universe scope.

## Complete primary analytical proof

### 1. Normalize the homogeneous component progression

Membership in `J+(f−1)` gives elements `j∈J` and `u∈A` such that

\[
h=j+u(f-1),\qquad h-fu+u\in J.
\]

Let `q:A→A/J` be the actual quotient ring map. Set

\[
a=q(f),\qquad b=q(h),\qquad
c(k)=q\!\left(\operatorname{pr}_{w+kd}(u)\right)
\quad(k\in\mathbb Z).
\]

Each element of a genuine graded algebra has only finitely many nonzero
homogeneous components. Applying `q` can remove components from the
support but cannot add new ones. The map `k↦w+kd` is injective because
`d≠0` in `ℤ`. Pulling back the finite support along this injection shows
that the normalized coefficient function `c:ℤ→A/J` has finite support.

### 2. Project the actual ideal membership

Because `J` is homogeneous, every homogeneous projection of
`h−fu+u∈J` lies in `J`. Homogeneity of `f` gives

\[
\operatorname{pr}_{w+kd}(fu)
=f\operatorname{pr}_{w+(k-1)d}(u).
\]

Passing to `A/J` therefore gives

\[
q\!\left(\operatorname{pr}_{w+kd}(h)\right)
-a c(k-1)+c(k)=0.
\]

The element `h` has degree `w`. Since `d≠0`, the component of `h` in
degree `w+kd` vanishes whenever `k≠0`. Thus

\[
c(k)=a c(k-1)\quad(k\ne0),
\qquad c(0)=a c(-1)-b.
\tag{1}
\]

This is a recurrence with exactly one defect, at index zero. The
maintained proof obtains it from the quotient map and homogeneous
projections; it is not an added assumption of the graded theorem.

### 3. Finite support eliminates the negative tail

For `n≥0`, put `v_n=c(-1-n)`. Away from index zero, (1) says

\[
v_n=a v_{n+1}.
\]

Induction gives `v_0=a^N v_N` for every natural `N`. Finite support
supplies some `N` with `v_N=0`, so `c(-1)=v_0=0`. No multiplication
by `a` has been cancelled. This is why zero divisors cause no problem.

The exceptional equation in (1) now reduces to

\[
c(0)=-b.
\]

### 4. Finite support eliminates the forward tail

Using the recurrence at positive indices gives

\[
c(n)=a^n(-b)\qquad(n\in\mathbb N).
\]

Finite support supplies some natural `n` with `c(n)=0`. Consequently
`a^n b=0`. This generic conclusion is maintained separately as
`exists_pow_mul_eq_zero_of_recurrence`, for a finitely supported
integer-indexed function with the exact relations (1).

The finite-support helper used in both directions says that an
injective natural ray `n↦w+nd`, with `d≠0`, cannot stay inside a finite
support forever. It requires only a zero in the coefficient type; the
backward-iteration helper requires only a monoid with zero.

### 5. Return from the quotient to the original ideal

In the application, `a=q(f)` and `b=q(h)`. Since `q` preserves products
and powers,

\[
0=a^n b=q(f^n h).
\]

The kernel of the actual quotient map is `J`, so `f^n h∈J`, as required.
This completes the original statement without any cancellation,
finiteness, or reducedness hypothesis on the quotient ring.

## Consumer in the local reducedness argument

The direct submitted consumer is the local `red` construction in
[LocLenQuotientWeightPieceLeOne.lean][consumer]. It chooses `f` of degree
`−2`, `g` of degree `+2`, and a degree-zero element `τ=fg` whose value at
the chosen degree-zero field point is nonzero. A separate
[slice theorem][slice] supplies

\[
c\,g^N b h\in J+(f-1),
\]

where `c` is a nonzero coefficient scalar, `b` has degree zero, and `h`
is homogeneous. This product is homogeneous. Dehomogenization supplies
`m` such that `f^m c g^N b h∈J`. Multiplying by `f^N g^m` yields

\[
c\,(fg)^{N+m} b h\in J.
\]

The multiplier is now degree zero. Its field-point value is nonzero
under the separately retained hypotheses, so it can be inverted in the
relevant localization. The local module
[GradedDehomogenizationLocalization](GradedDehomogenizationLocalization.md)
records the actual localization and denominator-clearing return.

This core theorem proves the passage from homogeneous slice membership
to a power annihilator. It does not prove the slice membership supplier,
the M4 tangent argument, local cyclicity, the complete length-at-most-one
theorem, the Herbrand-to-valuation comparison, or RH/Dirichlet GRH.
The [arithmetic route audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
tracks those separate obligations.

## Alternative organization and hostile controls

An alternative analytical organization first localizes `A/J` at the
image of `f`. Multiplication by `f` then becomes invertible. The induced
integer grading and the finite support of a representative imply that
`(f−1)u` cannot be a nonzero homogeneous element: the extreme components
of its support would have to propagate indefinitely. The image of `h`
therefore vanishes in that localization; clearing its denominator gives
the power multiplier. This is a conceptual reorganization of the same
finite-support mechanism, not an independently formalized foundational
proof. The maintained proof works directly with the quotient recurrence.

The hypotheses have sharp failure controls:

- **Degree zero.** In `ℚ`, take `f=2`, `h=1`, and `J=0`. Both elements
  belong to degree zero for any given integer grading of the algebra.
  The ideal `(f−1)` is the whole ring, but `2^n·1` is never zero.
- **A nonhomogeneous target.** In standard-graded `ℚ[x]`, take `f=x`,
  `h=x−1`, and `J=0`. Slice membership holds, but every `x^n(x−1)`
  is a nonzero polynomial.
- **A nonhomogeneous ideal.** In the same algebra, take `J=(x−2)`,
  `f=x`, and `h=1`. Since `(x−1)−(x−2)=1`, the sum ideal is the
  whole ring. Evaluating at two shows that no `x^n` belongs to `J`.
- **A nonhomogeneous multiplier.** Take `f=x+1`, `h=x`, and `J=0`.
  Then `h=f−1`, but `(x+1)^n x` never vanishes.
- **The power cannot simply be omitted.** In standard-graded
  `ℚ[x,y]`, take `J=(xy)`, `f=x`, and `h=y`. Then
  `y=xy−y(x−1)` gives slice membership, and `fh∈J`, but `h∉J`.
- **Finite support is essential to the recurrence.** Over `ℚ`, set
  `a=b=1`, `c(k)=−1` for `k≥0`, and `c(k)=0` for `k<0`. It obeys
  (1), but no power of `a` kills `b`; the nonzero forward tail persists.
- **Nonzero degree in a torsion grading is insufficient.** Grade
  `ℚ(√2)` by `ℤ/2ℤ`, with odd piece `ℚ√2`. For `f=√2`, `h=1`,
  and `J=0`, the element `f−1` is a unit but no power of `f` kills
  `h`. The maintained theorem retains its integer grading.

The polynomial and torsion-grading examples are analytical controls.
The imported audit described below formally checks the rational
degree-zero example for every supplied valid integer grading, and the
infinite-tail recurrence example. It does not report a separate
construction of the trivial grading or polynomial counterexamples.

## Declaration provenance and comparison

All public names have the prefix given at the start of this record.

| Declaration | Role |
|---|---|
| `exists_pow_mul_eq_zero_of_recurrence` | Extracts a power annihilator from a finitely supported single-defect recurrence over an actual commutative ring. |
| `exists_pow_mul_mem_of_mem_sup_span_sub_one` | Constructs that recurrence from actual graded projections and ideal membership, then returns membership in the original ideal. |

Two private helpers prove existence of a zero on a natural ray and
backward recurrence iteration. Their proof dependencies are included
transitively in the public results. No new definitions of grading,
ideal quotient, or power membership are introduced.

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The repository locates the submitted source; its verification
maintainers are not attributed as the submission's mathematical authors.

| Pinned source | Correspondence | SHA-256 |
|---|---|---|
| [DehHolds.lean][external] | Exact statement `UpperTheory.V.Alg.M.deh_holds`. | `02f6ce5034e64a7a987eaedbaede444e5f82b7af76fe43b5a868150a64225aa0` |
| [LocLenQuotientWeightPieceLeOne.lean][consumer] | Direct use inside the local `red` proof, with degree `−2`. | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |
| [SliceHolds.lean][slice] | Separate geometric supplier of membership in `J+(f−1)`. | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |

These source files were read and matched byte for byte with their Git
blobs at the stated pin. The local proof normalizes the progression to
integer indices `k`, proves a reusable recurrence result over the
quotient ring, and then derives the actual graded statement. The
submitted proof instead carries the original degree indices throughout
its two inductions. Both use finite support and homogeneous projections.
No independent foundational proof or novelty claim follows from this
implementation difference.

The implementation is original, MIT licensed, and attributed to
`grwtsk contributors`. It imports root Mathlib and no submitted Lean
implementation. Mathlib's upstream authorship and licensing are retained.

## Exact-source verification

Source base: `grwtsk/math@bc258a0ff05033c88fa4f03c41c008b7bc656a32`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The maintained source passed `--trust=0 -DwarningAsError=true`, exit 0,
without warnings or errors, in 3.803 seconds. Its SHA-256 is
`663cd4bcb09681ff26de5eb57b871f9e7830178b8290bf97cc62f31b321f481b`.
The produced object has SHA-256
`910ae50e0776228ad834787122150dfbe0d2fa10b8ecbb0eae426a4e69c90df2`.
This source check used existing pinned Mathlib dependency objects.

An imported endpoint/axiom/control audit passed with the same flags,
exit 0, in 3.136 seconds. Its source SHA-256 is
`a61cb6587735a883850773452bc5ba25dd5c6de09aaade1c585f9961df478fab`.
It independently restates the exact graded endpoint, consumes the
generic recurrence through its coefficient identity, and checks the
rational degree-zero and infinite-tail controls described above. The
printed axiom sets of both public theorems are exactly
`[propext, Classical.choice, Quot.sound]`. In particular, neither result
depends on an admitted proof, an additional axiom, or native proof
evaluation. The maintained source and its object were unchanged during
the imported audit.

All attempts in this pass used the same environment description, whose
SHA-256 is
`d00f2e091fd82bbf07c46a203e8af8adbebdfc4086c4ebbf0faec0c53cac4ef4`.
The following earlier failures are retained as failures, not combined
with the successful checks:

| Attempt | Source SHA-256 | Actual outcome | Explanation |
|---|---|---|---|
| Source 1 | `a6f9c042044cc47a8e18fe723cc2c9bd48dfa9e5f2e0d5ec0978e06ed49ca8d2` | **FAIL**, exit 1, 14.001 s | A line break in finite-support method syntax parsed incorrectly; an unused simplifier entry was rejected with warnings as errors. |
| Source 2 | `2b569c695e5c37b8bedc5f9d7a3b209bd8a77d090cb652d8861409b4d190b769` | **FAIL**, exit 1, 5.611 s | The finite-support precomposition lemma inferred the wrong functions. Explicit named function arguments resolved it. |
| Source 3 | `663cd4bcb09681ff26de5eb57b871f9e7830178b8290bf97cc62f31b321f481b` | **PASS**, exit 0, 3.803 s | Exact maintained source; no diagnostics. |
| Imported audit 1 | `d153e413ff017c6a899401d0d33e01b48fb5d38671f5d099f50abbd2e0190aba` | **FAIL**, exit 1, 3.481 s | Deprecated conditional simplifier names and an incompletely simplified scratch coefficient identity were rejected. Both theorem axiom readouts already succeeded. |
| Imported audit 2 | `a61cb6587735a883850773452bc5ba25dd5c6de09aaade1c585f9961df478fab` | **PASS**, exit 0, 3.136 s | Exact imported endpoint, axiom readouts, and controls all succeeded. |

None of these attempts timed out. Corrections affected elaboration and
scratch audit syntax; the theorem hypotheses were not weakened. Exact
snapshots, JSON run records, and logs remain in the scratch verification
directory `tmp/deh_core` alongside this pass's shared verification
environment. They are not maintained theorem sources.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the external geometric consumer are **NOT_RUN**.
The stock Lean source check and imported endpoint check establish the
local results within the recorded dependency environment; they do not
certify the whole submitted development.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/DehHolds.lean
[consumer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean
[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
