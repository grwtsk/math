# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "564c8531aba51702308a42064c1ed450dbe30593",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `564c8531aba51702308a42064c1ed450dbe30593`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.ChangeOfRings` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushforward₀_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-obj--aa071da15f934f308192ec2a.md) | 33 | `declaration-track:aa071da15f934f308192ec2a14ccefb03a2bffecbd3b0ce8f5b5cc45d7ff2349` |
| 2 | `def` | [pushforward₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward--ab37dd0ffa25e3a8cbadd07e.md) | 51 | `declaration-track:ab37dd0ffa25e3a8cbadd07e2379484038833c10be0bfb2e7d86b54f757394f3` |
| 3 | `def` | [pushforward₀CompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-comptopresheaf--3e4704d63d94d05e98e8cecf.md) | 58 | `declaration-track:3e4704d63d94d05e98e8cecf131bce1b062237cdae7b398050ccc3886c41764c` |
| 4 | `def` | [pushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward--c47dc4887b8c4d827a3b4ba7.md) | 69 | `declaration-track:c47dc4887b8c4d827a3b4ba76b1fa1051af7c5a0f242ab06f6b6e23c8fcb1258` |
| 5 | `def` | [pushforwardCompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforwardcomptopresheaf--ff2d9fcd60c26a76258238b3.md) | 74 | `declaration-track:ff2d9fcd60c26a76258238b32415ae2858faa830d7df57d99f0d47c8e6537b04` |
| 6 | `lemma` | [pushforward_obj_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-obj-map-apply--bd5ca3bced2fabc4ecb2ce97.md) | 78 | `result-track:bd5ca3bced2fabc4ecb2ce97fc38f5cd7571faeaeb471c9c40a0ff5593ff270b` |
| 7 | `lemma` | [pushforward_obj_map_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-obj-map-apply--de5aa3bd61762c4babd44d2d.md) | 84 | `result-track:de5aa3bd61762c4babd44d2d0c869debfeb79dd0d4a1716fa8e3d731f428304f` |
| 8 | `lemma` | [pushforward_map_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-map-app-apply--0cf5b57e3c9bd8b5159061c8.md) | 91 | `result-track:0cf5b57e3c9bd8b5159061c89a372498a6196c31ee0b604026bd79eae4fcb446` |
| 9 | `lemma` | [pushforward_map_app_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pushforward/Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69.lean/declarations/pushforward-map-app-apply--bf5cc07eb9a59677208cf419.md) | 97 | `result-track:bf5cc07eb9a59677208cf4194c297506dd4c2f46de692f599f902b74ff6121d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
