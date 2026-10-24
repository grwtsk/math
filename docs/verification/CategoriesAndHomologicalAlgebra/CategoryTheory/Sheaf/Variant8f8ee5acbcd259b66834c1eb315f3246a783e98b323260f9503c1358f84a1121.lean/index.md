# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3bf452d4712fbc6c75466affc63272f29fffb6d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3bf452d4712fbc6c75466affc63272f29fffb6d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Spaces` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/issheaf--a2dd7b29ca3497d1476bb9a3.md) | 81 | `declaration-track:a2dd7b29ca3497d1476bb9a3c50953931e6e37965389ca5f07c4e7ee30afcb8f` |
| 2 | `theorem` | [isSheaf_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/issheaf-unit--152d71863b78f7f6f8607545.md) | 86 | `result-track:152d71863b78f7f6f860754589f1412222e33e8cbad3a51a88ebe8c5807b3fc7` |
| 3 | `theorem` | [isSheaf_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/issheaf-iso-iff--f4f9e412fc7fb18807962adb.md) | 89 | `result-track:f4f9e412fc7fb18807962adb4a88aeb945eea376ca6e5564fa1b65a598028e6f` |
| 4 | `theorem` | [isSheaf_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/issheaf-of-iso--d8e24d77ae428e042d476ca4.md) | 94 | `result-track:d8e24d77ae428e042d476ca4d83a35a1a8b19d385ebe2aa362361866f603a394` |
| 5 | `def` | [Sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/sheaf--4f33c950f1cf2de6864562e9.md) | 104 | `declaration-track:4f33c950f1cf2de6864562e934570bfedc0505846c88137516db1801d2627d64` |
| 6 | `instance` | [SheafCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/sheafcat--c3adcd6e33df4dd22cb7e6c4.md) | 109 | `declaration-track:c3adcd6e33df4dd22cb7e6c4f6a174b607617b7db8d8178bdff777ea88b59386` |
| 7 | `abbrev` | [Sheaf.presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/sheaf-presheaf--b5d60fa57b19a50ecff74b49.md) | 115 | `declaration-track:b5d60fa57b19a50ecff74b49ff61648cc81fd1c2560738ba2c3ec0d4c68e3784` |
| 8 | `instance` | [sheafInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/sheafinhabited--7fff89cc657653ac6c285670.md) | 121 | `declaration-track:7fff89cc657653ac6c28567090433521a0e42ee98d163bb9a16427374e664d69` |
| 9 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/forget--f6d9da70c7a0eb559129eb13.md) | 128 | `declaration-track:f6d9da70c7a0eb559129eb135484553c8265bf865e67fc673bdcc176fa8318b7` |
| 10 | `instance` | [forget_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/forget-full--e9832cf081c2b197f309e638.md) | 134 | `declaration-track:e9832cf081c2b197f309e6386f1bc30d2e610ca7bd11bd7d4e0bfd0ea5c3e80a` |
| 11 | `instance` | [forgetFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/forgetfaithful--a37f83bbd9f86abd35874c68.md) | 137 | `declaration-track:a37f83bbd9f86abd35874c68bd644d72f207c5c7704dbfcf439c7356cd717575` |
| 12 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/id-app--7321aad7d3ae1623a047a88f.md) | 141 | `result-track:7321aad7d3ae1623a047a88f994393a5b44ca864266dc3e4f91f18ea889f0615` |
| 13 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/comp-app--cf5f4829a14c445ecc32a071.md) | 144 | `result-track:cf5f4829a14c445ecc32a0716f8d5efebb2742af3155ffb87b36e5013ca256bc` |
| 14 | `lemma` | [Presheaf.IsSheaf.section_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/declarations/presheaf-issheaf-section-ext--544c250dddd86a60a16dfb95.md) | 150 | `result-track:544c250dddd86a60a16dfb95a3d780ebf068071c17b8b82a8439c0423b21940a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
