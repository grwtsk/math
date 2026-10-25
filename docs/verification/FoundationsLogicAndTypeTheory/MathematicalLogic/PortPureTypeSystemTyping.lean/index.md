# Verification target: GRWTSK.Logic.PortPureTypeSystemTyping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123376671267711f15d0ce0c559660ccdb930322",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PortPureTypeSystemTyping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123376671267711f15d0ce0c559660ccdb930322`.

Source path: `GRWTSK/Logic/PortPureTypeSystemTyping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PortPureTypeSystemTyping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.PortPureTypeSystemMetatheory`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lookup](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/lookup--2d4971b1cfd3b5f46c8d8020.md) | 13 | `declaration-track:2d4971b1cfd3b5f46c8d8020c69280d946146c1d48efcaa516ac020a3e2de65f` |
| 2 | `theorem` | [sort_of_valid](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/sort-of-valid--7600872d83b67959cf258d3c.md) | 22 | `result-track:7600872d83b67959cf258d3c0ba522171a6aab7d4ca8e049c385d6a56e1919f6` |
| 3 | `theorem` | [product_domain](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/product-domain--6624ccb7f2f9e0b45a846539.md) | 29 | `result-track:6624ccb7f2f9e0b45a8465394dc3bdb2f0974bef9182e4fa5910198e92469761` |
| 4 | `theorem` | [subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/subst--d582f4d5276083f8d0d356ca.md) | 60 | `result-track:d582f4d5276083f8d0d356cae6c6cf7b6799b5cde23b74dc122546a3a043b40d` |
| 5 | `theorem` | [rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/rename--b084e234cec8aeaf7ea4842b.md) | 69 | `result-track:b084e234cec8aeaf7ea4842b59b0eb624012dc462e3551c85d7b6c1f95cf2205` |
| 6 | `def` | [TypedSubstitution](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/typedsubstitution--d330cc824900c9d4f5a5f015.md) | 80 | `declaration-track:d330cc824900c9d4f5a5f015c3bbdcc735b36e9ae499dea7192400517ecbf3c5` |
| 7 | `theorem` | [tail](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/tail--08df9f841dca209501af47a7.md) | 90 | `result-track:08df9f841dca209501af47a7905e9752e51376158b7b8f73a10ba4ea12cea59a` |
| 8 | `theorem` | [lift](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/lift--071875232d069f97872142f0.md) | 97 | `result-track:071875232d069f97872142f037605420c39e86a5ef57292353660b75203d2f6d` |
| 9 | `theorem` | [subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/subst--6fc4cbf6cdacda0ae2f00474.md) | 118 | `result-track:6fc4cbf6cdacda0ae2f004749cf593b25d0b254a9299d966c501dccb3a71d689` |
| 10 | `theorem` | [subst_var_rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/subst-var-rename--e945c9a69fb6b6a9bfb5fd77.md) | 146 | `result-track:e945c9a69fb6b6a9bfb5fd7787dce68c425962866290cfb7ab3eb635d498c4de` |
| 11 | `theorem` | [subst_lift_single](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/subst-lift-single--8cd408425ee9519f5c8e690e.md) | 151 | `result-track:8cd408425ee9519f5c8e690e8812fb95eaae3649b317ac6060cafa396a5984e8` |
| 12 | `theorem` | [lookup](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/lookup--10ab188525ad9ae409a447e3.md) | 163 | `result-track:10ab188525ad9ae409a447e38e2f584126c4a1005a662422f4947a711a480988` |
| 13 | `theorem` | [identity](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/identity--f22702e3d01d984866f79dbf.md) | 179 | `result-track:f22702e3d01d984866f79dbffdedb8c896d656030f8d1cf70185874ee8fea002` |
| 14 | `theorem` | [weaken](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/weaken--feacd59fed380ccd365f5f29.md) | 185 | `result-track:feacd59fed380ccd365f5f29180accb28bf3e8c60944e35b97584d537e3726f5` |
| 15 | `theorem` | [single](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/single--2b3239d5b5da0560c7cd36ac.md) | 193 | `result-track:2b3239d5b5da0560c7cd36ac614781d24defd7c3081d9ddceba7f6f8b0485000` |
| 16 | `theorem` | [rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/rename--1539db7088ebac18933f503f.md) | 210 | `result-track:1539db7088ebac18933f503fd4a9637b4628663894c3094d2906c62dd6d0688e` |
| 17 | `theorem` | [instantiate](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/instantiate--0ce71c6fc132ba9e02336a60.md) | 220 | `result-track:0ce71c6fc132ba9e02336a60a70ba6592cfb67967099678f0513f83564ce0a09` |
| 18 | `theorem` | [weaken_under](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/weaken-under--9ed3d6de898318c95329bb57.md) | 226 | `result-track:9ed3d6de898318c95329bb57bc91b78367564f5a9599c13699c16dbfe79f7842` |
| 19 | `theorem` | [context_head_conversion](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/context-head-conversion--19467ecea24935b763accbc8.md) | 242 | `result-track:19467ecea24935b763accbc89bd54fcd025a9bcaf29075fe56521f675e303cd8` |
| 20 | `def` | [Generation](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/generation--b2d25b9f967f98278cffad8a.md) | 261 | `declaration-track:b2d25b9f967f98278cffad8a7272f6d755d9dd4600a6ed20cd7d6736e62e80ef` |
| 21 | `theorem` | [generation](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemTyping.lean/declarations/generation--159911791abe79b0db71811d.md) | 275 | `result-track:159911791abe79b0db71811d20a336183e5272b9be4d490103860fcbfc80115f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
