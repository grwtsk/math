# Local length cost of squaring homogeneous equations

Local attribution: grwtsk contributors.

Maintained source: [GradedSquareFamilyLength.lean](GradedSquareFamilyLength.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedSquareFamilyLength`.

## Actual objects and quantified statement

Let `O,A` be commutative rings, let `A` be an `O`-algebra, and let
`𝒜 : ℤ → Submodule O A` be a genuine grading. Set `B=𝒜 0` and choose
any prime ideal `P` of `B`. For an ideal `I` of `A`, the module
`quotientPiece 𝒜 I w` is the image of the actual degree-`w` submodule
under `A → A/I`, regarded as a `B`-module. Write

\[
L_P(M)=\operatorname{length}_{B_P}(M_P)\in\mathbb N\cup\{\infty\}.
\]

The definitions come from [GradedQuotientExact](GradedQuotientExact.md)
and [LocalizedGradedLength](LocalizedGradedLength.md). They are actual
quotient, localization, and module-length objects, not unspecified
functions assigned the desired inequalities.

For a finite indexed family `t_i`, a homogeneous background ideal `J`,
and individual degrees `d_i` with `t_i∈𝒜(d_i)`, the main result is

\[
\left[\forall w\in\mathbb Z,\quad
 L_P((A/(J+(t_i)))_w)\le c\right]
\quad\Longrightarrow\quad
\forall w\in\mathbb Z,\quad
 L_P((A/(J+(t_i^2)))_w)\le2^n c.
\]

Here `c : ℕ∞`, and `n` counts the indexed generators. In the finite-set
version, `n=s.card` and the generated ideal is literally
`Ideal.span (t '' (s : Set I))`. Repeated generator values, zero
generators, and an empty family are allowed. A finite-type version uses
`Fintype.card I` and `Ideal.span (Set.range t)`.

The initial estimate must hold at **every weight**. No common degree is
required: each equation has its own shift, and all of those shifts are
covered by the all-weight hypothesis. The source's common-degree
finite-family lemma is a specialization.

For an algebra map `σ : B →ₐ[O] K` into a field, `P=ker σ` recovers
the exact point-localized object in the submitted source. No hypothesis
that the degree-zero part of the ideal lies in `ker σ` is added;
modules outside their support can legitimately localize to zero.

## Complete primary proof

### One equation

The preceding [actual exact-sequence construction](GradedQuotientExact.md)
builds multiplication by a homogeneous `t∈𝒜 d` and quotient projection:

\[
(A/(J+(t)))_{w-d}
\xrightarrow{\ t\ }
(A/(J+(t^2)))_w
\longrightarrow
(A/(J+(t)))_w.
\]

The image of the first map equals the kernel of the second. In
particular, a degree-`w` representative in the kernel can be written
`a=j+tc`. Taking its homogeneous component gives
`a=j_w+t c_(w-d)`, with `j_w∈J`, because `J` is homogeneous. This
constructs the preimage in the correct degree. The first map need not
be injective. Localization preserves exactness, and actual
module-length subadditivity gives

\[
L_P((A/(J+(t^2)))_w)
\le L_P((A/(J+(t)))_{w-d})
+L_P((A/(J+(t)))_w).
\]

### Induction over the selected indices

Suppose the family has first index `i` and remaining index set `s`.
Keep the other unsquared equations inside the homogeneous background
ideal `J+(t_j : j∈s)`. Apply the one-equation estimate to `t_i`.
Both resulting pieces, at weights `w-d_i` and `w`, are bounded by `c`,
so replacing that first equation by its square costs at most `2c`.

Now put `t_i²` into the background ideal. It is homogeneous of degree
`d_i+d_i`, so the induction hypothesis applies to the remaining
generators with their own degrees and the new bound `2c`. It yields

\[
L_P((A/(J+(t_i^2,t_j^2:j\in s)))_w)
\le2^{|s|}(2c)=2^{|s|+1}c.
\]

The empty family starts with the zero generated ideal and multiplier
`2^0=1`. Every length calculation stays in `ℕ∞`; neither finiteness nor
conversion by `toNat` is used. The finite index induction also explains
why repeated generator values cause no error: the generated ideals
discard duplicate values, while the indexed count only weakens the
upper bound.

### Combine two families without requiring equal degrees

For families `f:I→A` and `g:H→A`, use the disjoint index type `I ⊕ H`.
Its generator map is `Sum.elim f g`, and the degree map is the
corresponding sum elimination of the individual degree maps. Its range
is `range f ∪ range g`; its cardinality is `card I+card H`. Applying the
finite-type theorem once gives the squared union estimate with factor
`2^(card I+card H)`. This avoids imposing a common degree across the
two families.

## The actual five-family arithmetic return

The submitted `Eqns` record in [OrbitVanishingLocal.lean][eqns] has
the following families. Its definitions, including the ordering of the
union in the generated ideal, were read at the source pin below.

| Family | Number | Degree | Modified family |
|---|---:|---:|---|
| `F` | `r+1` | `−1` | `F_i²` |
| `G` | `s` | `−2` | `G_i` |
| `E` | `r′` | `+1` | `E_i²` |
| `E′` | `s′` | `+2` | `E′_i` |
| `Z` | `m` | `0` | `Z_i` |

The local theorem `pointLength_five_family_squares_le` spells out both
ideals using these actual five ranges. It assumes

\[
\forall w,\quad
L_\sigma((A/(F,G,E,E',Z))_w)\le1
\]

and concludes

\[
\forall w,\quad
L_\sigma((A/(F^2,G,E^2,E',Z))_w)
\le2^{r+1+r'}.
\]

To prove it, retain `J=(G,E′,Z)` and apply the two-family theorem to
`F` and `E`. Their degrees are respectively `−1` and `+1`. The scalar
is one, and their total indexed count is `r+1+r′`. Ideal-span union
identities identify the conclusion with the literal expanded
`ideal2 Q` from [ToDegInjective.lean][definitions].

This is the finite squaring result in
`UpperTheory.V.Alg.M.locLen_aPiece_ideal2_le_two_pow` from
[LocLenAPieceIdeal2LeTwoPow.lean][external]. Its surrounding DVR,
completeness, characteristic-zero, algebraic-closure, and base-point
conditions are unused by this finite estimate. In particular `x(Z_i)=0`
is not needed to establish that the retained `Z` generators are
homogeneous. Those conditions are retained by the later geometric
suppliers, not declared unnecessary for the full deformation argument.

The source's private `gen` assumes a common degree for all its `Fin n`
generators. The local finite theorem allows individual degrees and
arbitrary finite index types. Choosing a constant degree and `Fin n`
recovers that exact source statement. The five-family return preserves
its all-weight length-at-most-one premise; it does not establish that
premise from arithmetic hypotheses.

## Why this reaches the factor two, and where it stops

The source [TwoSigned.lean][upper], declaration `up_holds`, first obtains
the original length-at-most-one bound from
`locLen_quotientWeightPiece_le_one`. It then applies the squaring
estimate to get the upper multiplicity factor `2^(r+1+r′)`, together
with further Rees-module and Herbrand-to-valuation arguments.
The lower argument `low_holds` in
[AdmissibleMonoIdeal.lean][lower] carries `2^(r+r′)`.
[AlgMemCoef.lean][core] cancels this common positive factor, leaving two.

The geometric length-one theorem requires the actual finite
degree-zero algebra, tangent/rigidity hypotheses, and point conditions.
Its local reducedness and cyclicity must be proved. The Herbrand
estimate separately connects genuine localized lengths to point
valuations. The present theorem proves the finite multiplicity step;
it does not prove those suppliers, `LemmaM`, `OneCharU_s`, or RH.

The expanded [arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records the exact remaining chain and its source-level evidence.

## Alternative analytical comparison and hostile cases

There is a useful filtration interpretation. In
`R=A/(J+(t_i²))`, the ideal `K=(t_i)` satisfies `K^(n+1)=0`, since a
monomial of degree `n+1` in `n` indexed generators repeats an index.
The successive `K`-adic layers are generated over `R/K` by squarefree
monomials, whose grading shifts are sums of the corresponding `d_i`.
Surjections onto those layers and localized length subadditivity suggest
the more precise subset sum

\[
L_P((A/(J+(t_i^2)))_w)
\le\sum_{S\subseteq\{1,\ldots,n\}}
 L_P((A/(J+(t_i)))_{w-\sum_{i\in S}d_i}).
\]

The uniform input bound reduces its `2^n` summands to `2^n c`.
This is an analytical comparison, not an additional formally checked
theorem or an independent foundational proof chain. The maintained
proof uses the one-equation exact sequence and finite induction. No
novelty claim is made.

The degree and uniformity requirements have concrete failure tests:

- In `k[x]` with standard grading, `J=0`, `t=x`, and `w=1`, the
  degree-one part of `k[x]/(x²)` has length one. The degree-one part of
  `k[x]/(x)` has length zero, while its degree-zero part has length one.
  Dropping the `w-d` shift, or assuming only a bound at `w=1` with `c=0`,
  would assert `1≤0`.
- In `k[x,y]`, the nonhomogeneous ideal `J=(x+y²)` gives another
  failure. With `t=x`, `d=1`, and `w=2`, the degree-two image modulo
  `(J,x²)` has basis represented by `y²,y³`, of length two. Modulo
  `(J,x)`, the degree-one image has length one and the degree-two image
  vanishes. Removing homogeneity would assert `2≤1`.
- With `t=0` in degree zero of a nontrivial graded algebra, the first
  map in the square sequence can be zero on a nonzero module. Exactness
  is compatible with this; injectivity of that first map is unnecessary.
- Empty families, `c=0`, and `c=∞` are legitimate. Infinite lengths
  must not be replaced by the zero value of `ENat.toNat ∞`.

The polynomial examples are analytical controls unless explicitly
listed as compiled controls in the evidence below.

## Declaration provenance

All suffixes are in the namespace given at the start of this record.

| Declaration | Role |
|---|---|
| `familyIdeal` | Actual ideal generated by the selected finite image. |
| `familyIdeal_empty` | Empty family gives the zero ideal. |
| `familyIdeal_insert` | Inserted equation separates as a principal ideal join. |
| `familyIdeal_isHomogeneous` | Individually homogeneous generators give a homogeneous ideal. |
| `localLength_square_family_le` | Finite-set iteration with variable degrees and ENat bound. |
| `localLength_square_fintype_le` | Full finite-type specialization. |
| `pointLength_square_fintype_le` | Specialization at a field-valued point's prime kernel. |
| `localLength_square_two_families_le` | Disjoint-index combination of two families. |
| `pointLength_five_family_squares_le` | Literal expanded five-family return with exponent `r+1+r′`. |

External mathematical correspondence:
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The verification repository is a locator for the submitted source,
not an attribution of its mathematical authorship to the mirror.

| Pinned source | SHA-256 |
|---|---|
| [Finite-generator and five-family theorem][external] | `951a47248af0fdb1f63dfe57b95080c0ef234b008e9caa016111dd0f2fa165a8` |
| [Exact equation-family definitions][eqns] | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [Actual quotient, length, and squared-ideal definitions][definitions] | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |
| [Upper arithmetic consumer][upper] | `d69ba1169981c3271370c7259a6a0e93481faf93587fbb995aae4dca59730aa9` |

The implementation is original, MIT licensed, and attributed to
`grwtsk contributors`. It imports the local actual-map and length
modules and root Mathlib; it imports no submitted implementation.
Upstream Mathlib authorship and licensing are retained. The proof shares
the one-equation mathematical mechanism with its component modules.

## Exact-source verification

Current continuation source base:
`grwtsk/math@68cd4c5195ae9ff07adaa7f71378c312a3ac497c`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The final maintained source passed stock Lean with
`--trust=0 -DwarningAsError=true`, exit 0, without warnings or errors,
in 28.847 seconds. Its imported endpoint/axiom/control audit passed with
the same flags, exit 0, in 81.939 seconds. These checks used the exact
compiled local dependencies below and the existing pinned Mathlib
objects. All nine dependency checkouts matched the root manifest and
had clean tracked source trees when checked before publication.

| Checked artifact | SHA-256 |
|---|---|
| Maintained `GradedSquareFamilyLength.lean` | `0d4f4b5e2af0795e92b43db45811e156b290142a6c3d12bdb69150e2486f6d6e` |
| Produced `GradedSquareFamilyLength.olean` | `3dd707ab4dd7ba88e9b74f093baa5b81e3d4b8a033c9eaec2a6b4fb0dae71dca` |
| Imported `GradedQuotientExact.lean` | `d493ae61a2bf01ae9b43dd44fb44ddd55877a1008e486f962eeabbf63bba2570` |
| Imported `GradedQuotientExact.olean` | `6987243d6bbf2ff45f4ca92894a54ef11ac4bd82396f77145d260a5afbba7aca` |
| Imported `LocalizedGradedLength.lean` | `f90e6bb4d5b626329a9c3536df951b869c6c1ceadd4a6df2ba93ddce15332aac` |
| Imported `LocalizedGradedLength.olean` | `18c9c520ce6ed00e1eae63ff6537e8ffde93939e97f193e4c9a53483ea506a45` |
| Successful scratch endpoint/axiom/control audit | `4e48fbb7fb2c53ddf7652281e4b67f03af8e2d72a58ba7107088609ad806fd3e` |

The imported audit independently defines the actual homogeneous
submodule and its ideal-quotient image. Its independently written
length readout is exactly
`Module.length (Localization.AtPrime P) (LocalizedModule P.primeCompl M)`,
with group and module instances fixed by generic binders before the
quotient subtype is substituted. A definitional-equality check identifies
that expression with `localLength`. On those explicit objects the audit
checks the common-degree `Fin n` source statement and the full literal
five-family field-point implication, with its length-one premise.
It also instantiates the finite theorem with the empty `Fin 0` family
and checks the extended-natural cases `2^n·∞=∞` and `2^n·0=0`, together
with the failure of the true inequality `1≤∞` after `toNat`.

All eight public theorem queries reported exactly
`[propext, Classical.choice, Quot.sound]`. These are transitive axiom
observations for the imported theorem bodies, including their local
map/length dependencies. No `sorryAx`, new axiom, or native-decision
axiom was reported. The maintained source contains no `sorry`, `admit`,
new `axiom`, or `native_decide` invocation.

Earlier checks are retained at their actual outcomes:

| Attempt | Input SHA-256 | Actual result |
|---|---|---|
| First maintained source, trust zero and warnings as errors | `5057f93b084ca46353735d0274bdfdbbf4227820c10ac5b759efb855cd763dcb` | **FAIL**, exit 1, 26.569 s: an unavailable set-image lemma name and simplification failures for ideal equalities under dependent quotient-module expressions. The correction uses the actual `Set.image_insert_eq` and explicit ideal/range rewrites. |
| First imported endpoint audit, trust zero and warnings as errors | `d98a4c89f24cfaf6e024c6492f88c9b78d2fdecfa5f0e1717c600b4db974d671` | **FAIL**, exit 1, 40.616 s: `simpa` did not unfold the independent raw readout in the common-degree statement. Rewriting `Fintype.card_fin` explicitly and applying the theorem directly produced the successful audit. The maintained source and objects were unchanged. |

No recorded attempt reached its wall-clock timeout. Raw audit sources,
snapshots, objects, and execution logs remain outside the maintained
repository. A separate source review reread the final three maintained
Lean sources and the analytical exposition, comparing the actual
objects, hypotheses, induction and five-family return. That review is
bounded mathematical/source evidence, not an independent kernel or
full external submission verification.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the submitted arithmetic consumer are **NOT_RUN**.
The external length-one, Rees/Herbrand, lower-bound, and terminal
RH/Dirichlet-GRH suppliers are outside the completed local checks.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[eqns]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[definitions]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenAPieceIdeal2LeTwoPow.lean
[upper]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/TwoSigned.lean
[lower]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AdmissibleMonoIdeal.lean
[core]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/AlgMemCoef.lean
