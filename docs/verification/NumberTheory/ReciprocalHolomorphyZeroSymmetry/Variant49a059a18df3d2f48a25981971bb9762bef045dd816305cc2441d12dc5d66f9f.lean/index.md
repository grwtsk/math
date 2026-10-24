# Verification target: GRWTSK.NumberTheory.ReciprocalHolomorphyZeroSymmetry.Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c190cd3df3c2d6e58624e68a5178eb0a69f1d5`.

Source path: `GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.ComplexAnalysis.PositiveHalfPlane`](../../../../mathematics/Analysis/ComplexAnalysis/PositiveHalfPlane__SourceOccurrence73f77e5e7b823c6de95c2244.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [entireZetaNumerator](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/entirezetanumerator--759a970bc495876eecf32760.md) | 13 | `declaration-track:759a970bc495876eecf327608a58bb8dc986a2367792c976a7862b032cd7f8db` |
| 2 | `def` | [regularizedZeta](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularizedzeta--26f18dfb67849bed2a9606a4.md) | 17 | `declaration-track:26f18dfb67849bed2a9606a4829b1f1f8d2bfc7ba6007cb7423dac0b1afe41f6` |
| 3 | `theorem` | [entireZetaNumerator_differentiable](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/entirezetanumerator-differentiable--7933dcc19235d264fd6cd60a.md) | 19 | `result-track:7933dcc19235d264fd6cd60ab2ea964a5b4a1dd346cb78d13dac3d8a4db579d9` |
| 4 | `theorem` | [regularizedZeta_eq](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularizedzeta-eq--9c4613e5dc3674a7402ecea3.md) | 24 | `result-track:9c4613e5dc3674a7402ecea3ffec51201e106fb776b0cbac34bd9c5fe0479724` |
| 5 | `theorem` | [regularizedZeta_one](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularizedzeta-one--f5fa121a26e2ab5b8ec3537e.md) | 32 | `result-track:f5fa121a26e2ab5b8ec3537e8a78b1c42a1bf9482e3cbd3d18a2a8e592add920` |
| 6 | `theorem` | [regularizedZeta_analytic](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularizedzeta-analytic--a9632d2a90c390497a98be0e.md) | 35 | `result-track:a9632d2a90c390497a98be0e8cfc5f796b836590d3f8c1609b0fe9d892b9bcd3` |
| 7 | `def` | [InitialReciprocalIdentity](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/initialreciprocalidentity--76d9a4924a1156d0257160ac.md) | 42 | `declaration-track:76d9a4924a1156d0257160aca27c413d9b3f4eaa9a622a7d64f91f66fcf46079` |
| 8 | `def` | [RegularizedIdentity](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularizedidentity--e1461d678778fb6aa908a1db.md) | 46 | `declaration-track:e1461d678778fb6aa908a1dbfad44bcb5ef29d653061b6d9bbeaafd314e55a99` |
| 9 | `theorem` | [regularized_identity_initial](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularized-identity-initial--dbfa929ab1c23bd4262db89f.md) | 50 | `result-track:dbfa929ab1c23bd4262db89f44a645b25694b5a09c3bc8c4f5244c0cf9c5b9c5` |
| 10 | `theorem` | [regularized_identity_of_initial_and_holomorphic](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/regularized-identity-of-initial-and-holomorphic--d8a801899adaa30cea0f7c2a.md) | 73 | `result-track:d8a801899adaa30cea0f7c2a2a78dfbf6ddeca61e3c43585a818ff604c2dfb7d` |
| 11 | `def` | [NontrivialZero](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/nontrivialzero--02b33cf5173b08cf25a55f88.md) | 101 | `declaration-track:02b33cf5173b08cf25a55f884025d75f9b54d03733edce5e0a8f88c6235f6f2b` |
| 12 | `theorem` | [NontrivialZero.ne_zero](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/nontrivialzero-ne-zero--d815ac540a7f79cc43679681.md) | 104 | `result-track:d815ac540a7f79cc43679681948e21781d367d1f824c718a42bfbe626d75d382` |
| 13 | `theorem` | [NontrivialZero.gamma_real_ne_zero](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/nontrivialzero-gamma-real-ne-zero--1ae6e8cdae6a6e08b8faa32d.md) | 110 | `result-track:1ae6e8cdae6a6e08b8faa32d8008c9b7b8afd403bd5c06e903c7141f1a0caa91` |
| 14 | `theorem` | [NontrivialZero.reflect](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/nontrivialzero-reflect--56e98aa0657ad6fd030b9503.md) | 123 | `result-track:56e98aa0657ad6fd030b95030e3cf65fc3e5180507da9eac3cd520e5ce5471ff` |
| 15 | `theorem` | [NontrivialZero.mem_critical_strip](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/nontrivialzero-mem-critical-strip--13c167bdac7a75f51e2804f0.md) | 144 | `result-track:13c167bdac7a75f51e2804f054ca739a59896935ebb7f68cf03fcc83d5056743` |
| 16 | `theorem` | [no_right_zero_of_regularized_identity](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/no-right-zero-of-regularized-identity--e5e6e7817e8f1287a6bb4d68.md) | 152 | `result-track:e5e6e7817e8f1287a6bb4d68e69bf056046c5a3a00f8d2c09056fa417bdfeda9` |
| 17 | `theorem` | [literal_RH_of_regularized_identity](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/literal-rh-of-regularized-identity--7f5aa5d74ae435706d8070e5.md) | 164 | `result-track:7f5aa5d74ae435706d8070e514e6b8ae253f8e6ea5d414a2887ce618a4dff68d` |
| 18 | `theorem` | [literal_RH_of_initial_and_holomorphic](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/literal-rh-of-initial-and-holomorphic--2aebc45f526c119dcf7a083e.md) | 175 | `result-track:2aebc45f526c119dcf7a083e1672d76af9139e59410dbf0f7499726edb711838` |
| 19 | `def` | [PickupInitialLaplaceObligation](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/pickupinitiallaplaceobligation--3dc2a6293aa2bae80280940b.md) | 181 | `declaration-track:3dc2a6293aa2bae80280940b46f4461970bd6f734fddc15bab978c34dfbf8a7d` |
| 20 | `def` | [PickupLaplaceHolomorphyObligation](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/pickuplaplaceholomorphyobligation--edcf09a7dc6de8cec45b7b36.md) | 185 | `declaration-track:edcf09a7dc6de8cec45b7b36614b3296300beccbbd02a9c6659dbf7e28f872c8` |
| 21 | `def` | [PolynomialEnergyLaplaceReturnObligation](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/polynomialenergylaplacereturnobligation--8c3055ca551b97b05a78f9eb.md) | 189 | `declaration-track:8c3055ca551b97b05a78f9ebecbf40c1fedddb6457d98aafc301f475e2d1cc56` |
| 22 | `theorem` | [literal_RH_of_pickup_Laplace_inputs](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/literal-rh-of-pickup-laplace-inputs--be80f83b9bf7960987ca42d6.md) | 193 | `result-track:be80f83b9bf7960987ca42d69e898847ca69c33e51cb29b025608d59ea9eb2ed` |
| 23 | `theorem` | [literal_RH_of_P04_and_explicit_analytic_inputs](../../../../mathematics/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/declarations/literal-rh-of-p04-and-explicit-analytic-inputs--d1488ef290b956ad5661c4c3.md) | 199 | `result-track:d1488ef290b956ad5661c4c33cfd95ae640cffa1fad413632e0aeaf7f54fb807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
