# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRankGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dde77d1422cd126b6e8e1d695ebd7abfa7d7b7e`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreyPlaneCoordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyplanecoordinates--3073b511912d6c7c1fffa889.md) | 17 | `declaration-track:3073b511912d6c7c1fffa889098e164d39fa1c8cc61744d47773ba17e5a4d9cc` |
| 2 | `abbrev` | [FreyValueJetObservations](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejetobservations--c97c5a0ae8598996d98d3c7a.md) | 20 | `declaration-track:c97c5a0ae8598996d98d3c7a7e96e3cca5ab3eee883dae5b536501ebeed67fb8` |
| 3 | `def` | [freyValueJetEval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejeteval--56016f1f16ac5454edb82e5e.md) | 24 | `declaration-track:56016f1f16ac5454edb82e5e127fc51068ee3a8d3d97421f98a69ebb7905181f` |
| 4 | `def` | [freyValueJetRecover](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejetrecover--b04cd1ee00af423a6f1721d8.md) | 29 | `declaration-track:b04cd1ee00af423a6f1721d83391a0abf3f1b18c02188ac8a7f6096ebbe680a7` |
| 5 | `def` | [freyValueJetEvalLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejetevallinear--e95c7be947ed0032fb26b80c.md) | 33 | `declaration-track:e95c7be947ed0032fb26b80cda33ee706ee41da66d1c6c3869c1127ea5df68bc` |
| 6 | `def` | [freyValueJetRecoverLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejetrecoverlinear--0cc4785c1d7813b7b56e7f52.md) | 46 | `declaration-track:0cc4785c1d7813b7b56e7f526350fce81dd0dbfb87b1e1b0882725cbcac1d63a` |
| 7 | `theorem` | [freyValueJetRecover_leftInverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejetrecover-leftinverse--760f5a68917512828dcdcc28.md) | 59 | `result-track:760f5a68917512828dcdcc2841df3dfcbde196c9bc139bf319bae93ca5b5c63d` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.freyValueJetEval_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyvaluejeteval-injective--8ef91f0c925e371922077ed8.md) | 73 | `result-track:8ef91f0c925e371922077ed8c59e5707064c14bf189dc2dd368a3f93892ae54e` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyValueJetRecover_comp_eval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyvaluejetrecover-comp-eval--fa441c4ef0bbc7210d8e3c12.md) | 79 | `result-track:fa441c4ef0bbc7210d8e3c1269943016f0cefabb8337f48727125acb5c45c078` |
| 10 | `def` | [freyRaiseToPlane](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyraisetoplane--3c10f7578e5f88d246641af8.md) | 87 | `declaration-track:3c10f7578e5f88d246641af8b9ca68f55a578fabaf788c9dafbe1c841e82dfc4` |
| 11 | `theorem` | [freyValueJetEval_raise](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejeteval-raise--f69f33d2405e6bf5a233fc50.md) | 90 | `result-track:f69f33d2405e6bf5a233fc50b6baa4fd92a7b4668616660da338a7e644a9fe76` |
| 12 | `theorem` | [frey_y_not_in_old_stage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/frey-y-not-in-old-stage--0c69addc4475d3f997390b32.md) | 98 | `result-track:0c69addc4475d3f997390b327d355f838ceec0f144be01ba3a3327c04bd4d395` |
| 13 | `theorem` | [freyValueJetEval_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejeteval-y--49c4e19979eeb2955e0fc2b9.md) | 105 | `result-track:49c4e19979eeb2955e0fc2b91dd891c3f58fd6b30777da9dae6a77341559c1fe` |
| 14 | `theorem` | [frey_three_values_lose_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/frey-three-values-lose-y--bf811cac315cbd82917351eb.md) | 110 | `result-track:bf811cac315cbd82917351ebd3d3224d462316bc0076fce390293a4a98880459` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyPlaneObservationAt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyplaneobservationat--fffd76c2c96320df59dd34e5.md) | 118 | `declaration-track:fffd76c2c96320df59dd34e51bc865d7285ba17a719101be76eeb76fa34b5d7e` |
| 16 | `def` | [PrimitiveAdditiveTriple.freyPlaneObservation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyplaneobservation--8c5dfa551345b77034300c96.md) | 126 | `declaration-track:8c5dfa551345b77034300c96039ae9d5957836e569a00245c329f9395d7e650d` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyPlaneObservationAt_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyplaneobservationat-eq--0b25169be7417044ecd55b92.md) | 133 | `result-track:0b25169be7417044ecd55b92e1d2abdcf025f4eef04b1146c7b14b5ab8959f70` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyPlaneObservation_intCast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyplaneobservation-intcast--bf711035a46195d707cd5a11.md) | 140 | `result-track:bf711035a46195d707cd5a118412e328c0404368dffa937dad7547ede563e037` |
| 19 | `theorem` | [freyValueJet_commonDivisor_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/freyvaluejet-commondivisor-iff--c87bd164481521c5a8167958.md) | 153 | `result-track:c87bd164481521c5a8167958d6bea2c64d5548320dd95d5f32161305d23b21e8` |
| 20 | `theorem` | [PrimitiveAdditiveTriple.freyValueJetEval_not_surjective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRankGrowth.lean/declarations/primitiveadditivetriple-freyvaluejeteval-not-surjective--bc395abc18b521d681a3eba6.md) | 180 | `result-track:bc395abc18b521d681a3eba68755747d9a742d073e6a004f299c57af0c98af2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
