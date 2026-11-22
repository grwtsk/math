# Localized consequences of a homogeneous slice relation

Local attribution: grwtsk contributors.

Maintained source:
[GradedDehomogenizationLocalization.lean](GradedDehomogenizationLocalization.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedDehomogenizationLocalization`.

## Actual objects and quantified conclusions

Let `O,A` be commutative rings, with an `O`-algebra structure on `A`,
and a genuine integer grading `𝒜 : ℤ → Submodule O A`. Put `B=𝒜 0`.
Let `J` be a homogeneous ideal and `f∈𝒜 d`, where `d≠0`.
For a homogeneous `h∈𝒜 w`, the first main conclusion is

\[
h\in J+(f-1)
\quad\Longleftrightarrow\quad
\operatorname{image}(h)=0
\text{ in }(A/J)[1/\bar f].
\]

The ring on the right is the actual
`Localization.Away (Ideal.Quotient.mk J f)`, and the image is the
composition of `Ideal.Quotient.mk J` with its `algebraMap` into that
localization. Equivalently, there exists `n : ℕ` with `f^n h∈J`.
This identifies the vanishing conditions on homogeneous elements;
it does not identify the slice ring `A/(J+(f−1))` with the entire
localization ring `(A/J)[1/f]`.

The second main conclusion is the actual degree-zero denominator return
used after the submitted geometric slice theorem. Let

- `g∈𝒜(-d)` and `τ : B` with `(τ:A)=fg`;
- `S` be any multiplicative subset of `B`, with `τ∈S`;
- `c,b∈S`, regarded as degree-zero elements;
- `N : ℕ` and homogeneous `h∈𝒜 w`;
- `c g^N b h∈J+(f−1)`.

Then there is an actual `b′∈S` such that `b′h∈J`. Consequently,

\[
\frac{[h]}1=0
\quad\text{in}\quad
S^{-1}\bigl((A/J)_w\bigr).
\]

The module `(A/J)_w` is the maintained
`GradedQuotientExact.quotientPiece`: the image of the actual degree-`w`
submodule under `A→A/J`, as a `B`-module. The localized element is
literally `LocalizedModule.mk (pieceMk 𝒜 J w h hh) 1`.

For a field-valued point `σ:B→ₐ[O]K`, take `S=(ker σ).primeCompl`.
The source-shaped specialization permits the coefficient `c` to come
from `O`: assume `c≠0`, faithful scalar action of `O` on `K`,
`σ(τ)≠0`, `σ(b)≠0`, and

\[
c\mathbin{\bullet}\bigl(g^N(bh)\bigr)\in J+(f-1).
\]

It proves `∃b′∈B, σ(b′)≠0 ∧ b′h∈J` and the corresponding actual
vanishing of `[h]/1` at the prime `ker σ`. No assertion of geometric
reducedness or slice membership is hidden in a newly defined predicate.

## Complete analytical argument

### 1. Dehomogenization supplies a power annihilator

The imported [GradedDehomogenization](GradedDehomogenization.md) theorem
proves the nontrivial forward implication

\[
h\in J+(f-1)\Longrightarrow\exists n,\ f^n h\in J.
\]

For completeness, its mechanism writes `h=j+u(f−1)` and projects to
homogeneous components. Modulo `J`, the components of `u` satisfy a
multiplicative recurrence along the arithmetic progression with step
`d`, apart from one term contributed by `h`. Since `u` has finite
grading support and `d≠0`, the progression leaves that support in both
directions. The backwards recurrence kills the component immediately
before the exceptional degree. The forwards recurrence then identifies
later components with `−f^n h` modulo `J`; eventually these components
vanish, so `f^n h∈J`.

The maintained core keeps the ring, ideal, actual homogeneous projection,
and nonzero-degree premise. The present module consumes that proved
result rather than assuming the desired power annihilator.

### 2. The reverse implication needs no grading

Suppose `f^n h∈J`. In the quotient by `I=J+(f−1)`, the element `f`
has image one. Hence

\[
0=[f^n h]=[f]^n[h]=1^n[h]=[h].
\]

Thus `h∈I`. This proof works in any commutative ring and for every
natural `n`, including zero. The maintained
`mem_sup_span_sub_one_of_pow_mul_mem` implements the argument using
the actual ideal quotient.

### 3. Compare with actual localization

Write `q:A→A/J`. The zero criterion for localization away from `q(f)`
says

\[
q(h)/1=0\quad\Longleftrightarrow\quad
\exists n,\ q(f)^nq(h)=0.
\]

Because `q` preserves multiplication and powers, the last equality is
exactly `f^n h∈J`. The theorem `away_quotient_eq_zero_iff` proves this
for arbitrary ideals, without grading hypotheses. Combining it with
the two previous directions gives the homogeneous slice equivalence.

Localization can be the zero ring; for example, inverting the image of
zero is allowed. No nontriviality or regularity assumption is introduced
to suppress that valid case.

### 4. Clear the slice relation in degree zero

The expression `c g^N b h` is homogeneous, since `c,b` have degree zero,
`g` has degree `−d`, and `h` has degree `w`. Applying the core theorem
to the given slice relation supplies `m : ℕ` with

\[
f^m c g^N b h\in J.
\]

Define the actual degree-zero multiplier

\[
b'=c\,\tau^{N+m}b,\qquad \tau=fg.
\]

Multiplicative closure gives `b′∈S`. In the original ring `A`,

\[
b'h
=c(fg)^{N+m}bh
=(f^N g^m)\bigl(f^m c g^N b h\bigr).
\]

The final factor belongs to `J`, so ideal closure under multiplication
gives `b′h∈J`. This argument is valid for any nonzero degree `d`,
any opposite-degree pair `f,g`, and any multiplicative subset of `B`.

### 5. Return to the actual localized quotient piece

The class `[h]` belongs to `(A/J)_w` by its homogeneous representative.
The relation `b′h∈J` states precisely that `b′·[h]=0` in that module.
Since `b′∈S`, the localization equivalence relation identifies
`[h]/1` with zero. The maintained proof uses `LocalizedModule.mk_eq`
on the actual quotient subtype and proves its scalar-action equation
by the quotient membership criterion.

For `S=(ker σ).primeCompl`, membership means `σ(b′)≠0`.
For a coefficient `c∈O`, faithful scalar action gives
`algebraMap O K c≠0`, and the algebra-map compatibility of `σ` gives
the required membership of `algebraMap O B c` in `S`.
Compatibility of `O→B→A` with the original algebra map is checked by
definitional equality of the actual grade-zero algebra maps; it is not
an extra mathematical premise.

## Exact submitted consumer and remaining scope

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

In [LocLenQuotientWeightPieceLeOne.lean][consumer], the local assertion
`red` starts with a homogeneous `h`, a degree-zero `b` satisfying
`σ(b)≠0`, and `b h^n∈J`. The source's [slice theorem][slice] supplies
`N` and a nonzero base coefficient `c` with

\[
c\mathbin{\bullet}\bigl(g^N(bh)\bigr)\in J+(f-1).
\]

The source chooses `f` of degree `−2`, `g` of degree `+2`, and
`τ=fg` with `σ(τ)≠0`. It then applies `deh_holds`, multiplies by the
complementary powers, and obtains a degree-zero multiplier outside
`ker σ` killing `h` modulo `J`. This is precisely the algebraic
post-slice return reconstructed here. The local theorem permits every
nonzero degree and keeps the supplied slice relation explicit.

Obtaining that relation from vanishing at all relevant field points
remains the geometric `slice_holds` supplier. Its finiteness, Euler
derivation, tangent-rigidity, and reducedness arguments are not proved
by a denominator-clearing identity. The later cyclicity and
length-at-most-one conclusion also require their actual inputs.
The [arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records the remaining chain. No full local length-one, `OneCharU_s`,
or RH/Dirichlet-GRH conclusion follows from this module alone.

## Declaration inventory and provenance

All theorem suffixes below have the namespace prefix at the top of
this record. The source introduces no new definitions or axioms.

| Theorem | Role |
|---|---|
| `mem_sup_span_sub_one_of_pow_mul_mem` | Removes a power of `f` in the actual slice quotient; no grading needed. |
| `away_quotient_eq_zero_iff` | Exact power-annihilator criterion for actual localization of `A/J`. |
| `mem_sup_span_sub_one_iff_away_quotient_eq_zero` | Homogeneous slice membership equals localized vanishing. |
| `localized_pieceMk_eq_zero_of_multiplier` | A multiplier in the actual multiplicative set kills the localized quotient class. |
| `exists_degreeZero_multiplier_of_slice` | Clears a homogeneous slice relation using opposite degrees and an arbitrary multiplicative set. |
| `localized_pieceMk_eq_zero_of_slice` | Returns that clearing argument to the actual localized quotient piece. |
| `exists_point_multiplier_of_slice` | Source-shaped base-coefficient/field-point multiplier conclusion. |
| `point_localized_pieceMk_eq_zero_of_slice` | Actual homogeneous class vanishes after localization at the point kernel. |

| Pinned external source | Role | SHA-256 |
|---|---|---|
| [DehHolds.lean][deh] | The graded power-annihilator supplier, reconstructed in the imported local core. | `02f6ce5034e64a7a987eaedbaede444e5f82b7af76fe43b5a868150a64225aa0` |
| [LocLenQuotientWeightPieceLeOne.lean][consumer] | The exact `red` consumer and complementary-power identity. | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |
| [SliceHolds.lean][slice] | The substantive source of the retained slice-membership relation. | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |
| [ToDegInjective.lean][objects] | Actual homogeneous quotient images, field-point localization, and grade-zero scalar compatibility. | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |

Each external file was read and compared byte for byte with its blob at
the stated pin. The local implementation is original, MIT licensed,
and attributed to `grwtsk contributors`. It imports the local
dehomogenization and quotient-map modules and root Mathlib, with no
external submitted module or copied implementation. Mathlib's upstream
authorship and licensing are retained. The verification repository is a
locator for the mathematical submission, not an attribution of its
authorship to the verification maintainers.

An alternative analytic proof of the reverse implication uses
`f^n−1∈(f−1)` and
`h=f^n h−(f^n−1)h`. The maintained quotient proof and this polynomial
identity share the same mechanism; no independent foundational proof
or novelty is claimed.

## Hostile and boundary comparisons

The requirement that the killing multiplier belong to the multiplicative
set is essential: zero kills every module element, while localizing a
nonzero module at the multiplicative set `{1}` leaves it nonzero.
Likewise, field-point nonvanishing of the coefficients is what makes
them usable denominators at `ker σ`.

Homogeneity of `h` cannot be dropped from the slice/localization
equivalence. In `ℚ[x]` with its standard grading, take `J=0`, `f=x`,
and `h=x−1`. Slice membership is immediate, but `x^n(x−1)≠0` for every
`n`, so the image of `h` in `ℚ[x,x⁻¹]` is nonzero. This also shows why
the theorem does not give an isomorphism between the slice and
localization rings. The core record separately examines nonzero degree,
homogeneity of the ideal, and the finite-support hypothesis.

The conclusion must also retain localization or the power multiplier:
in `ℚ[x,y]`, with homogeneous `J=(xy)`, `f=x`, and `h=y`, the slice
kills `y` and `xy∈J`, but `y∉J`. Thus no direct conclusion `h∈J` is
valid without additional regularity. This two-variable example is an
analytical comparison unless listed as compiled below.

## Exact-source verification

Source base: `grwtsk/math@bc258a0ff05033c88fa4f03c41c008b7bc656a32`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

All checks below used stock Lean with `--trust=0` and
`-DwarningAsError=true`. The maintained source was checked directly,
with a new output object, followed by a separate process importing that
object. Each checked input was snapshotted and its digest compared
before and after execution; no checked source changed during a run.

| Exact item | SHA-256 |
|---|---|
| Maintained `.lean` source | `1dcb30f4fcaf1a17b9be188a60f62daea285ae0586403d32c239ef657135e6cd` |
| Newly produced `.olean` | `3300e661ff2b54056d98b4294337cba98673b42b0f9106166398e933a09effab` |
| Imported endpoint/axiom/control audit | `2d5b98f1d8ec37d47e53eb9f6d919b968f953d0d045c487a12df91531f13a6fa` |
| Imported audit output | `ca5c16334b75d1a33d1b9fd3bca45bb1f3389de3217297512e40b077e9e860c8` |
| `GradedDehomogenization.lean` dependency | `663cd4bcb09681ff26de5eb57b871f9e7830178b8290bf97cc62f31b321f481b` |
| `GradedDehomogenization.olean` dependency | `910ae50e0776228ad834787122150dfbe0d2fa10b8ecbb0eae426a4e69c90df2` |
| `GradedQuotientExact.lean` dependency | `d493ae61a2bf01ae9b43dd44fb44ddd55877a1008e486f962eeabbf63bba2570` |
| `GradedQuotientExact.olean` dependency | `6987243d6bbf2ff45f4ca92894a54ef11ac4bd82396f77145d260a5afbba7aca` |

The maintained-source check **PASS**ed in **32.445 seconds**, exit 0,
with no diagnostics. The final imported audit **PASS**ed in
**4.233 seconds**, exit 0. It independently spells out the quotient-image
submodule and representative, checks their definitional identity with
`pieceMk`, checks the exact localization-away endpoint, and specializes
the point-localized endpoint to the source's degrees `−2,+2` and
base-ring scalar coefficient. Its three compiled boundary controls are:

- the actual polynomial `X−1` lies in its slice ideal but survives
  localization away from `X`;
- inverting zero really kills the unit class in the localized quotient;
- for any nontrivial graded algebra, the unit class modulo the zero
  ideal survives module localization at the multiplicative set `{1}`.

The polynomial control verifies the stated membership and nonvanishing
in the actual polynomial quotient and localization. Identifying `X−1`
as nonhomogeneous for the standard grading is the analytic comparison
above; the audit does not introduce a polynomial-grading instance.
The two-variable example is also analytic, not an additional compiled
claim.

The audit prints the transitive axiom list for all eight public
theorems. Each list is exactly
`[propext, Classical.choice, Quot.sound]`; none contains `sorryAx`
or an added local axiom. The maintained module introduces no axiom,
uses no admitted proof, and uses no submitted external Lean import.

The earlier attempts remain part of the evidence:

| Attempt and exact input SHA-256 | Result and elapsed time | Diagnosis and correction |
|---|---|---|
| Pure general probe `544996598067ba7d1c91a48bd78925a805d0c3e446b91de81bfab15b6a7f9031` | **FAIL**, exit 1, 0.272 s | The first local `GRWTSK` import root lacked the existing `GradedQuotientExact.olean`; Lean did not fall back to the later root. The exact previously checked object, whose source and object digests appear above, was placed in the first root. |
| Same pure general probe, unchanged bytes | **PASS**, exit 0, 3.812 s | Checked the grading-free reverse implication, actual localization-away zero criterion, and actual quotient-piece multiplier return. It did not import an unproved dehomogenization stub. |
| Maintained-source candidate `6f784b747d8819f0d0cbb5f85fbcc883b2b58e29802bc3faed756fb789be19b0` | **FAIL**, exit 1, 4.745 s | A proposed scalar-tower instance encountered the `Submodule.smul`/`Algebra.toSMul` diamond; the final proof uses the actual definitional algebra-map equality instead. The endpoint body also required its own explicit instance that the point kernel is prime. Neither fix changes a mathematical premise. |
| Imported-audit candidate `81593ee890b3871dd8cc1394b2260811005b526e8c1bf11ead8e7d1f604b991e` | **FAIL**, exit 1, 7.402 s | The obsolete `Mathlib.Data.Polynomial.Basic` import path did not exist at the pinned root. The audit now imports `Mathlib.Algebra.Polynomial.Eval.Defs`. |
| Imported-audit candidate `0dec76ea96b08ed4808d5bea0770a3806263426c0e785db01b3a5036283c3bd9` | **FAIL**, exit 1, 7.177 s | The last boundary control tried to rewrite an equality criterion directly under `≠`. Introducing the alleged zero equality before rewriting completed the contradiction proof. All eight axiom lists and the earlier endpoint/control checks already succeeded in this run. |

No execution attempt reached the wall-clock timeout. Raw execution
records, source snapshots, and diagnostic logs remain outside the
maintained mathematical tree. The source check, imported-statement
check, and axiom audit are distinct observations; they are not a claim
of independent foundational proof or a replay of every cached dependency.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the submitted geometric consumer are **NOT_RUN**.
The geometric slice supplier and later length-one bridges remain
unproved here regardless of these local check results.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[deh]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/DehHolds.lean
[consumer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean
[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
[objects]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
