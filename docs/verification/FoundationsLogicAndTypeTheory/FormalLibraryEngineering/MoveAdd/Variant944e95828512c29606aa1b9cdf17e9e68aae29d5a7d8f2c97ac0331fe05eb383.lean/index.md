# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MoveAdd.Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Expr.getExprInputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/lean-expr-getexprinputs--bfabd9edce70a69534167ba0.md) | 107 | `declaration-track:bfabd9edce70a69534167ba0dda4dc82956ed8b24d649369c036d47e2e98d5ce` |
| 2 | `def` | [Lean.Expr.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/lean-expr-size--427586aba92958387dde459a.md) | 118 | `declaration-track:427586aba92958387dde459ae298e8c2a72e8de9aa9e1bba37b1ab25b91e2a7d` |
| 3 | `def` | [uniquify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/uniquify--e01ff384046442d4563ace39.md) | 147 | `declaration-track:e01ff384046442d4563ace391b32a41bfea34d2005636e44ace78b59d48cb246` |
| 4 | `def` | [weight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/weight--2b1fea202f2fbb0a41ffc3aa.md) | 170 | `declaration-track:2b1fea202f2fbb0a41ffc3aa6831edf824feb88ccb243c2a17329e08ab226f45` |
| 5 | `def` | [reorderUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/reorderusing--837c55adb56a5cd5ca656d0e.md) | 192 | `declaration-track:837c55adb56a5cd5ca656d0ed6ce5b076251924ca341472b713ffc408790df1d` |
| 6 | `def` | [prepareOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/prepareop--26dbb085d8c98c53b89fd929.md) | 216 | `declaration-track:26dbb085d8c98c53b89fd9292b9bbefd1b2fa28dfcdfd326133846743d60a164` |
| 7 | `def` | [sumList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/sumlist--de95ffb1ad85b06e0f7af22c.md) | 231 | `declaration-track:de95ffb1ad85b06e0f7af22c87d970450581e0a330c7415af75ce6f8ae80a037` |
| 8 | `def` | [getAddends](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/getaddends--22c4f5a4dd032952010d9867.md) | 249 | `declaration-track:22c4f5a4dd032952010d9867c453ef5700e8b341d4d07e82bcbcf41f6739ebf3` |
| 9 | `def` | [getOps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/getops--2bef8cf6d64a4baa867e2dee.md) | 261 | `declaration-track:2bef8cf6d64a4baa867e2dee12f7c9db562e78422a5e4a44447b0c3d2ed772f1` |
| 10 | `def` | [rankSums](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/ranksums--326eae52b152f34df52095b7.md) | 281 | `declaration-track:326eae52b152f34df52095b77355b82372ca9b451730a48bd36dcb8455a2821d` |
| 11 | `def` | [permuteExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/permuteexpr--188b2e818643a25a58af5123.md) | 294 | `declaration-track:188b2e818643a25a58af51239341ef07e33b6d4aaeb5dadba7060fbfcc734dac` |
| 12 | `def` | [pairUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/pairup--68dd0d7c27a2068e2eb49dc4.md) | 327 | `declaration-track:68dd0d7c27a2068e2eb49dc4677436429d9ea2a4c862c91bdb69ac45373bc4aa` |
| 13 | `def` | [moveOperSimpCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/moveopersimpctx--619147bc1049f256d5091abb.md) | 340 | `declaration-track:619147bc1049f256d5091abbaf003e2cbb4ffbc1f2cc94c8201108256a30ba21` |
| 14 | `def` | [reorderAndSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/reorderandsimp--09f3fce14b7b9f8ccf1028b8.md) | 365 | `declaration-track:09f3fce14b7b9f8ccf1028b866b789e8a94c285f941e4e16e875ddcf63ff9a20` |
| 15 | `def` | [unifyMovements](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/unifymovements--902096404cf85e7a720d87f0.md) | 390 | `declaration-track:902096404cf85e7a720d87f03bd1e65f397240e5595251b5d80c2ebd308b88ad` |
| 16 | `def` | [parseArrows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/parsearrows--87c16a56a48427bbcc4a892e.md) | 417 | `declaration-track:87c16a56a48427bbcc4a892e445c6b216a072ad26c99550658148d6f5c6bab2e` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/initialize--5c8c3b2baf4794582ee9ef87.md) | 424 | `declaration-track:5c8c3b2baf4794582ee9ef87788b3eba57946b19b56b3012ef7e1b741fbdcfbc` |
| 18 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/elab--92b89699add1b1bed25fcd1d.md) | 441 | `declaration-track:92b89699add1b1bed25fcd1de128e238938d2af0c5e7bc8f3c22ccce2eb187bb` |
| 19 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/elab--49e556e0a4e71ae61e6b3e04.md) | 455 | `declaration-track:49e556e0a4e71ae61e6b3e04a80079ac756571f3d5d7fbe2d1c6281fdc6d5741` |
| 20 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/declarations/elab--736f97d6a3e96bebd8bf3fbd.md) | 460 | `declaration-track:736f97d6a3e96bebd8bf3fbdae2e3f5ea0822913dc3d34439af6997dfb19b557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
