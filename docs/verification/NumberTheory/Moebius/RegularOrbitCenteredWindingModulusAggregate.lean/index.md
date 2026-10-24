# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fe5172d37244ee49172c471d497b1d45261d64",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fe5172d37244ee49172c471d497b1d45261d64`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingCardinality`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingCardinality.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredNonzeroWindingEndpointMultiplicity](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/centerednonzerowindingendpointmultiplicity--0965b76e180ab0a5e5b69556.md) | 45 | `declaration-track:0965b76e180ab0a5e5b69556e684064ee36abfa3a0375f8d7e68fbc073c396fb` |
| 2 | `theorem` | [reciprocalSquare_le_endpointDrop](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/reciprocalsquare-le-endpointdrop--15686b585cc40a159e60c870.md) | 54 | `result-track:15686b585cc40a159e60c8705afeebd1102b188cef2444ccc0c3a6558d0865cf` |
| 3 | `theorem` | [sum_reciprocalSquare_Ico_two_le_one](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/sum-reciprocalsquare-ico-two-le-one--5608357376555a209778db4c.md) | 72 | `result-track:5608357376555a209778db4c4b1aaafaf0a5b133969bb12ac4ad38e86fcd140c` |
| 4 | `theorem` | [sum_reciprocalSquare_Ico_one_le_two](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/sum-reciprocalsquare-ico-one-le-two--bf077e5e6a35484a62612182.md) | 109 | `result-track:bf077e5e6a35484a62612182c638618bc4d03a140b51e7f57cc7b8f7b1e54f55` |
| 5 | `theorem` | [effectiveSquareModulusReciprocalSquareMass_le_two](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/effectivesquaremodulusreciprocalsquaremass-le-two--4ab67ba44ffa7abdd01077a6.md) | 132 | `result-track:4ab67ba44ffa7abdd01077a6f06f968d1913345b26e0b8683bef3b2113041faa` |
| 6 | `theorem` | [centeredWindingRadius_cast_le](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/centeredwindingradius-cast-le--c551d5e5d373892bbb1fef93.md) | 147 | `result-track:c551d5e5d373892bbb1fef93a653af536aba97692b743e13f1ebcc35b0eab58f` |
| 7 | `theorem` | [centeredNonzeroWindingEndpointMultiplicity_le_four_mul](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/centerednonzerowindingendpointmultiplicity-le-four-mul--92cb40346e54b7b70a9881d7.md) | 170 | `result-track:92cb40346e54b7b70a9881d7e3b5742beb72095a1a1d35647f84cd53dd3321c3` |
| 8 | `def` | [CenteredWindingMultiplicityHasLinearEndpointCost](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/centeredwindingmultiplicityhaslinearendpointcost--8b2d87b8ca0ac0c5d4a7e854.md) | 224 | `declaration-track:8b2d87b8ca0ac0c5d4a7e854c1fa21f014f78dc81eaee1ad0014ffdeabcfdaa4` |
| 9 | `theorem` | [centeredWindingMultiplicityHasLinearEndpointCost](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/centeredwindingmultiplicityhaslinearendpointcost--fef9093a8c4461c1a9ccc30b.md) | 228 | `result-track:fef9093a8c4461c1a9ccc30b75a85db5bc0735f32e898ef6ad8037d23fea555e` |
| 10 | `structure` | [RegularCenteredWindingAfterMultiplicitySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/regularcenteredwindingaftermultiplicitysourcedata--eee5d2f7fc58365ca364fa1c.md) | 234 | `declaration-track:eee5d2f7fc58365ca364fa1cacc71fe2161bac05e3cc8000fa055c2a44bdd08c` |
| 11 | `def` | [RegularCenteredWindingAfterMultiplicitySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/declarations/regularcenteredwindingaftermultiplicitysource--debad9103cbf599112f3c15c.md) | 244 | `declaration-track:debad9103cbf599112f3c15cdd75dbe876ec514c5bb99a42dd0f537d69540a1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
