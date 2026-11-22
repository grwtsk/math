# Tangent rigidity on an actual graded slice

Local attribution: grwtsk contributors.

Maintained source: [GradedSlicePointDerivation.lean](GradedSlicePointDerivation.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedSlicePointDerivation`.
The module consumes the actual [Euler derivation](GradedEulerDerivation.md)
and [localization pullback theorem](LocalizedPointDerivation.md).

## Actual objects and statements

Let `O,A` be commutative rings, `A` an `O`-algebra with a genuine
integer grading `𝒜`, and `K` an `O`-algebra that is a field. Let `I`
be a homogeneous ideal. At an actual algebra map `ξ:A→ₐ[O]K`, a point
derivation is an `O`-linear map `D:A→ₗ[O]K` satisfying

\[
D(ab)=\xi(a)D(b)+\xi(b)D(a).
\]

The source's `PtDer ξ K` is exactly the `K`-submodule with this
carrier, expressed using scalar multiplication in
[ResMapBijective.lean][point]. The maintained theorem statements expand
this product rule directly; they introduce no custom point-derivation
predicate or replacement tangent object.

The source's `M4` condition in [OrbitVanishingLocal.lean][conditions]
says that, at every point killing `I` which is nonzero on both a
negative and a positive homogeneous degree, any two point derivations
killing `I` satisfy a nontrivial `K`-linear dependence. In symbols,
for the relevant `D,E`,

\[
\exists \alpha,\beta\in K,\quad
(\alpha\ne0\lor\beta\ne0),\qquad \alpha D+\beta E=0.
\]

This complete hypothesis, including both point conditions, both
product rules, and both ideal-vanishing conditions, is expanded in
the maintained global theorem signatures. It remains a supplied
mathematical premise.

### Fixed-point return

At one point killing `I`, assume the stated tangent dependence.
For `f∈A_d` with

\[
(d:K)\ne0,\qquad \xi(f)\ne0,
\]

every point derivation killing both `I` and `f` is zero. This retains
the degree after its actual cast to the point field. The condition
`d≠0` in the integers would be insufficient.

### Actual slice return

Choose `d<0`, `e>0`, `f∈A_d`, `g∈A_e`, with `(d:K)≠0`, and any
coefficient `π∈O`. Define the actual ideal, quotient element, and
localization

\[
J=I+(f-1),\qquad
s=\overline\pi\,\overline g\in A/J,\qquad
C=(A/J)[1/s].
\]

Then every actual point `ψ:C→ₐ[O]K` has zero point derivations:

\[
\boxed{\forall D:C\to_O K,\quad
[D(xy)=\psi(x)D(y)+\psi(y)D(x)]\Longrightarrow D=0.}
\]

Thus the source submodule `PtDer ψ K` is bottom. The imported audit
independently reconstructs that submodule and checks this exact return.

The two degrees need not have equal magnitude. A nonzero `π` is not
needed for this implication alone: if `s=0`, the localization has no
points in a nontrivial field, so the universally quantified assertion
remains valid. The source's later use of a nonzero uniformizer to invert
all nonzero coefficients has its own separate role.

The final public specialization uses `d=−2,e=2`, characteristic zero
of `O`, and faithful scalar action on `K`. Injectivity of `O→K`
transfers characteristic zero to `K`, supplying `(-2:K)≠0`.

## Complete primary analytical argument

### 1. Construct the actual Euler direction and preserve the ideal

The [Euler module](GradedEulerDerivation.md) constructs

\[
E_A\left(\sum_j a_j\right)=\sum_j j\,a_j
\]

from the finite direct-sum decomposition. Degrees add under products,
so this is an actual `Derivation O A A`. Since `I` is homogeneous,
every homogeneous component of an element of `I` lies in `I`; multiplying
it by its degree and adding the finite list shows `E_A(I)⊆I`.

For a point `ξ` killing `I`, compose with `ξ` to obtain the actual
`O`-linear map `E=ξ∘E_A`. It satisfies the point product rule, kills
`I`, and has

\[
E(f)=(d:K)\,\xi(f)\ne0.
\]

Neither the Euler construction nor ideal preservation requires a field
or a characteristic assumption. Those conditions enter in detecting
this nonzero value and in the following scalar argument.

### 2. Use the nontrivial tangent dependence

Let `D` be a point derivation killing `I` and `f`. Dependence supplies
`αD+βE=0`, with `α` and `β` not both zero. Evaluating at `f` gives

\[
0=\alpha D(f)+\beta E(f)=\beta E(f).
\]

Since `E(f)≠0` in the field, `β=0`, hence `α≠0`. Evaluating the
remaining relation `αD=0` at every element gives `D=0`.

The fixed-point theorem proves precisely this argument, using the
constructed Euler map rather than assuming that a suitable nonzero
derivation exists.

### 3. Pull a point and derivation back from the genuine slice

Let

\[
\varphi:A\longrightarrow A/J\longrightarrow C
\]

be the actual quotient-localization composite, and let `ψ:C→ₐ[O]K`
be a point. The normalization gives `φ(f)=1`, and the ideal quotient
gives `φ(I)=0`. The product `φ(π)φ(g)` is a unit, so `φ(g)` is a
unit. Therefore `ξ=ψ∘φ` satisfies

\[
\xi(I)=0,\qquad\xi(f)=1,\qquad\xi(g)\ne0.
\]

The negative degree of `f` and positive degree of `g` give exactly
the two-signed point condition required by `M4`.

If `D:C→ₗ[O]K` satisfies the point product rule, its pullback
`D'=D∘φ` is a point derivation at `ξ` and kills `I`. Also `D(1)=0`:
the product rule at `(1,1)` says `D(1)=D(1)+D(1)`, and additive
cancellation proves the claim in every characteristic. Thus
`D'(f)=D(1)=0`. The preceding fixed-point theorem gives `D'=0`.

### 4. Return vanishing through localization

The map `φ` need not be surjective. The proof instead uses the actual
localization denominator property. For any `z∈C`, there are
`r∈A/J` and a power denominator `t` such that

\[
z\,\iota(t)=\iota(r).
\]

Surjectivity of the ideal quotient map shows that `D` vanishes on
the entire image of `A/J`. Apply the product rule to this identity:

\[
0=\psi(z)D(\iota(t))+\psi(\iota(t))D(z)
 =\psi(\iota(t))D(z).
\]

The coefficient is a unit, so `D(z)=0`. The maintained localization
theorem proves this even for a commutative target ring with zero
divisors. Applying it here completes the return to `D=0` on `C`.

## Geometric interpretation and alternative comparison

The grading supplies a scaling direction; its infinitesimal form is
Euler. The tangent-dependence hypothesis says the relevant tangent
space has at most one direction. Imposing `f=1` removes that direction
when its derivative `(d:K)ξ(f)` is nonzero. This interpretation explains
the scalar proof but does not claim a separately formalized group
action or geometric quotient.

Euler generally does **not** descend through `J=I+(f−1)`: its point
value on `f−1` is `(d:K)`, which is nonzero here. It is constructed
on `A` and compared with derivations pulled back from the slice.
Treating it as a derivation already defined on the slice would lose
the decisive transverse direction.

An alternative linear-algebra organization regards `D↦D(f)` as a
nonzero linear functional on a tangent space of dimension at most
one, hence as an injective functional. The maintained proof uses
the source's explicit pairwise dependence and scalar cancellation,
without adding a finite-dimensionality or dimension-comparison
supplier. These descriptions share the same mathematical premise
and are not independent foundational proofs. No novelty is claimed.

## Counterexamples and exact remaining boundary

The following full mathematical examples locate the essential
hypotheses. Compiled control scope is stated separately below.

- **The cast degree can vanish.** Over `k=𝔽₂`, take
  `A=k[t,t⁻¹]`, `deg t=−1`, `I=0`, `f=t²`, `g=t⁻²`, and the
  point `t↦1`. Point derivations are determined by their value on
  `t`, so `M4` holds. Nevertheless the derivative at one is nonzero
  and kills `f`, because `2=0`. The slice is
  `k[t,t⁻¹]/(t²−1)≅k[ε]/(ε²)`, with a nonzero tangent direction.
  Integer nonzero degree does not imply transversality over this field.
- **Ideal homogeneity is substantive.** Take
  `A=ℚ[t,t⁻¹,y]`, `deg t=−1`, `deg y=0`, and `I=(t−1)`.
  At points killing `I`, derivations killing `I` are the single
  `y`-direction, so the dependence condition holds. With `f=t²`
  and `g=t⁻²`, the slice is `ℚ[y]` and has a nonzero derivative.
  The missing hypothesis is homogeneity: Euler does not preserve
  `(t−1)`. The simpler Euler control at `(T−1)` is compiled in the
  core audit.
- **Tangent dependence is needed.** In `A=ℚ[x,y]` with degrees
  `−2,+2`, set `I=0`, `f=x`, `g=y`. The slice is
  `ℚ[y,y⁻¹]`, with its nonzero `y`-derivation. The original point
  tangent space has two independent directions, so `M4` fails.
- **An injective map is not a localization substitute.** The map
  `ℚ→ℚ[X]` is injective, yet the derivative at zero kills its image
  and is nonzero. The localization audit compiles this control and
  separately treats the nonsurjective genuine localization `ℤ→ℚ`.

The new endpoint is the complete `hder` subargument in
[SliceHolds.lean][slice]. To obtain the actual slice relation used by
[dehomogenization](GradedDehomogenizationLocalization.md), the source
still needs the finite-type supplier [FtHolds.lean][ft] and
[EtHolds.lean][et]. The latter supplies finiteness of the field-valued
point set and separation of elements by those points.

A precise next local theorem is the source's private `et_unram`:
for a finite-type `O`-algebra `C`, if each maximal residue field
embeds as an `O`-algebra into `K`, and every `K`-valued point has
zero point derivations, then `Algebra.FormallyUnramified O C`.
Its proof must construct a point derivation from a nonzero dual of
`Ω[C/O]/mΩ[C/O]`, then use finite generation and Nakayama to force
`Ω[C/O]=0`. The residue-field embeddings and finite-type hypothesis
are real suppliers, not conclusions of the present module.

For example `ℚ(i)` has no `ℚ`-valued points, so a statement about
all such point derivations is vacuous and those points do not separate
one from zero. The source's algebraically closed target and residue-point
construction prevent this failure. Zero tangent spaces alone are not
being promoted here to a full reduced-slice or RH conclusion.

## Declaration and source correspondence

| Local declaration | Source role |
|---|---|
| `point_eq_zero_of_normalizing_element` | The Euler/nontrivial-dependence scalar argument at a point; allows any nonzero value of `ξ(f)`. |
| `point_eq_zero_of_twoSigned` | Instantiates the fully expanded `M4` condition from negative and positive homogeneous values. |
| `slice_point_eq_zero` | The actual `hder` return for the quotient-localization, with explicit degree cast and arbitrary negative/positive degrees. |
| `slice_point_eq_zero_of_charZero` | Source-shaped degrees `−2,+2` and faithful characteristic-zero coefficients. |
| Private `linearMap_eq_zero_of_dependent` | Cancels the two scalar coefficients after evaluation at the normalizing element. |

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | SHA-256 |
|---|---|
| [SliceHolds.lean][slice] | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [OrbitVanishingLocal.lean][conditions] | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [ResMapBijective.lean][point] | `20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e` |
| [EtHolds.lean][et] | `f2c5fbe52de89015a446afccc25c2637dd35794692d1c4ce82a8d55f77d26f80` |
| [FtHolds.lean][ft] | `f3934878da5e7bb158d2ba4571d0d4f22531a354151813dda2025e3d59e4f298` |

The module is original MIT-licensed source attributed to `grwtsk
contributors`, importing the two local reconstructions and root Mathlib.
No submitted implementation is copied or imported. The source comparison
repository locates the mathematics; it does not attribute authorship of
the submitted proof to its verification maintainers.

## Exact-source verification

Source base: `grwtsk/math@06a747e6244febf917e797a672c5ea8f6e07064a`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The maintained source passed `--trust=0 -DwarningAsError=true`, exit 0
with no diagnostics, in **7.347 seconds**. Source SHA-256 is
`e1bc617d6aba18be695666020d5ec6e5cb19bb74b7018a5d3fda4f39a6b2a789`;
produced object SHA-256 is
`35f85c7cbeb9696280b2fba0ab1dd0e481329b1b56c16c76a68c46466c52d4e0`.
The imported endpoint audit passed the same flags, exit 0, in
**36.465 seconds**. It reconstructs the actual point-derivation
submodule from its product-rule carrier and checks that this submodule
is bottom on the slice, using the source-shaped `M4` quantifier order.
It also checks the unequal-degree instance `−3,+5`, the characteristic-two
degree-cast obstruction, and the absence of a field-valued point on the
zero localization. All four public theorem axiom reports are exactly
`[propext, Classical.choice, Quot.sound]`. The private scalar helper is
therefore covered transitively by the public results.

| Final verification artifact | SHA-256 |
|---|---|
| Imported endpoint audit source | `1a8eb87123ecf48f1258964dd3e1d5a74642d27650d981c9cd333f8110959f0c` |
| Imported endpoint audit log | `4b5462f206846ec8023f1ea846faebf1d9c7f223485ea66b472e8761be43270f` |
| Maintained-source log (empty) | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Recorded compilation environment | `470cd18cdb19d12e1462dcb2195d94e25bdd7ca1968746104478fd1d9e7c8301` |
| Fresh dependency/source identity check | `a89b95ef71f3e6fa7dc0ce4ef37402af9d1de96db3180e141e1ea3e30a3c4329` |

The two local imported sources and objects were unchanged before and
after both final runs:

| Dependency | Source SHA-256 | Object SHA-256 |
|---|---|---|
| `GradedEulerDerivation` | `1bcaff4f8b45b558a24380410dc8c0997304c6bf6b17119686fb01ae7dd5ee4e` | `d18c57e51acbf2e8725788b8bec9eb5dc2c2411b2fc3d0dc307f37a275555f7b` |
| `LocalizedPointDerivation` | `fb556fbf8ee8ae48899cc225eb529a2093a3573d91a0a67d2b878f90dc15d17f` | `a70fbd14669919510c00b3fc922f69b8e05af49bd46e36f6cb61b8d909116de2` |

A fresh identity check confirmed the Lean compiler version, all nine
package revisions against the root manifest, clean tracked package
sources, and unchanged root import, toolchain, lake configuration, and
manifest files. This is an identity check of the cached dependencies;
it is not a fresh replay of their proofs.

All five Lean attempts were retained as source snapshots, logs, and
execution records. Every attempt used the two flags above; no run was
timed out or interrupted.

| Attempt | Result | Seconds | Source SHA-256 | Log SHA-256 |
|---|---|---:|---|---|
| Maintained source 1 | FAIL, exit 1 | 5.691 | `2fe625e5df1761580b333850a963a3f7e84fb8ac9ba453b545ac72217c6aa6ad` | `9f11f2b5f018f15cc7e48cb9def2ba40fb3ae2b86eb16b78eb3fadf509b66f9f` |
| Maintained source 2 | PASS, exit 0 | 7.347 | `e1bc617d6aba18be695666020d5ec6e5cb19bb74b7018a5d3fda4f39a6b2a789` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Imported audit 1 | FAIL, exit 1 | 58.208 | `b325bc7e026860065333c6636b8855c8bdd3ff58c9c11206cfcbdeb05e49b617` | `051ce0adb23324b8453d25dac80866470b538b4e7cace142085e2652829d31bb` |
| Imported audit 2 | FAIL, exit 1 | 73.836 | `78290d6a0a5d0c1fd88b3b66576c711eace5a98a36855957d1e066abd2b360b3` | `9b1215c9bba99f42fb66d5713f3ed7ea7794ebe66537114503d98fd32943592d` |
| Imported audit 3 | PASS, exit 0 | 36.465 | `1a8eb87123ecf48f1258964dd3e1d5a74642d27650d981c9cd333f8110959f0c` | `4b5462f206846ec8023f1ea846faebf1d9c7f223485ea66b472e8761be43270f` |

The first maintained draft did not elaborate: the scalar calculation
needed explicit evaluation rewrites, section hypotheses `hI` and `hM4`
needed explicit inclusion in generated declarations, and the
localization-unit result needed its target type. That run also reported
unused simplifier arguments and an instance-declaration style error.
These were repaired before the final source check; no endpoint was
claimed from the failed draft.

The first scratch audit failed in the submodule closure bookkeeping,
an incorrect bottom-membership API use, and an unused existential
binder. The second audit elaborated the mathematical checks but failed
because two simplifier arguments were unused. Removing those two
arguments produced the successful third audit. The four axiom queries
already succeeded in both failed audit runs. None of these audit repairs
changed the maintained source or weakened the checked endpoint.

A separate read-only reviewer checked the mathematics, exact source
objects, route descriptions, and saved execution evidence, including
the retained failures and dependency identities. That review is not an
independent compiler run or an independently implemented kernel replay.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the external geometric consumer are **NOT_RUN**.
No root import or dependency pin changes are part of this module.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[conditions]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[point]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[et]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/EtHolds.lean
[ft]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/FtHolds.lean
