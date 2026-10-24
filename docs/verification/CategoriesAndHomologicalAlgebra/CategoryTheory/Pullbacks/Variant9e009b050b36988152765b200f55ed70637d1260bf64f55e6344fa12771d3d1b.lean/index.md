# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c4746ab95bd309ed3fe74ec2c6587a4f4a4a6b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c4746ab95bd309ed3fe74ec2c6587a4f4a4a6b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/declarations/haslimit-cospan-of-haslimit-pair-of-haslimit-parallelpair--2872d6d9e62595b664788ed7.md) | 26 | `result-track:2872d6d9e62595b664788ed7bf5e08415d22da9d87992c7f49458b0004329a6b` |
| 2 | `theorem` | [hasPullbacks_of_hasBinaryProducts_of_hasEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/declarations/haspullbacks-of-hasbinaryproducts-of-hasequalizers--f03688e3c240f33b6351660e.md) | 54 | `result-track:f03688e3c240f33b6351660e55f216d74b15b20fb4cbb99febcc2bffcd9547d9` |
| 3 | `theorem` | [hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/declarations/hascolimit-span-of-hascolimit-pair-of-hascolimit-parallelpair--e9d300178afdcfdb0d00cbfd.md) | 62 | `result-track:e9d300178afdcfdb0d00cbfde734df280dc7d7f9b735edc2e3e40ac330f2d254` |
| 4 | `theorem` | [hasPushouts_of_hasBinaryCoproducts_of_hasCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant9e009b050b36988152765b200f55ed70637d1260bf64f55e6344fa12771d3d1b.lean/declarations/haspushouts-of-hasbinarycoproducts-of-hascoequalizers--f10f4d20dc2f51effd5ad67c.md) | 90 | `result-track:f10f4d20dc2f51effd5ad67c1527563d2589d3b130db6b35530ac8f1844a6231` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
