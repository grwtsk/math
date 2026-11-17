# Weil conjectures over finite fields

Source map for the supplied `weil_conjecture_main.lean`, 53,005 lines,
SHA-256 `e82e974b70ab189400254fb10dcb7d984e358f4f5df77e73045cc3875bb6a7df`.
The attachment has no author, license, repository revision, or dependency pins
in its text. Its first import is `WeilR2_Part41`. See
[issue #1827](https://github.com/grwtsk/math/issues/1827) for exact-source
verification. Local adaptation attribution: grwtsk contributors.

## Source layout

The split preserves all 345 theorem commands and their original order in this
table. Each adjacent `.provenance` folder records original line locators and
byte-slice digests. The namespace is `GRWTSK.FiniteFieldWeil`. Source ranges
include inter-declaration whitespace. The original audit query becomes
`#print axioms GRWTSK.FiniteFieldWeil.weil_conjectures` in the terminal file.

| Attachment lines | Maintained Lean module | Mathematical role |
| --- | --- | --- |
| 6–405 | [KummerNodeAxisLocalization](../../CommutativeAlgebra/KummerNodeAxisLocalization.lean) | Prime axes and descent of unit-times-uniformizer decompositions |
| 406–447 | [UniformizerExponentBalance](../../CommutativeAlgebra/UniformizerExponentBalance.lean) | Uniqueness and balance of exponents in monomial identities |
| 448–1929 | [KummerNodeCompletion](../../CommutativeAlgebra/KummerNodeCompletion.lean) | Completion, parameter exponents, and bounds for node thickness |
| 1930–4233 | [KummerBaseChange](../../AlgebraicGeometry/Alterations/KummerBaseChange.lean) | Pullback of node models, completed local transport, and Kummer monomiality |
| 4234–8638 | [SemistableGraphClosure](../../AlgebraicGeometry/Alterations/SemistableGraphClosure.lean) | Graph closures and chart comparisons for semistable families |
| 8639–15346 | [SemistableCompletedCharts](../../AlgebraicGeometry/Alterations/SemistableCompletedCharts.lean) | Completed chart classification, Kummer exponents, and twisting ideals |
| 15347–16674 | [SemistableNodeCriterion](../../AlgebraicGeometry/Alterations/SemistableNodeCriterion.lean) | Recognition of ordinary nodes through geometric fibres and local models |
| 16675–21050 | [SemistableSectionLifting](../../AlgebraicGeometry/Alterations/SemistableSectionLifting.lean) | Lifting marked sections and identifying their generic images |
| 21051–21900 | [SemistableReduction](../../AlgebraicGeometry/Alterations/SemistableReduction.lean) | Assembly of the marked split semistable alteration |
| 21901–23219 | [ToroidalBlowupCharts](../../AlgebraicGeometry/Alterations/ToroidalBlowupCharts.lean) | Toroidal node models, regular locus and blowup chart construction |
| 23220–24999 | [ToroidalSingularLocus](../../AlgebraicGeometry/Alterations/ToroidalSingularLocus.lean) | Local regularity and the structure of the singular locus |
| 25000–29929 | [ToroidalBlowupLocalModels](../../AlgebraicGeometry/Alterations/ToroidalBlowupLocalModels.lean) | Complete-intersection presentations and first blowup chart models |
| 29930–34947 | [ToroidalBlowupChartClassification](../../AlgebraicGeometry/Alterations/ToroidalBlowupChartClassification.lean) | Chart presentations and regular sequences over the blowup centre |
| 34948–46062 | [ToroidalResolutionDescent](../../AlgebraicGeometry/Alterations/ToroidalResolutionDescent.lean) | Dimension control, weight decrease, and termination of node resolution |
| 46063–50943 | [StrictNormalCrossings](../../AlgebraicGeometry/Alterations/StrictNormalCrossings.lean) | Control of boundaries and conversion to strict normal crossings |
| 50944–51399 | [RegularProjectiveAlteration](../../AlgebraicGeometry/Alterations/RegularProjectiveAlteration.lean) | Regular projective alterations and transfer to a finite extension field |
| 51400–51842 | [FrobeniusPurityAndTrace](../../AlgebraicGeometry/FiniteFieldCohomology/FrobeniusPurityAndTrace.lean) | Purity descent, alternating traces, and signed complex eigenvalue data |
| 51843–52099 | [FrobeniusPoincareDuality](../../AlgebraicGeometry/FiniteFieldCohomology/FrobeniusPoincareDuality.lean) | Poincaré pairings and matrix realizations of Frobenius duality |
| 52100–52251 | [ReciprocalCharacteristicRoots](../../LinearAndMultilinearAlgebraMatrixTheory/ReciprocalCharacteristicRoots.lean) | Complementary characteristic polynomials from scaled perfect pairings |
| 52252–52432 | [FrobeniusPointCountDuality](../../AlgebraicGeometry/FiniteFieldCohomology/FrobeniusPointCountDuality.lean) | Reciprocal symmetry of the signed spectrum from point counts |
| 52433–52934 | [WeilPowerSums](WeilPowerSums.lean) | Integrality, Galois invariance, and construction of weight multisets |
| 52935–53004 | [FiniteFieldWeilConjectures](FiniteFieldWeilConjectures.lean) | Assembly of the Weil eigenvalue package for every finite extension |

The theorem statement, up to whitespace and its local namespace, matches the
[LeanEval challenge submitted by Junyan Xu](https://github.com/leanprover/lean-eval/blob/8955681b9914d7ebc7d286414843021b7d6c9de1/generated/weil_conjectures/Challenge.lean#L5-L14).
That identifies the statement, while authorship and revision of the supplied
proof remain unknown. Pierre Deligne's [*La conjecture de Weil I*, Theorem
1.6 (1974)](https://www.numdam.org/articles/10.1007/BF02684373/) is the
classical smooth projective comparison. The supplied statement uses smooth
proper geometrically irreducible schemes of relative dimension `d` over a
finite field and states its result in terms of extension counts. It has no
Betti-number comparison statement. The regular projective alteration
compares with A. J. de Jong's [*Smoothness, semi-stability and alterations*,
Theorem 4.1 (1996)](https://numdam.org/item/PMIHES_1996__83__51_0/).
These are mathematical comparisons. The attachment gives no paper locator
for its individual chart lemmas.

## From point counts to Weil weights

1. Write `q = |F|`. Start with the actual count `Nₙ = #X(F_{qⁿ})` for
   every positive extension degree. The trace formula and vanishing above
   degree `2d` express `Nₙ` as an alternating sum of traces of Frobenius
   powers. Taking roots with multiplicities gives one finitely supported
   signed function `m : ℂ →₀ ℤ` on nonzero eigenvalues. Its power sums
   are `Nₙ`. If two such functions give all the same counts, their
   difference has zero power sums. For a point `α` in its support,
   multiply the shifted sums by the coefficients of
   `∏_{β≠α}(T−β)` and add. This leaves only
   `m(α) αⁿ ∏_{β≠α}(α−β)`. The factors other than `m(α)` are
   nonzero, so the difference vanishes.
2. A generically finite projective alteration over a field extension of
   degree `e > 0` gives an injective cohomology map intertwining
   `Frob_F^e` with the geometric Frobenius over the extension. The
   image of a nonzero `α`-eigenvector is a nonzero `α^e`-eigenvector
   there. Projective purity gives modulus `(q^e)^(i/2)` in degree
   `i`, hence modulus `q^(i/2)` for `α`. As `q ≥ 2`, these moduli
   separate the degrees, so the sign of `m(α)` is determined by the
   parity of its unique degree.
3. The perfect Poincaré pairing transforms under Frobenius by `q^d`.
   The paired matrices therefore have reciprocal spectra, scaled by
   `q^d`, in complementary degrees. The two degrees have the same
   parity. The signed power sums identify the resulting multiplicity
   relation on `m`, including the multiplicities of repeated roots.
4. Applying the same isolating polynomial to the integer counts puts all
   positive powers of each eigenvalue in a finitely generated integer
   module. The span of those powers is finitely generated and invariant
   under multiplication by the eigenvalue. The determinant trick gives
   integrality. A complex automorphism fixes the integer counts, so
   uniqueness of the signed representation forces Galois invariance.
5. Lang–Weil gives `Nₙ/q^(dn) → 1`. Take Cesàro averages after
   multiplying by each conjugate phase at the top weight. The geometric
   sums of the other phases average to zero, isolating its coefficient.
   Thus the top weight consists of `q^d` once. Reciprocity puts `1`
   alone at weight zero. In degree `i`, repeat each eigenvalue
   `|m(α)|` times. The parity sign gives back the original counts.
   In the formal identity `Z(T)=exp(∑ NₙTⁿ/n)`, each spectral term
   contributes `(1−αT)^(-m(α))`.

As a separate check of the uniqueness step, the generating function
`∑_{n≥1} Nₙ T^{n-1} = ∑α m(α)α/(1−αT)` has simple poles whose
residues recover the signed multiplicities. Both arguments need the
all-degree trace identity and nonzero spectral support. For example,
`δ₂` and `2δ₁` agree at degree one and differ at degree two. The zero
eigenvalue contributes to no positive degree. The independent
[formal-arithmetic-geometry construction](https://github.com/formal-arithmetic-geometry/weil-conjectures/blob/6534644a3e71a9249c82d36a13b0535e0412e22e/WeilConjectures/LeanEval/WeilConjectures.lean)
starts its LeanEval bridge with integer zeta factors of constant term one
and takes inverse roots. The reversed polynomial supplies the monic equation
for integrality in that route. This comparison checks the representation
and the integrality step. It provides no evidence for the attachment's
alteration, projective purity, trace or duality imports.

## Related GRWTSK results

The [RH and Dirichlet GRH blueprint](../ZetaAndLFunctionsAnalyticTheory/RHGRHProofBlueprint.md)
tracks which additional source identities, estimates, and coverage the
global analytic routes require. Finite-field purity is a comparison for
those routes; the target functions and proof premises are stated separately.

The following links identify the source object, the result already expressed
in GRWTSK, and the hypothesis at which each argument returns to its own
problem. Comparisons refer to the files inspected at math revision
`e25c9c701aeffb38640947041e2fe48e24f50701`.

| Source object | Existing result and connection | Scope of the return |
| --- | --- | --- |
| Elliptic-curve points over a finite extension | [Fixed-field realization](EllipticFrobeniusFixedFieldRealization.lean) identifies fixed geometric points with the extension points. [Frobenius degree norm](EllipticFrobeniusDegreeNorm.lean) gives the two-root power sum and the exact product `(1−α^n)(1−β^n)`. | Both use the elliptic curve's actual Frobenius. The geometric [isogeny-degree return](../ZetaAndLFunctionsAnalyticTheory/EllipticFrobeniusIsogenyDegreeReturn.lean) takes an explicit degree port to identify the algebraic count with the native one. In the general proper-geometry candidate the trace formula does the count identification. |
| Harada's affine character surface | [HaradaLocalZeta](../../AlgebraicGeometry/HaradaLocalZeta.lean) computes `q^(2n)+r` over every extension and identifies the normalized local factor `1/((1−q²T)(1−T)^r)`. Both use the full extension-count sequence. | In odd characteristic `r=2`, while the top coefficient is one. A pure proper surface with the candidate's reciprocity would have equal multiplicities at `1` and `q²`. Thus this affine calculation cannot be substituted for the proper-scheme hypotheses. Any proper comparison needs a compactification and its boundary contribution. |
| Primitive Dirichlet arithmetic Weil value | [Prime-weight enclosure](../ZetaAndLFunctionsAnalyticTheory/WeilPrimeWeightRationalEnclosure.lean) and [native prime enclosure](../ZetaAndLFunctionsAnalyticTheory/WeilPrimitiveWindowPrimeEnclosure.lean) supply estimates on the actual prime contribution. The [right-strip return](../ZetaAndLFunctionsAnalyticTheory/WeilRightStripWitnessReturn.lean) combines the original arithmetic form with a negative-witness implication. | The return needs the original negative-witness hypothesis and the small-conductor bounds, as well as RH for the principal case. The eigenvalue moduli for a fixed finite field give none of these analytic inputs. |
| Completed Riemann zeta function | The [Xi determinant return](../ZetaAndLFunctionsAnalyticTheory/XiDeterminantStripReturn.lean) identifies the source through locally uniform convergence on a strip. The [normalized log-derivative result](../../FunctionsOfAComplexVariable/NormalizedLogDerivativeRigidity.lean) gives an exact source identity when the logarithmic derivatives and an anchor agree. | The determinant route needs real zeros of the approximants and a limit to the actual completed source. A finite list of spectral points alone leaves this limit undetermined. |
| HS-95 stage arguments | [Riemann95 stage certificates](../ZetaAndLFunctionsAnalyticTheory/Riemann95StageCertificates.lean) carry finite checker acceptance to the original counterexample predicate through an explicit equivalence. | The RH return requires agreement at every stage argument and both halting equivalences. Finite verified windows cover their stated search range only. The [prime machine](../../ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/Riemann95PrimeMachine.lean) proves a separate obstruction to presenting all delayed stop lengths by a finite graph. |
| Finite Euler heat on labelled coordinates | [Finite Euler heat recovery](../../OperatorTheory/FiniteEulerHeatRecovery.lean) separates the exact product and inverse gain from forward approximation error. | Its inverse requires factors with rates strictly below one. A unit rate erases a coordinate, and distinct positive rates obstruct a common clock under the stated exposure hypotheses. An application to Xi still needs the actual determinant limit. |
| Original weighted pole and mask observables | [Möbius sofic pickup pole ceiling](../ZetaAndLFunctionsAnalyticTheory/MoebiusSoficPickupPoleCeiling.lean) returns weighted pole saturation to calculated pickup variance and every signed mask heat. | These limits use saturation of the original weighted gap and the residual allowance. As with extraction of the weight-zero term, the normalization and limit must be established for the specified observable. |
| Alexander incidence and 95-cycle routing | [Two-hop routing](../../OperatorTheory/PrimeKnotTwoHopRouting.lean) equates the products along forward and reverse arrows by symmetry of the two-hop matrix, even after diagonal rescaling. | This equality forces an error of at least one half on some arrow in either direction. A spectral model relying on that symmetric two-hop source must account for the obstruction before it can represent the directed cycle. |

## Verification

- All source slices were reassembled with the original header and audit
  command and compared byte-for-byte with the supplied file. The checked
  statement match to LeanEval is textual.
- The Mathlib-only modules `UniformizerExponentBalance`,
  `ReciprocalCharacteristicRoots`, and `WeilPowerSums` elaborated and
  emitted `.olean` files under Lean `v4.34.1` and Mathlib
  `d13f23b723b8a846827a245b89c10fc7d3f11612`. Their seven declarations
  each reported `propext`, `Classical.choice`, and `Quot.sound` in
  `#print axioms` on the imported modules. Lean reported deprecation and
  unused-variable warnings. A separate fresh kernel replay and independent
  mathematical review are **NOT_RUN**.
- Checking the supplied file with that Lean search path failed at import
  resolution with `unknown module prefix 'WeilR2_Part41'`. The remaining
  338 declarations have elaboration, fresh kernel checking and transitive
  axiom audit **NOT_RUN**. In particular, the final printed axiom query
  has no result. The [isolated package](../../../docs/adaptations/environments/finite-field-weil/)
  preserves the missing import as a dependency. The trace formula,
  vanishing, projective purity, injective pullback, duality, and
  Lang–Weil results used through that dependency still require source-bound
  verification. The mathematical argument above is a review of the
  assembly conditional on those inputs.
