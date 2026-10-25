# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5980adbac0edad17fd7b5e4386efca6ab5c93e05",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5980adbac0edad17fd7b5e4386efca6ab5c93e05`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Cases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PermuteGoals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/canlift--61ff2fa04afeea4e50c80593.md) | 23 | `declaration-track:61ff2fa04afeea4e50c80593275696c1b725dea7caaf3f4959f46c4743b8e0be` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/instance--1d57a373799639cf427ad712.md) | 28 | `declaration-track:1d57a373799639cf427ad712335b21675135049b79b0b671a9ee84613b90a346` |
| 3 | `instance` | [Pi.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/pi-canlift--0a3d40466a935088afa6b6f0.md) | 32 | `declaration-track:0a3d40466a935088afa6b6f0c810b7af85638363967db0d5d0ab5fe450d7e57a` |
| 4 | `theorem` | [Subtype.exists_pi_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/subtype-exists-pi-extension--82c7b212cf854571eb67f100.md) | 39 | `result-track:82c7b212cf854571eb67f10072cf1d24236d5bd4a30c7384a2c2753a85bb7286` |
| 5 | `instance` | [PiSubtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/pisubtype-canlift--c5b5d0ba564948b251d3f22f.md) | 47 | `declaration-track:c5b5d0ba564948b251d3f22fa4856b33b7e4a28d2c2b43d49ccfbdc2c2702ab4` |
| 6 | `instance` | [PiSubtype.canLift'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/pisubtype-canlift--12f175c02c5e3cd48c4b5405.md) | 53 | `declaration-track:12f175c02c5e3cd48c4b540592ddb2e94c37134af79d23bd862cba7b9ebbf5bd` |
| 7 | `instance` | [Subtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/subtype-canlift--d51ffe48b5f976ab951bff11.md) | 58 | `declaration-track:d51ffe48b5f976ab951bff11eeaaf758803ea751213ed76e1d39f86b560b608a` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/syntax--afaafbdfe635b9fccbdbe3ed.md) | 105 | `declaration-track:afaafbdfe635b9fccbdbe3edfda056384d5c9ebbd2947e1769fe01322d9d345e` |
| 9 | `def` | [Lift.getInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/lift-getinst--00b41db6aa8b154e2539ce52.md) | 109 | `declaration-track:00b41db6aa8b154e2539ce521a787df43100598fdc2bbc41a036589e42a48973` |
| 10 | `def` | [Lift.main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/lift-main--0cde6dd6c86c00799b7fe6c4.md) | 117 | `declaration-track:0cde6dd6c86c00799b7fe6c4ca8117ad36b9ee1da6971d6bef0b9dbf52584506` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/elab-rules--73aced83eefc1a6c6db06d41.md) | 170 | `declaration-track:73aced83eefc1a6c6db06d4115c23bfe059fb4e9c83dfc90e6c7b59716a08cb1` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/elab-rules--51f9241e635775545c220ec1.md) | 173 | `declaration-track:51f9241e635775545c220ec1b45829532c612e24080163b7d366c42e5bd3d13d` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/elab-rules--dc72cc59438c76475447f249.md) | 176 | `declaration-track:dc72cc59438c76475447f2490177b98472b73a80ff56abf3a20ef5d3119e6854` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant6573702f16cbffb5003762ef561925760d122796b5c034fc95e79758900bdd99.lean/declarations/elab-rules--8e67d3ac28bf0f76455685ba.md) | 179 | `declaration-track:8e67d3ac28bf0f76455685bafc5d24c2a2d0c8faea337b0cdee626a5f31e22ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
