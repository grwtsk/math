# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a50fc6bf4ec0e612b2205e64f898cc8b51ee752",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a50fc6bf4ec0e612b2205e64f898cc8b51ee752`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean.json)

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
| 1 | `theorem` | [StrictMono.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/strictmono-apply-eq-top-iff--076466a0725b5cd583eab9c4.md) | 41 | `result-track:076466a0725b5cd583eab9c493dc750923718f342c8dfb7cf32ff14c58c69f37` |
| 2 | `theorem` | [StrictAnti.apply_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/strictanti-apply-eq-top-iff--76bf6ecb58a012c15e2e0606.md) | 45 | `result-track:76bf6ecb58a012c15e2e0606b4bea5bddc2dff520fcf61f331cf883542ccf845` |
| 3 | `theorem` | [StrictMono.maximal_preimage_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/strictmono-maximal-preimage-top--464c8969b884ce09add45274.md) | 51 | `result-track:464c8969b884ce09add4527431a8b549c3efb550e63507a069d95f2c1659d318` |
| 4 | `theorem` | [monotone_and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-and--24c013b39050f8a7977aacbc.md) | 70 | `result-track:24c013b39050f8a7977aacbc2ae8caf2f9adbbfc74cbf6f917b5a699ce22cd0f` |
| 5 | `theorem` | [monotone_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-or--2e682ccea3c911edf03191ca.md) | 75 | `result-track:2e682ccea3c911edf03191cadc6526731fa06eb1ffdd8d37d77a815249570c06` |
| 6 | `theorem` | [monotone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-le--95b43485f68a26a6feb65113.md) | 79 | `result-track:95b43485f68a26a6feb65113dea007a712b118de9e5eb431a71c49b29257ac3e` |
| 7 | `theorem` | [monotone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-lt--c95431c9f94a9be1722af374.md) | 81 | `result-track:c95431c9f94a9be1722af3749138f4dbe46fb2be42d15dff61601b197146a97d` |
| 8 | `theorem` | [antitone_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/antitone-le--dadbcf31dcfc99876acb8211.md) | 83 | `result-track:dadbcf31dcfc99876acb8211f1edfc2955aef915670b53d215ea5946db367091` |
| 9 | `theorem` | [antitone_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/antitone-lt--d4cbcac2d65d1d9cc71a40c7.md) | 85 | `result-track:d4cbcac2d65d1d9cc71a40c756ed1d684061e835002233802856560676d315c5` |
| 10 | `theorem` | [Monotone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-forall--7334f96daec8c3d34fe3b765.md) | 87 | `result-track:7334f96daec8c3d34fe3b7653569811c49e417e60723818c08c5f75217e2de46` |
| 11 | `theorem` | [Antitone.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/antitone-forall--387b4a89c257aa6e9b9ea4b4.md) | 91 | `result-track:387b4a89c257aa6e9b9ea4b41b5eead85159e41de30f59dbe5e71e9b7bd10c3d` |
| 12 | `theorem` | [Monotone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-ball--7db29a303afcbc4b924ab86e.md) | 95 | `result-track:7db29a303afcbc4b924ab86e6b8e0cf814acf87fefbbb9af900b0a48c534ac4e` |
| 13 | `theorem` | [Antitone.ball](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/antitone-ball--6a1d83d3c22206162c14a4cc.md) | 98 | `result-track:6a1d83d3c22206162c14a4ccd74e3ad2120df7589558474f9aaefea7c121d9c3` |
| 14 | `theorem` | [Monotone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/monotone-exists--6948021519c33c8a19e48ab5.md) | 101 | `result-track:6948021519c33c8a19e48ab5e2d8a50bf0e6a25447c8d1a31c97c0aa6d74448f` |
| 15 | `theorem` | [Antitone.exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/antitone-exists--791477cf2759609dc6ad1a7a.md) | 105 | `result-track:791477cf2759609dc6ad1a7a7902bcd781cba69ce001250f76eda139bb390d02` |
| 16 | `theorem` | [forall_ge_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/forall-ge-iff--1fc8c1a2354a09e85ab48730.md) | 109 | `result-track:1fc8c1a2354a09e85ab48730d080df94a64282aa1a5a4519f99d6c2116548623` |
| 17 | `theorem` | [forall_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variant61610057e612ad07d74abb16fa05ecf3de73a096e3fff163127c35ea8224c365.lean/declarations/forall-le-iff--898fc76cec4d344295c4871f.md) | 113 | `result-track:898fc76cec4d344295c4871f8700cf7f50665f316827d07c49709090d446a463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
