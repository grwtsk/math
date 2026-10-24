# Verification target: GRWTSK.Algebra.LinearAlgebra.BlockSchur.Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32dc3c712e2d463e3fc4a9c3a7a741c00388b65c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32dc3c712e2d463e3fc4a9c3a7a741c00388b65c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ScalarSchur` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/provenanceinclusion--e30e0b2af8b93b410a174132.md) | 29 | `declaration-track:e30e0b2af8b93b410a174132f6161c7e8b4a3a9d3d38d45dfccc1068cd098d65` |
| 2 | `def` | [autonomousInclusion](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/autonomousinclusion--8b1368d34d8afad2cce05b1f.md) | 37 | `declaration-track:8b1368d34d8afad2cce05b1f0bc4e41fbf751f1422d17a6b3ec3f6d5251b679a` |
| 3 | `theorem` | [provenanceInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/provenanceinclusion-apply--e55c12a3f0e3a71b0721c19f.md) | 45 | `result-track:e55c12a3f0e3a71b0721c19f541e01fb78aadf6d11d662cfddd9d9a0474a5d33` |
| 4 | `theorem` | [autonomousInclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/autonomousinclusion-apply--992308812435e6305862f158.md) | 50 | `result-track:992308812435e6305862f158cea3fe0c89e90a53c67b367eeb358fd4fa1cd706` |
| 5 | `structure` | [BlockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/blockschursolver--dd35fb9d0bb94c2120bc4ab5.md) | 58 | `declaration-track:dd35fb9d0bb94c2120bc4ab5731ec41cf029c9f781038d7314516611359605b4` |
| 6 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/project--2923de2e9970190939e7c036.md) | 70 | `declaration-track:2923de2e9970190939e7c036ce55166ebb330c300c82d51be2d5fefe3507b8f3` |
| 7 | `theorem` | [project_apply](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/project-apply--bdf78505b41647864b389aa7.md) | 78 | `result-track:bdf78505b41647864b389aa7382db7ce3739ba9aafd43eeb48389ba06792ae15` |
| 8 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/project-idempotent--1deca366ccb90e32833ed2bf.md) | 83 | `result-track:1deca366ccb90e32833ed2bf3aca9776a9dd5acebce930d1affb5249a1cb659d` |
| 9 | `theorem` | [project_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/project-orthogonal--f9fd19ab48f8f688e1d312e5.md) | 88 | `result-track:f9fd19ab48f8f688e1d312e5cd2f32df68dcaa67ab5cdde11448be8e491d11eb` |
| 10 | `def` | [projector](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/projector--be045b965a8a9814163cda8b.md) | 94 | `declaration-track:be045b965a8a9814163cda8b4f4da6096645118d240a17d2bb2f6e273a4f6292` |
| 11 | `theorem` | [project_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/project-autonomous--6d89147f5fbb55db3a44de79.md) | 100 | `result-track:6d89147f5fbb55db3a44de792b6a7ab74fbfe45c280119e2a13966bfdbf841c5` |
| 12 | `theorem` | [residual_autonomous](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/residual-autonomous--973b4a970370beedfbac46f4.md) | 105 | `result-track:973b4a970370beedfbac46f41a7e6575b79308e6e00bf3f534764b5e26953725` |
| 13 | `def` | [schurForm](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/schurform--15b87ab05292988c20de8aae.md) | 111 | `declaration-track:15b87ab05292988c20de8aae7d651c5f6c3979404c35c283690bbb11aa1b3243` |
| 14 | `theorem` | [schurForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/schurform-nonnegative--35a8edb161667daee0bc1d5b.md) | 115 | `result-track:35a8edb161667daee0bc1d5baf794e836f26262d215338b34d67e8e955cf0d15` |
| 15 | `theorem` | [schurForm_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/schurform-eq-sub--d3beeb40200edfa2eb11c08f.md) | 121 | `result-track:d3beeb40200edfa2eb11c08fd02c4cada0effd943bab8a074557fdd8b8f556a5` |
| 16 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/schur-diagonal-nonnegative--2b933133731cf7a390eb7261.md) | 134 | `result-track:2b933133731cf7a390eb7261744f8e285c016eced40be0ba626da21e920146ee` |
| 17 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/BlockSchur/Variant5843f9cc84fa8e0df5ab222c7f39bd5b9c65bd496fcd4e5a9a011ac9201c4952.lean/declarations/autonomous-energy-decomposition--483b41131dbd97b05a654c2a.md) | 144 | `result-track:483b41131dbd97b05a654c2adbfa6bc57fa8dfdeb14fba9c1fc944dde6077159` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
