# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Enough.Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c90ca497492ebb38601ee99bb5960ba50d817f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c90ca497492ebb38601ee99bb5960ba50d817f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EffectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/effectivepresentation--dd6063a97d975a6b2e72918d.md) | 35 | `declaration-track:dd6063a97d975a6b2e72918d98f14d9a80785affecb1ace278b089e16f7948dd` |
| 2 | `class` | [EffectivelyEnough](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/effectivelyenough--a75c324370bca7df7531e675.md) | 47 | `declaration-track:a75c324370bca7df7531e6752c3dc72eaf6c2e040b2c4e0c530f977000099abd` |
| 3 | `def` | [effectiveEpiOverObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/effectiveepioverobj--d20d3f8c4f3f191e01df605f.md) | 57 | `declaration-track:d20d3f8c4f3f191e01df605f0bbed4e8f6b5379a7851cb9c0dd157a7d34a7644` |
| 4 | `def` | [effectiveEpiOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/effectiveepiover--0963746e942edb687aa4b839.md) | 64 | `declaration-track:0963746e942edb687aa4b839a45c4c35ecae6514079e2aafc5614d1e08b74321` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/instance--45145ffe927ba9c5deba5f03.md) | 67 | `declaration-track:45145ffe927ba9c5deba5f03557d75e2d62ae19ca3ff78aae9e2bf39cceffc1c` |
| 6 | `def` | [equivalenceEffectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/equivalenceeffectivepresentation--4322acefb879c3a5d3475f28.md) | 71 | `declaration-track:4322acefb879c3a5d3475f28bbf682e2fe19d4edceb210f22711f2c1b880d43e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Enough/Variant01b2a34921edbaa0ec310f08d4cbe527de426451bacf849cdde69def993ad4f9.lean/declarations/instance--613ad665b851882860650ac3.md) | 77 | `declaration-track:613ad665b851882860650ac3b917c17bc1390c17fc8959b4d90eaab10d601e49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
