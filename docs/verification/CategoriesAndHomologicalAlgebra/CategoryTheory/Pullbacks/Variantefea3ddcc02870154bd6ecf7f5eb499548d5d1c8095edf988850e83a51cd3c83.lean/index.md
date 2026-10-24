# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a8a0dd822a10e5d57a2ad540a4d15f95efaefe7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a8a0dd822a10e5d57a2ad540a4d15f95efaefe7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLimit_cospan_of_hasLimit_pair_of_hasLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/declarations/haslimit-cospan-of-haslimit-pair-of-haslimit-parallelpair--2f45dc5ea74ba1540f339e1c.md) | 34 | `result-track:2f45dc5ea74ba1540f339e1c3d44f65f92c30b7c1cad29dc72a180f5d0a4b9ff` |
| 2 | `theorem` | [hasPullbacks_of_hasBinaryProducts_of_hasEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/declarations/haspullbacks-of-hasbinaryproducts-of-hasequalizers--ade79b05d9df2bd34a0fecd8.md) | 62 | `result-track:ade79b05d9df2bd34a0fecd885422c695cf44eb06b184e6b27ab2195237b1c5a` |
| 3 | `theorem` | [hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/declarations/hascolimit-span-of-hascolimit-pair-of-hascolimit-parallelpair--1484629b582bb49c76549675.md) | 70 | `result-track:1484629b582bb49c765496752979bd93cbd3ee5bb9c215bdb0e926a45eee8567` |
| 4 | `theorem` | [hasPushouts_of_hasBinaryCoproducts_of_hasCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantefea3ddcc02870154bd6ecf7f5eb499548d5d1c8095edf988850e83a51cd3c83.lean/declarations/haspushouts-of-hasbinarycoproducts-of-hascoequalizers--a21076f5c8ee84ab686b546a.md) | 98 | `result-track:a21076f5c8ee84ab686b546a0034e7ecf02d7638fa32621b1d763625bfedcc35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
