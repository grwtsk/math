# Verification target: GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff398c2e39a25893aef3976b7569f96cf479fda",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff398c2e39a25893aef3976b7569f96cf479fda`.

Source path: `GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Complex.PositiveHalfPlane`](../../../../mathematics/Analysis/ComplexAnalysis/PositiveHalfPlane__SourceOccurrence18a48c0f553d6c46952c8ca8.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [entireZetaNumerator](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/entirezetanumerator--cbe98494bb98d01165471c07.md) | 13 | `declaration-track:cbe98494bb98d01165471c07c1d0ca6c42023f6bfb0a8f5ecbb0ba094605802e` |
| 2 | `def` | [regularizedZeta](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularizedzeta--aaf1223fc21f8a2682187c66.md) | 17 | `declaration-track:aaf1223fc21f8a2682187c666f7ab86729f8a12e8b6f081b8a5bd5914518e46e` |
| 3 | `theorem` | [entireZetaNumerator_differentiable](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/entirezetanumerator-differentiable--1c4a61942033b0d30f30ef97.md) | 19 | `result-track:1c4a61942033b0d30f30ef97cc889a444b55d24c356a6e34b4604c02d32512ef` |
| 4 | `theorem` | [regularizedZeta_eq](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularizedzeta-eq--e5ab54056e3e1065f521fc3f.md) | 24 | `result-track:e5ab54056e3e1065f521fc3fbebebca8d2d97fb985603758e5eabba4456212d9` |
| 5 | `theorem` | [regularizedZeta_one](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularizedzeta-one--44b470d0f2f9b64f2f5a4255.md) | 32 | `result-track:44b470d0f2f9b64f2f5a4255d9791fc1070c650e654d852e2c98ffaeb168685c` |
| 6 | `theorem` | [regularizedZeta_analytic](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularizedzeta-analytic--d53de90eacfcfb73d56364eb.md) | 35 | `result-track:d53de90eacfcfb73d56364ebdc355506bd3ceebbe8d146ec698e4e99b9482dc7` |
| 7 | `def` | [InitialReciprocalIdentity](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/initialreciprocalidentity--e88cd2384cf00b746282f4c4.md) | 42 | `declaration-track:e88cd2384cf00b746282f4c42ec0c92266a2dc3808d290b25b4bad10a8939b20` |
| 8 | `def` | [RegularizedIdentity](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularizedidentity--fd329dd4f3c00fd0dd25259b.md) | 46 | `declaration-track:fd329dd4f3c00fd0dd25259b4c6a9ea01e588baa25ad98aab4a5ca3c9251e50f` |
| 9 | `theorem` | [regularized_identity_initial](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularized-identity-initial--2cc85cd41194642724077844.md) | 50 | `result-track:2cc85cd411946427240778449d26f0a2ccaa4180197ff98717c9d1dc4b2159d3` |
| 10 | `theorem` | [regularized_identity_of_initial_and_holomorphic](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/regularized-identity-of-initial-and-holomorphic--191a14bdb63e16974d57e09c.md) | 73 | `result-track:191a14bdb63e16974d57e09c1f1aca0bc6413285038ea1e7e1992abf7a3af5c2` |
| 11 | `def` | [NontrivialZero](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/nontrivialzero--545fe4c58e31d608a87f0c6d.md) | 101 | `declaration-track:545fe4c58e31d608a87f0c6db8c0758962694fd3d693cba667dab687dc17744a` |
| 12 | `theorem` | [NontrivialZero.ne_zero](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/nontrivialzero-ne-zero--a2e19697ffa7978a788db357.md) | 104 | `result-track:a2e19697ffa7978a788db35728f4cabe1c5892960e4f02fb8229eed725fb846b` |
| 13 | `theorem` | [NontrivialZero.gamma_real_ne_zero](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/nontrivialzero-gamma-real-ne-zero--83b868e523a4aa13c4323606.md) | 110 | `result-track:83b868e523a4aa13c4323606bf3d5d1aab67ad8d01e2b14050b52a3e2d9731bb` |
| 14 | `theorem` | [NontrivialZero.reflect](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/nontrivialzero-reflect--733dda207966728cb7d80c33.md) | 123 | `result-track:733dda207966728cb7d80c33d0258a108bd5367aa87dfcffcd7ee43181869b5c` |
| 15 | `theorem` | [NontrivialZero.mem_critical_strip](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/nontrivialzero-mem-critical-strip--2edf24e9c58bfaa7d97cd15f.md) | 144 | `result-track:2edf24e9c58bfaa7d97cd15ff1d47715596d4814190f55aefe3bf0c4419f7b3b` |
| 16 | `theorem` | [no_right_zero_of_regularized_identity](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/no-right-zero-of-regularized-identity--c28c871732864e13bc50d182.md) | 152 | `result-track:c28c871732864e13bc50d182fe93d415bb21772f13bd68e2ed2030749d3407f8` |
| 17 | `theorem` | [literal_RH_of_regularized_identity](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/literal-rh-of-regularized-identity--636545386064e879f2bdf529.md) | 164 | `result-track:636545386064e879f2bdf529ce7bef2e3d8f6ca55b878a1cfc86e48ad194ee25` |
| 18 | `theorem` | [literal_RH_of_initial_and_holomorphic](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/literal-rh-of-initial-and-holomorphic--6588d515afda9da4639dfd28.md) | 175 | `result-track:6588d515afda9da4639dfd28f3fcea3787c47ece5e7171e49d593a161a0ad315` |
| 19 | `def` | [PickupInitialLaplaceObligation](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/pickupinitiallaplaceobligation--f8b8788774ab1dfc8bb4dd9c.md) | 181 | `declaration-track:f8b8788774ab1dfc8bb4dd9cee03f6b465db8fdeb46ec0aa3525d33e42b10c61` |
| 20 | `def` | [PickupLaplaceHolomorphyObligation](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/pickuplaplaceholomorphyobligation--c23cb203d3e7f309150a0be4.md) | 185 | `declaration-track:c23cb203d3e7f309150a0be4fe8e1d3213ae962a9bdfbb09767d2ecf341a29e3` |
| 21 | `def` | [PolynomialEnergyLaplaceReturnObligation](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/polynomialenergylaplacereturnobligation--1c93bbe2a0d79450de807a72.md) | 189 | `declaration-track:1c93bbe2a0d79450de807a72ee95707599bd86556fb3a000a7aaed67c19c4930` |
| 22 | `theorem` | [literal_RH_of_pickup_Laplace_inputs](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/literal-rh-of-pickup-laplace-inputs--4b5081911eb26c612e2ab870.md) | 193 | `result-track:4b5081911eb26c612e2ab87085867d3ba2d8d16159b26a6fecd1d5d0ac7b39bb` |
| 23 | `theorem` | [literal_RH_of_P04_and_explicit_analytic_inputs](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/declarations/literal-rh-of-p04-and-explicit-analytic-inputs--816ffd04eca51cb141523ea0.md) | 199 | `result-track:816ffd04eca51cb141523ea0a0f9964a8dd2257d690af19071274502677cb111` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
