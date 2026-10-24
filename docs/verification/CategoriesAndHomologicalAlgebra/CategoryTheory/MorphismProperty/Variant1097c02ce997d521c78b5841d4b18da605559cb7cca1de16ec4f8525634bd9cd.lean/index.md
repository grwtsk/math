# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e03ebdad4d2d96d3d708b845862ee81c7c00597",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e03ebdad4d2d96d3d708b845862ee81c7c00597`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/declarations/pretopology--b5adf757b01eac1769340018.md) | 32 | `declaration-track:b5adf757b01eac1769340018494fad1aa819bb5d3ffcc76c691bfddde0b00b63` |
| 2 | `abbrev` | [grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/declarations/grothendiecktopology--3c93d33f3d93161fa7e2a6b2.md) | 47 | `declaration-track:3c93d33f3d93161fa7e2a6b219d6c86da3841ff15cdc8734c64e53a1c12cfe4c` |
| 3 | `lemma` | [pretopology_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/declarations/pretopology-le--abd14a50b9aa899b5368233a.md) | 55 | `result-track:abd14a50b9aa899b5368233ac08568fe55a2cc7008d966f92e0b9027e24ddb44` |
| 4 | `lemma` | [pretopology_inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1097c02ce997d521c78b5841d4b18da605559cb7cca1de16ec4f8525634bd9cd.lean/declarations/pretopology-inf--c65dd115fc3ff5b619af007f.md) | 59 | `result-track:c65dd115fc3ff5b619af007f4039228ca3605845194277af653fed793e3283f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
