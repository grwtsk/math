# Verification target: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionSquarefreeMidpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cec102afe5942dda804b8a4464f126426558692",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cec102afe5942dda804b8a4464f126426558692`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionThreePointProgression`](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarefreeIndicatorReal](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/squarefreeindicatorreal--201cf82589f126c5c2764074.md) | 39 | `declaration-track:201cf82589f126c5c2764074165f0d5cb52143f74c3b9c51e3ba7fdfb53572b3` |
| 2 | `theorem` | [moebiusReal_sq_eq_squarefreeIndicator](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/moebiusreal-sq-eq-squarefreeindicator--2141c5469bc319b8455771e3.md) | 45 | `result-track:2141c5469bc319b8455771e3674e00e3934c90ab2be253f8bbb31605e20156e5` |
| 3 | `def` | [mertensSquarefreeMidpointEndpointProduct](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertenssquarefreemidpointendpointproduct--f970622d303e784a8cbb5e23.md) | 59 | `declaration-track:f970622d303e784a8cbb5e23444f67293f4331e959a0d31e313583841615674b` |
| 4 | `theorem` | [mertensThreePointProgressionTerm_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertensthreepointprogressionterm-eq-squarefreemidpoint--b864378d17d5dbbbeeba6f01.md) | 66 | `result-track:b864378d17d5dbbbeeba6f01e1f0ed19fe714b71443330b02a5406a045d1cee6` |
| 5 | `def` | [mertensEndpointCrossCollisionSquarefreeMidpointBaseSet](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertensendpointcrosscollisionsquarefreemidpointbaseset--c528231e101eca21e96fdcc4.md) | 81 | `declaration-track:c528231e101eca21e96fdcc40aed771b1ac94ebe38d1d500743a6dcfaaa05753` |
| 6 | `theorem` | [sum_mertensThreePointProgression_eq_squarefreeMidpointFilter](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/sum-mertensthreepointprogression-eq-squarefreemidpointfilter--d8e85983b3d058b892f26c77.md) | 88 | `result-track:d8e85983b3d058b892f26c77e912d6eb285533cef2d60fb30542481ae95f5017` |
| 7 | `def` | [mertensEndpointCrossCollisionSquarefreeMidpointEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertensendpointcrosscollisionsquarefreemidpointenergy--74c5c90c587d6a89ac5a5594.md) | 103 | `declaration-track:74c5c90c587d6a89ac5a559421ffefa63df69fb54dbe4e6ab678483467d44f71` |
| 8 | `theorem` | [mertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertensendpointcrosscollisionprogressionenergy-eq-squarefreemidpoint--ea05d723f47947649cc19900.md) | 111 | `result-track:ea05d723f47947649cc1990074ccad0b42649c3473472a4378034ec8e6ce8318` |
| 9 | `theorem` | [mertensEndpointFibreCrossCollisionEnergy_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/mertensendpointfibrecrosscollisionenergy-eq-squarefreemidpoint--9717b909bcc010d73dc39c81.md) | 124 | `result-track:9717b909bcc010d73dc39c817bdeb9369f4c4c76a0536393e04b45a731cdcde2` |
| 10 | `def` | [weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/weightedmertensendpointcrosscollisionsquarefreemidpointenergy--d15569ec6e5da0e915d09fc5.md) | 133 | `declaration-track:d15569ec6e5da0e915d09fc521cbe97361f624751afd6839a49eec13462cf48d` |
| 11 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/weightedmertensendpointcrosscollisionenergy-eq-squarefreemidpoint--cfcc2a40fa7ea7212be67b81.md) | 140 | `result-track:cfcc2a40fa7ea7212be67b819cc40f4299e38b5a7370ce14d77fa723d4fb2749` |
| 12 | `theorem` | [weightedMertensEndpointCrossCollisionProgressionEnergy_eq_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/weightedmertensendpointcrosscollisionprogressionenergy-eq-squarefreemidp--38b06c3596b90a4b56b2f18e.md) | 152 | `result-track:38b06c3596b90a4b56b2f18e7787305e504a35f480cbce65bcbd26358da67e11` |
| 13 | `def` | [SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision--7d300fb17ff8235efedbc14b.md) | 161 | `declaration-track:7d300fb17ff8235efedbc14b8841231b52afb1492ecbd8d638920de43c868063` |
| 14 | `theorem` | [subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_iff_progression](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/declarations/subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision-iff--ef378cb1853ff920d44e1e56.md) | 170 | `result-track:ef378cb1853ff920d44e1e56f1ec0a8657ec5e10bac3bc38bc8848123ffc4fe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
