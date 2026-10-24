# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Rank.Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32ce90ba13d5f0630ee29f03c0679aa0d7c6071e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32ce90ba13d5f0630ee29f03c0679aa0d7c6071e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/rankfunction--f47fe455fe3902e5e7dac3d8.md) | 47 | `declaration-track:f47fe455fe3902e5e7dac3d816decdf7ead9a435a9df5ef584cc409fa5eea320` |
| 2 | `lemma` | [wf_ancestralRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/wf-ancestralrel--8925d428c1aacc52a7e7ab8f.md) | 58 | `result-track:8925d428c1aacc52a7e7ab8ff41c3f14a7df451c85c84831efca3ca2d8c22ecf` |
| 3 | `lemma` | [isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/isregular--92cd00899597f5e69cb79e08.md) | 63 | `result-track:92cd00899597f5e69cb79e085a7bf195e054bb98c8d2017a7788c93af19a5aa5` |
| 4 | `structure` | [WeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/weakrankfunction--c5c32bad3231c6a860e02ed4.md) | 71 | `declaration-track:c5c32bad3231c6a860e02ed485a7324f2d76aa7fc4207b37997644a625126a52` |
| 5 | `lemma` | [wf_ancestralRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/wf-ancestralrel--63c2b12acb099c13d44b1e0d.md) | 83 | `result-track:63c2b12acb099c13d44b1e0d4384f90a9b1e6085e963ba1acb7555d3cefdd250` |
| 6 | `lemma` | [isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/isregular--fa1b7056fe7407a059402b25.md) | 96 | `result-track:fa1b7056fe7407a059402b25e3859e800720b921fcde095c2561aa70e4255856` |
| 7 | `def` | [RankFunction.toWeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/rankfunction-toweakrankfunction--3f98d35d5f531cd300699c11.md) | 103 | `declaration-track:3f98d35d5f531cd300699c1109e788f9443e3428bfe1fa09d72cc00b2f0b12ad` |
| 8 | `structure` | [RankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/rankfunction--acc8644781180d2e9f041254.md) | 117 | `declaration-track:acc8644781180d2e9f0412543357fdebef053e402c2b452b5582b0a7239fc897` |
| 9 | `structure` | [WeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/weakrankfunction--016d04044553be6230075fdc.md) | 125 | `declaration-track:016d04044553be6230075fdc4aab9a0c39105758eee6ae7e077668f71bdcfbf9` |
| 10 | `def` | [rankFunctionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/rankfunctionequiv--c07099e2121c091ef6de913c.md) | 132 | `declaration-track:c07099e2121c091ef6de913cf2c0c2d434697bf861e8aa69f71d96719e89e3af` |
| 11 | `def` | [weakRankFunctionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/weakrankfunctionequiv--5c6b209b2b603ca5aa13ed4a.md) | 151 | `declaration-track:5c6b209b2b603ca5aa13ed4a5610560019d03dc0f0d6544c437bac745a193621` |
| 12 | `lemma` | [RankFunction.isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/rankfunction-isregular--3877532d0423d9c936760f0f.md) | 170 | `result-track:3877532d0423d9c936760f0ffd4fa4ffe1a7b5ca65a27bc2605aa5f31b77b011` |
| 13 | `lemma` | [WeakRankFunction.isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variant166ce8610b768ad98eb2d521ceaed5bb555e6f325e94f01d34ce6a0c8551ea3c.lean/declarations/weakrankfunction-isregular--74d97483c848939b454c8ef9.md) | 174 | `result-track:74d97483c848939b454c8ef9ed70c093e60a3207e7212e1550eb243b96494dc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
