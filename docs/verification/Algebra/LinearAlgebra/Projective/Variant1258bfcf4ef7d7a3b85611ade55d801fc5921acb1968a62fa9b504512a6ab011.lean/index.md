# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c421b16758cf7c32029996b8915c0f6326baf02c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c421b16758cf7c32029996b8915c0f6326baf02c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FinsuppVectorSpace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsProjective.iff_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean/declarations/isprojective-iff-projective--b535377283ad1d7c7b11be2e.md) | 33 | `result-track:b535377283ad1d7c7b11be2ef0c3a9a7a162e06d75fdc9b52b2e53df14a01abd` |
| 2 | `theorem` | [projective_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean/declarations/projective-of-free--a305d8f8541b8452c110176a.md) | 52 | `result-track:a305d8f8541b8452c110176a51b5e2166619d0e43882d68e7df06242d6837ea0` |
| 3 | `instance` | [moduleCat_enoughProjectives](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variant1258bfcf4ef7d7a3b85611ade55d801fc5921acb1968a62fa9b504512a6ab011.lean/declarations/modulecat-enoughprojectives--d22f379d5957f17e36508b89.md) | 60 | `declaration-track:d22f379d5957f17e36508b89ccace6df3fe6981d43206d0f503bb56e736eebf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
