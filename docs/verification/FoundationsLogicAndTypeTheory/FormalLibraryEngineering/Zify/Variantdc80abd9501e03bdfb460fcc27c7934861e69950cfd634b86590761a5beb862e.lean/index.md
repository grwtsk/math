# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22a81b43bdfa32732a2a7ffc79216f1d78f0e969",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22a81b43bdfa32732a2a7ffc79216f1d78f0e969`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/syntax--b6713ae409b9d15c0322a41f.md) | 62 | `declaration-track:b6713ae409b9d15c0322a41f614b221e45ecddf9d761adf5536b97992af4e1c6` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/macro-rules--e4a4ad0f3092d3f7a1246a5a.md) | 64 | `declaration-track:e4a4ad0f3092d3f7a1246a5aecc99e25cbfcdebfe32ce0bbd37fbaed65445104` |
| 3 | `def` | [mkZifyContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/mkzifycontext--9daaab0763c6952142adb8f8.md) | 71 | `declaration-track:9daaab0763c6952142adb8f89475279a565adce116f37a79bc9f6d43b9d8e642` |
| 4 | `def` | [applySimpResultToProp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/applysimpresulttoprop--477094bd6d2755da0995e0a6.md) | 79 | `declaration-track:477094bd6d2755da0995e0a64ef8cc175592756fd3f6c1e9603bccc1f3a61dc7` |
| 5 | `def` | [zifyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/zifyproof--99b551b22a3996f832042012.md) | 90 | `declaration-track:99b551b22a3996f8320420129c51b9eeed6fec35c4a7689b7636f162f66206a5` |
| 6 | `lemma` | [natCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/natcast-eq--58fe32033a651e9ca272117c.md) | 96 | `result-track:58fe32033a651e9ca272117ceedf77d0442e10343923fa2247147e6781089711` |
| 7 | `lemma` | [natCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/natcast-le--4fc363a308229e30cef4c115.md) | 97 | `result-track:4fc363a308229e30cef4c115867e7e281194913ce33d987edffe3ef776b5f59f` |
| 8 | `lemma` | [natCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/natcast-lt--43b24f9751ab0f48b85cadf8.md) | 98 | `result-track:43b24f9751ab0f48b85cadf85b085107fa7b0999e1c84c3077dc18d4c86034e3` |
| 9 | `lemma` | [natCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/natcast-ne--e6f91117bc2e1c9d6c80472c.md) | 99 | `result-track:e6f91117bc2e1c9d6c80472cc38d10110d8255fd394ffd9a25fcce45b30b94c5` |
| 10 | `lemma` | [natCast_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/natcast-dvd--080ebd2c3dac9dce570078fa.md) | 101 | `result-track:080ebd2c3dac9dce570078fad6f5a7a182c1499062c5c693b5a2bc4af7bd7b74` |
| 11 | `theorem` | [Nat.cast_sub_of_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/nat-cast-sub-of-add-le--4db66b586960df63c895883b.md) | 112 | `result-track:4db66b586960df63c895883b656ad48107b0c034e588281c1de5978f5b9e0e6e` |
| 12 | `theorem` | [Nat.cast_sub_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variantdc80abd9501e03bdfb460fcc27c7934861e69950cfd634b86590761a5beb862e.lean/declarations/nat-cast-sub-of-lt--f897e999fece59ed38d8dad4.md) | 115 | `result-track:f897e999fece59ed38d8dad4262c8e076d54166146a518644172e1fcd610b32b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
