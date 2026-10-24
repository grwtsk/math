# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3ee937c1534aa5d34e70cd982bf28f3a55e9ed",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3ee937c1534aa5d34e70cd982bf28f3a55e9ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Mono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_mono_of_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/preserves-mono-of-preserveslimit--101fca5d0d3f130af2732707.md) | 38 | `result-track:101fca5d0d3f130af2732707a9e0d988464691d95750f4bba295f4aa36f1d3fa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/instance--8e3fbc67da4da8e01b72658d.md) | 44 | `declaration-track:8e3fbc67da4da8e01b72658d2979f7bcb3d20c13ade755e455252d912641f5ac` |
| 3 | `theorem` | [reflects_mono_of_reflectsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/reflects-mono-of-reflectslimit--34192e62731e23f93587cb67.md) | 49 | `result-track:34192e62731e23f93587cb6791adb2893065c0189158dd51683c550882f9f6d3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/instance--fa734940e572de121a8ee497.md) | 55 | `declaration-track:fa734940e572de121a8ee497a78388c815fa2c749041fcfde0203e62eabe49df` |
| 5 | `theorem` | [preserves_epi_of_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/preserves-epi-of-preservescolimit--47bd1a5abfde704a5d75372a.md) | 60 | `result-track:47bd1a5abfde704a5d75372ad1e8a908ef6c74f50dfa4c530be02efe8b74b317` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/instance--570694e622143bc634ab4f73.md) | 66 | `declaration-track:570694e622143bc634ab4f735290c050db949ecb23a0e06c63b65c125d6bdf14` |
| 7 | `theorem` | [reflects_epi_of_reflectsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/reflects-epi-of-reflectscolimit--ed38a42d32e248d43742fc13.md) | 71 | `result-track:ed38a42d32e248d43742fc1308148424f0116890f62871da0114a646382fe6d0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450.lean/declarations/instance--5e6b3ac9beebda9e6c1a2b85.md) | 79 | `declaration-track:5e6b3ac9beebda9e6c1a2b85495c8864f2a92412ce791f4ff0103e6e1d7ee564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
