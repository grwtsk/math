# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d5907706656147be4806e804a751718f60a170c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d5907706656147be4806e804a751718f60a170c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Lookup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/transportindex--0f369ac93dd6e314fbc94947.md) | 15 | `declaration-track:0f369ac93dd6e314fbc9494789eec37478ed4470c6fd53227eb36f1c2244751c` |
| 2 | `structure` | [LookupFibrationEquivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/lookupfibrationequivalence--898cd0618482b44709206f72.md) | 28 | `declaration-track:898cd0618482b44709206f72df3a108f4ed17d8b53a85aa5e23d9f71bbba2496` |
| 3 | `def` | [PreservesSemanticsAndLookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/preservessemanticsandlookup--58cd84bbb9f1fc881b747ff0.md) | 47 | `declaration-track:58cd84bbb9f1fc881b747ff03ac097eeeed60b775778ea72b2c398f84f380aee` |
| 4 | `def` | [preservesOfDecodeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/preservesofdecodeeq--6550647790203cc66215344c.md) | 51 | `declaration-track:6550647790203cc66215344cfc7cbc266e9fcac6a80863fbbb1dc1e7a5954699` |
| 5 | `theorem` | [preserves_semantics_and_lookup_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/preserves-semantics-and-lookup-refl--f7f44de3e1dc3f75c5a6ade9.md) | 69 | `result-track:f7f44de3e1dc3f75c5a6ade9d0205c3fbf360d1042d674950387161d8b0e3bfb` |
| 6 | `theorem` | [preserves_semantics_and_lookup_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/preserves-semantics-and-lookup-trans--09db0f44b77740b7ccc88d0c.md) | 74 | `result-track:09db0f44b77740b7ccc88d0c2e5459f65df3877a828ea8537fe1080690c4cb00` |
| 7 | `theorem` | [preserves_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/preserves-comp--bfb1f08184a72146ebc1580d.md) | 84 | `result-track:bfb1f08184a72146ebc1580dfd3cbed1f6b99605261822d294c35f2810b0327b` |
| 8 | `inductive` | [DupSide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/dupside--ab60c1f7137f714606c69542.md) | 91 | `declaration-track:ab60c1f7137f714606c695427e954c41fce0fba5315982fc181217f15a09b552` |
| 9 | `structure` | [MacroRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/macrorule--04da7224f8164b2b7338755b.md) | 96 | `declaration-track:04da7224f8164b2b7338755b5fa80863e0c80f2e8e5b2d555978fce0fc5f95ac` |
| 10 | `def` | [macroRuleHasDeterministicRouting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/macrorulehasdeterministicrouting--1b717947fde20f9377b48526.md) | 118 | `declaration-track:1b717947fde20f9377b48526eda4dc83b95742d047b750435ea258a76e4ac0bf` |
| 11 | `theorem` | [macro_rule_route_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/macro-rule-route-sound--14ae8ab4c22b872dd1ba3ef3.md) | 122 | `result-track:14ae8ab4c22b872dd1ba3ef310e2aa617b9e2ee6cf5b8c946b4e90b88af76825` |
| 12 | `theorem` | [normalize_preserves_semantics_and_lookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/normalize-preserves-semantics-and-lookup--1feff6269959020aec91d0f0.md) | 131 | `result-track:1feff6269959020aec91d0f05e7dc51d91eb9b4d78f6fc45a8e1c09abf815b83` |
| 13 | `inductive` | [RewriteStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/rewritestep--5295a0828f463eb638f81ccd.md) | 136 | `declaration-track:5295a0828f463eb638f81ccd5b42fbb5b9c0e6c8ac7df81774a968ba192668da` |
| 14 | `theorem` | [rewrite_preserves_semantics_and_lookup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/rewrite-preserves-semantics-and-lookup--5ef7db431320878c9bec24e7.md) | 143 | `result-track:5ef7db431320878c9bec24e71929e103897fcf44e1cef0d547b980e33e2592db` |
| 15 | `theorem` | [rewrite_preserves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantf50f1685b9da877205c0c5b27122ed44c262f503ca29529b20954910f564ca67.lean/declarations/rewrite-preserves--f6c4a87ba0c0426b61d612b0.md) | 151 | `result-track:f6c4a87ba0c0426b61d612b02ba6564edda7e7d32ccbc74dfd5d0f7208a81586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
