# Verification target: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionThreePointProgression

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60832bdd30318040a29d3be790717f33c04e4df9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60832bdd30318040a29d3be790717f33c04e4df9`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointFibreDiagonalCancellationWitness`](../../../../mathematics/NumberTheory/Moebius/EndpointFibreDiagonalCancellationWitness.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensThreePointProgressionTerm](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/mertensthreepointprogressionterm--5e84da32bf6e174a13623ad3.md) | 39 | `declaration-track:5e84da32bf6e174a13623ad3f794a288862e547810711f0807afd57db3718951` |
| 2 | `def` | [mertensEndpointCrossCollisionBaseSet](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/mertensendpointcrosscollisionbaseset--38d546c566f0f5f3e5f184fa.md) | 47 | `declaration-track:38d546c566f0f5f3e5f184fa0d772dc058b0f8dcdf8839202605fc078d80e9cc` |
| 3 | `theorem` | [sum_mertensEndpointForwardCross_eq_progression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/sum-mertensendpointforwardcross-eq-progression--a8f528954dce2e892e853c37.md) | 52 | `result-track:a8f528954dce2e892e853c37053e44bae4dac73327e6460580cbeae1e3708a40` |
| 4 | `theorem` | [sum_mertensEndpointBackwardCross_eq_progression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/sum-mertensendpointbackwardcross-eq-progression--a6c2f8318824329cb177d854.md) | 124 | `result-track:a6c2f8318824329cb177d854898bba67f808ae4b47e1e1a23ce1191b592a10e3` |
| 5 | `def` | [mertensEndpointCrossCollisionProgressionEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/mertensendpointcrosscollisionprogressionenergy--224c2bd0fd436048ddcec54f.md) | 197 | `declaration-track:224c2bd0fd436048ddcec54fb108328d4f745a7eaf3035184b7c73f514961944` |
| 6 | `theorem` | [mertensEndpointFibreCrossCollisionEnergy_eq_progression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/mertensendpointfibrecrosscollisionenergy-eq-progression--38fcbe36b55f6c4dd5536a55.md) | 205 | `result-track:38fcbe36b55f6c4dd5536a55b3c5456a34be06aa087904d1bd8a25b3ada88fd9` |
| 7 | `def` | [weightedMertensEndpointCrossCollisionProgressionEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/weightedmertensendpointcrosscollisionprogressionenergy--26e9f8316606f96f5a6c02b6.md) | 237 | `declaration-track:26e9f8316606f96f5a6c02b68d827c55023cc979604489f4282d34313279e04f` |
| 8 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_eq_progression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/weightedmertensendpointcrosscollisionenergy-eq-progression--5f29205fef47024c67bddec6.md) | 245 | `result-track:5f29205fef47024c67bddec6fb3f60f095f7e690b381f356d81cce13464897db` |
| 9 | `def` | [SubpolynomialWeightedMertensEndpointCrossCollisionProgression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/declarations/subpolynomialweightedmertensendpointcrosscollisionprogression--df1b57c57bc544a197c76050.md) | 258 | `declaration-track:df1b57c57bc544a197c76050c38f894cbcaa77249cecec2151f3b906d498796a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
