# Divisor normalization obstruction: shared exact-source context

Local attribution: grwtsk contributors.

## Identity and status

Canonical source: `../DivisorNormalizationObstruction.lean`, namespace `GRWTSK.NumberTheory.DivisorNormalizationObstruction`. Inspection base: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8`; publication commit and any reconciliation are recorded in [math issue 1803](https://github.com/grwtsk/math/issues/1803). Research coordination: [issue 52](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/52).

Exact Lean UTF-8 bytes: 12,156 bytes, 247 lines, 27 theorem declarations. SHA-256: `5935eb8f2376ef97668ec10d996b0dd102eb17ca5392933fa915bb09fb0b16c8`. Git blob: `76643aecc32fd1e245c05a1a80cb5a51f9304940`. Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root imports and dependency pins are not changed.

Status: **SOURCE_PROOF_CANDIDATE**. Source authoring, publication, analytical argument and formal verification are different evidence. Lean parsing/elaboration/build, fresh kernel replay, transitive axiom audit, CI, independent analytical review and independent reproduction: **NOT_RUN**. A lexical scan is not a Lean parser. No numerical experiment, interval certificate or automated proof execution was run. No novelty is asserted; novelty remains UNASSESSED. This is a standard elementary construction and application of existing source APIs, not a newly claimed arithmetic theorem.

## Paper correspondence

Source: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.5 (RP-OC-09), printed page 45 / PDF page 54. Supplied filename `Typed_Mathematical_Architecture_and_Off_Critical_Research.pdf`, supplied-byte SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. The issue is the persistent source identification, not a claim that the attachment has a new public download URL. The paper requires separate finite-observation and exponential-normalization controls. The combined polynomial exponent used here is a local strengthening of that objective, not a quoted or numbered theorem from the paper. No third-party paper bytes are copied.

Each adjacent declaration record identifies its exact fully qualified name, statement, argument and consumer, and incorporates these source identities, pins, evidence status and limitations by reference.

## Complete mathematical argument

Reuse the maintained normalized polynomial

`C_S(z) = 1 + z^2 * product_{a in S} (a^2-z^2)/(1+a^2)`.

For every finite real sample set S, including empty S and sets containing zero, it is entire, even and conjugation-compatible; `C_S(0)=C_S(a)=1` for every a in S, while `C_S(i)=0`. Define

`H_S(z)=(z^2+1)*(C_S(z)-1)`,
`T_S(F)(z)=exp(H_S(z))*F(z)`.

H vanishes at every real sample, at zero, and at both i and -i. Hence T preserves those actual function values, not merely their labels. H is an even real-type polynomial, so the twist preserves evenness and real type whenever F has those properties. The exponential never vanishes. Thus the zero sets coincide for arbitrary F, and if F is analytic at a point, multiplication by this nonvanishing analytic factor preserves its actual `analyticOrderAt`, including repeated roots.

The product rule at i is particularly decisive:

`H_S'(i) = 2*i*(C_S(i)-1) + (i^2+1)*C_S'(i) = -2*i`.

This identity is independent of S. For a differentiable F with F(i) nonzero, Program 4's exact correction law gives

`logDeriv(T_S(F))(i) = -2*i + logDeriv(F)(i)`.

Consequently T_S(F) cannot equal F. Taking F=1 yields two normalized, even, real-type entire functions with the same finite observations, the same values at i and -i, and the same complete analytic zero divisor, yet different functions. This example has an empty divisor; the finite-spectrum consumer and triple-root regression below explicitly cover nonempty repeated divisors too.

Program 8's `normalizedExpProduct lambda 1 r` with real r has imaginary logarithmic derivative at i equal to `-anchorMass lambda 1`. Its twist preserves every indexed analytic multiplicity and its exact value one at the same nonreal anchor, but

`-im(logDeriv(T_S(normalizedExpProduct lambda 1 r))(i)) = anchorMass lambda 1 + 2`.

The extra two is a normalization defect, not two additional zeros. For any indexed real finite spectrum and nonzero beta the twist retains the original occurrence count at every location while changing the function. In particular a triple repeated root stays of analytic order three. The empty-sample regression has `H_empty(z)=z^4+z^2`, so the construction does not become trivial when no observations are supplied.

The positive comparison retains Program 8's actual uniqueness hypotheses: entire analyticity; an open preconnected zero-free comparison region containing i; equal logarithmic derivatives on that region; and equal anchor values. These imply equality of the functions. Our nontrivial twist therefore cannot satisfy that logarithmic-derivative premise. This is a source-bound rejection test, not a contradiction to the uniqueness theorem.

## Cross-program inspection and reuse

The recent commit inventory was searched, not treated as a corpus-wide proof audit. Relevant recorded advances include Program 2's dense detection and uniform frame stability (`c6f931e6`), Program 3's exact-index certificates (`0d5b82da`), Program 4's residual and normalized determinant return (`0dc0c94a`), Program 6's finite Hermite converse and cofinal return (`b175bcc1`), Program 7's conductor-filtered coverage (`7793622e`), Program 8's product multiplicities and one-anchor growth (`94d1ba15`), and Program 10's interval-matrix consumers (`98e14f6d`). These are recorded source candidates, not newly independently verified results. The later `8d7c8b80` relational-capacity repair is outside this mathematical change.

Directly inspected and reused at the inspection base:

- Adjacent `FiniteSamplingZeroObstruction.lean`: reuse `control`, its values/symmetries, `Admissible`, and identity-preserving `observations`.
- Adjacent `ResonanceDeterminantCertification.lean`: reuse `GRWTSK.ResonanceDeterminantReturn.logDeriv_exp_mul`. Its actual Dirichlet-L-function consumer still needs source correspondence, exact determinant return, determinant nonvanishing and all-point residual bounds. Those suppliers are not supplied or weakened here.
- `GRWTSK/FunctionsOfAComplexVariable/NormalizedLogDerivativeRigidity.lean`: reuse the global identity result from an anchored logarithmic derivative on a genuine comparison region.
- `GRWTSK/FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.lean` and `FiniteRealSpectrumAnchor.lean`: reuse actual analytic multiplicity, the indexed occurrence count, the nonreal anchor, source nonvanishing and the real-slope mass identity.
- Maintained `AnalyticOrderTransport.order_mul_nonzero_right`: preserve its analyticity/nonvanishing hypotheses rather than replacing multiplicity by a set of roots.

Current Mathlib exponential documentation was checked for `Complex.exp_conj` and nonvanishing as an API comparison only: https://leanprover-community.github.io/mathlib4_docs/Mathlib/Analysis/Complex/Exponential.html . Current documentation is not substituted for the pinned library or for elaboration.

## Limits and backward source return

These twists are not claimed to lie in Program 8's affine-exponential finite-product class or to retain its genus-one/growth bounds. In particular, preserving an anchor value is not the same as preserving an anchor logarithmic derivative. No claim is made about adaptive observations, derivative samples, bounded-degree uniqueness, an Euler product, an arithmetic functional equation or a supplied operator determinant. The full pole-inclusive arithmetic Weil form, conductor/parity/gamma terms and all prime powers remain untouched.

The mathematical consumer is the exact-source identification premise used before returning spectral data to actual `DirichletCharacter.LFunction` zeros. Complete zero information and finite normalization data alone cannot replace the additional analytic/arithmetic identification theorem on the unrestricted comparison class. Passing this control does not establish arithmetic realization, positivity, RH or GRH.

NC9-RESOLVENT and the source-separated stale-identity, resource-accounting and evidence-cycle controls remain separate targets. Earlier Program 9 declarations and historical evidence statuses are unchanged.

## Clean-checkout verification specification (NOT_RUN)

In a clean checkout of the publication commit recorded in issue 1803, preserve the toolchain and manifest and run:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DivisorNormalizationObstruction
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DivisorNormalizationObstruction.lean
```

Verify the exact source hash above. Audit all 27 declarations and their import closure. A separate source-bound axiom probe should import the module and use `#print axioms` for `exponent_hasDerivAt_I`, `finite_samples_full_divisor_and_anchor_not_identify`, `twisted_spectral_orders`, `twisted_anchor_mass_defect` and `twisted_triple_root` with the full namespace. Record actual logs, imported artifacts, toolchain and source identities in the authorized execution owner; these commands are not a receipt.

No Lean/Lake executable was available. The current canonical Noe proof-automation skill returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`; no dependent proof execution was invoked. Ordinary authorized connector source publication is separate. Repository-wide validation, full import elaboration, kernel replay, transitive axiom checking, independent review and any research-registry promotion remain unperformed.
