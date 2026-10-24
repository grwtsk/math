# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalize.Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef4968a7808ff1e6bfeedffffdadb38311bc2c1f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef4968a7808ff1e6bfeedffffdadb38311bc2c1f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalComp_nil_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalcomp-nil-nil--e13fd37d99f59d392fb58dc7.md) | 39 | `result-track:e13fd37d99f59d392fb58dc7beba782c2ab9fe2a10bef15368795350a9f164ba` |
| 2 | `theorem` | [evalComp_nil_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalcomp-nil-cons--b07d07d0bc6f6d9a668b02ce.md) | 43 | `result-track:b07d07d0bc6f6d9a668b02ceede218569f5c9e39d80e00b01da2c023d0351740` |
| 3 | `theorem` | [evalComp_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalcomp-cons--a95ef0ca1b44c136fdcd323d.md) | 47 | `result-track:a95ef0ca1b44c136fdcd323dc66dcc67f492f63fc2572a06a48a754ae3b5fec4` |
| 4 | `theorem` | [eval_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-comp--aa19fd07110686ae71ffc513.md) | 52 | `result-track:aa19fd07110686ae71ffc5133683495641f122791897e544038d9ec50ef8e58f` |
| 5 | `theorem` | [eval_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-of--edcc1f9f288f3143c8cecbdc.md) | 58 | `result-track:edcc1f9f288f3143c8cecbdc160a5196d1aff39019703329ab115198720201ef` |
| 6 | `theorem` | [eval_monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-monoidalcomp--f21e2059a6c511543809ad5d.md) | 62 | `result-track:f21e2059a6c511543809ad5d8c1cc48ce4dbfeda65fa88d4a7848610142a190d` |
| 7 | `theorem` | [evalWhiskerLeft_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerleft-nil--231a1e4aed221242f34a92b0.md) | 71 | `result-track:231a1e4aed221242f34a92b0673d74ec743bf8e7f0dbff460ab37db0180ded18` |
| 8 | `theorem` | [evalWhiskerLeft_of_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerleft-of-cons--55b2514a23e9835def4cf680.md) | 75 | `result-track:55b2514a23e9835def4cf68041007c8d6adf6a637647bbbe66c997ffe0c2a04f` |
| 9 | `theorem` | [evalWhiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerleft-comp--7709659a7b95dc321df9ab0b.md) | 80 | `result-track:7709659a7b95dc321df9ab0b5d12a6b3db82cd194855c57286b99ae77fc0de74` |
| 10 | `theorem` | [evalWhiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerleft-id--08829a0ba3e275163211bc4a.md) | 88 | `result-track:08829a0ba3e275163211bc4ae9b19683d91895cf287b9913d80fa43a95ef4a88` |
| 11 | `theorem` | [eval_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-whiskerleft--8dd89988c723baf4b8013288.md) | 94 | `result-track:8dd89988c723baf4b80132882fab3e243020596599547f8a31c0911adc9bca1e` |
| 12 | `theorem` | [eval_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-whiskerright--5abfe7dcb687bdbd2f33a711.md) | 100 | `result-track:5abfe7dcb687bdbd2f33a711dd72977cf4a67acf7e092ce97898d70aa2b6817b` |
| 13 | `theorem` | [eval_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/eval-tensorhom--e58d4a030ff1a929b655ddbb.md) | 106 | `result-track:e58d4a030ff1a929b655ddbb039e54f168ccb886edc92485bc5df5cb87473008` |
| 14 | `theorem` | [evalWhiskerRight_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-nil--617e4b9821b1db15580cb17c.md) | 113 | `result-track:617e4b9821b1db15580cb17c3a539b73d64929de20eaaf8f380f13530eb7bdd0` |
| 15 | `theorem` | [evalWhiskerRight_cons_of_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-cons-of-of--5d0138f0be6b4aee2ea7dda2.md) | 117 | `result-track:5d0138f0be6b4aee2ea7dda2ca00751a524eac6426eda0ab7afd9082393ff7af` |
| 16 | `theorem` | [evalWhiskerRight_cons_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-cons-whisker--a33969ceb37f147b4549f49b.md) | 125 | `result-track:a33969ceb37f147b4549f49b6a63ec572833361df31979b25d841642ec2ee395` |
| 17 | `theorem` | [evalWhiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-comp--b89046244043b6083ec0c174.md) | 138 | `result-track:b89046244043b6083ec0c174b0c3d947c97124135c01db5b04e61adfff5fad60` |
| 18 | `theorem` | [evalWhiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-id--2d75c0a04cea14a9336e23b1.md) | 146 | `result-track:2d75c0a04cea14a9336e23b15bf96106c08c0736404bc1a0cb9111a3ae31c69c` |
| 19 | `theorem` | [evalWhiskerRightAux_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerrightaux-of--f25e3618575e667235823505.md) | 152 | `result-track:f25e3618575e667235823505dcecbb05578f67362982ab9aa1061145621b87fa` |
| 20 | `theorem` | [evalWhiskerRightAux_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerrightaux-cons--ffc0780e793897daaf34b57c.md) | 156 | `result-track:ffc0780e793897daaf34b57c8d76c15360d5cbe3def4f9f3ac69d3966fd46b27` |
| 21 | `theorem` | [evalWhiskerRight_cons_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalwhiskerright-cons-of--81a81aeedf2c3e673a9e7a7e.md) | 164 | `result-track:81a81aeedf2c3e673a9e7a7e1319d9ef6bde379bedd82234ff4ace4aab447d37` |
| 22 | `theorem` | [evalHorizontalCompAux_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcompaux-of--5a5fe747b4ebd2c8289448f4.md) | 172 | `result-track:5a5fe747b4ebd2c8289448f4c26ac4406da2294c48ae11f35b284f2970860961` |
| 23 | `theorem` | [evalHorizontalCompAux_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcompaux-cons--a55c3d0e452b95015d464ff0.md) | 176 | `result-track:a55c3d0e452b95015d464ff03b93deb674854bb33757e56faade29d611616d9c` |
| 24 | `theorem` | [evalHorizontalCompAux'_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcompaux-whisker--da9bc556370e22eea35679b5.md) | 184 | `result-track:da9bc556370e22eea35679b5e5dafbbf936bb1fdf0fb8b195dcf14d95effc462` |
| 25 | `theorem` | [evalHorizontalCompAux'_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcompaux-of-whisker--059bd6d379445b9b2f01125e.md) | 193 | `result-track:059bd6d379445b9b2f01125e4fdbc677bd9bd2410168bc63c99fbae3a0683334` |
| 26 | `theorem` | [evalHorizontalComp_nil_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcomp-nil-nil--27f8cac585b88921ac98323e.md) | 204 | `result-track:27f8cac585b88921ac98323e87abf112f13259632e318c72cd1eb40c66e4c916` |
| 27 | `theorem` | [evalHorizontalComp_nil_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcomp-nil-cons--fddd4e6756c66c07d85dee53.md) | 208 | `result-track:fddd4e6756c66c07d85dee53dc7fbf361259e2786910dfa2b9b4c30f020c2391` |
| 28 | `theorem` | [evalHorizontalComp_cons_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcomp-cons-nil--861dd8374de89382d1e47201.md) | 218 | `result-track:861dd8374de89382d1e472017c59405aa3a059a01294f9ac91e8755713e68c0a` |
| 29 | `theorem` | [evalHorizontalComp_cons_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/evalhorizontalcomp-cons-cons--f23fb3cdc3fd85811b8f1452.md) | 226 | `result-track:f23fb3cdc3fd85811b8f1452d5772a154cfb15882a562d77b25845d909d5b7d3` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--2a5ff591ac30c1b0b80060a1.md) | 240 | `declaration-track:2a5ff591ac30c1b0b80060a11efc3f4638d612aaa65708ec230e087e40945eb4` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--107b2f416ed13cc324a283cf.md) | 292 | `declaration-track:107b2f416ed13cc324a283cfb0e40ff30098440e3800cfdb805b26a53c552e63` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--8b5af2bf1ffd5516c286e676.md) | 354 | `declaration-track:8b5af2bf1ffd5516c286e6767ed49e08a5117b39e7f7082db55a15e200daf2a3` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--31247ccd06626967e22cfe7d.md) | 487 | `declaration-track:31247ccd06626967e22cfe7d754aa24324cb5f92a04824857f0f98b59c10a6b5` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--b1405ce72eb79519f8294449.md) | 680 | `declaration-track:b1405ce72eb79519f8294449a325f6ca045f526a34fe34f24d11cbf2c6b1563f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--1181830b87388392538aa90d.md) | 780 | `declaration-track:1181830b87388392538aa90d8421f8b8edea13be486f0bdb57f8682d2c42c50d` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/declarations/instance--b874db30953ab0348b880730.md) | 792 | `declaration-track:b874db30953ab0348b880730632723129d2451c5056220d47e663cdf3ca1e968` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
