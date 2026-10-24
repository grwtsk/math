# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multivariate.Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cff0c97596472f824e2cb9be39c8615c660d267",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cff0c97596472f824e2cb9be39c8615c660d267`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeVec` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/mvfunctor--3d401e2582ffdfb69f9df847.md) | 28 | `declaration-track:3d401e2582ffdfb69f9df8471827f7360977531ecbe936015c805dc0d02b21fd` |
| 2 | `def` | [LiftP](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftp--f3d1b7e38f948b8c1788eebc.md) | 42 | `declaration-track:f3d1b7e38f948b8c1788eebcd69d1cc47a580e476c09f9512f16bf5615298dfc` |
| 3 | `def` | [LiftR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftr--a769d5e17f6dff5415e2eb55.md) | 46 | `declaration-track:a769d5e17f6dff5415e2eb552601d7dc8b917602a509df6b6ac5e1140da76681` |
| 4 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/supp--596b75d55aff3ceb2c43e9f1.md) | 53 | `declaration-track:596b75d55aff3ceb2c43e9f1f6e064cfca47b9caa3f73b7eafa2378ef3fa6256` |
| 5 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/of-mem-supp--0a391d220fb38ed0ef542355.md) | 56 | `result-track:0a391d220fb38ed0ef542355cec12883a23316516c1ec58ac08660e7d4fef6e9` |
| 6 | `class` | [LawfulMvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/lawfulmvfunctor--dc1baa3049aaa80f11756a5b.md) | 64 | `declaration-track:dc1baa3049aaa80f11756a5b17d1eae50f71415a161c0d4891a00a251c0f6426` |
| 7 | `def` | [LiftP'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftp--00aaf346f74ad953554db48d.md) | 84 | `declaration-track:00aaf346f74ad953554db48d8a80e3fb41a551455db6e1a9cf2a471aedc5ee5f` |
| 8 | `def` | [LiftR'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftr--afd9f9db7326e206eb941dd2.md) | 89 | `declaration-track:afd9f9db7326e206eb941dd26561b958c0f772b72481baa8ec4bd8101d91bbca` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/id-map--e1c2388fae7a5dbd67117f16.md) | 95 | `result-track:e1c2388fae7a5dbd67117f16243316c209360c34411af974c5976cf9913e062b` |
| 10 | `theorem` | [id_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/id-map--17196afb3f8c3ea03dfc64e2.md) | 99 | `result-track:17196afb3f8c3ea03dfc64e20c030ae4e5b1af820d2c660bf50028d78beae42b` |
| 11 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/map-map--6ecf8bc4cf4084a1095a2a06.md) | 102 | `result-track:6ecf8bc4cf4084a1095a2a065eb1e1ec3de32de100f78c95d4415759162dd305` |
| 12 | `theorem` | [exists_iff_exists_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/exists-iff-exists-of-mono--4443f4c7fef3f6e9ab6ee820.md) | 108 | `result-track:4443f4c7fef3f6e9ab6ee820e9fc7ea88d8b3cab9a42081a0725174a4ad64d2c` |
| 13 | `theorem` | [LiftP_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftp-def--e9de6e91d3362112242f5a52.md) | 120 | `result-track:e9de6e91d3362112242f5a5214a729372810d8323fe789b587456a2c6784bbe9` |
| 14 | `theorem` | [LiftR_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftr-def--bc2b861adb7ef3b2576953dd.md) | 123 | `result-track:bc2b861adb7ef3b2576953ddb0634c51528f667d52eefc531af8cf69f6b875f9` |
| 15 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/f--f990f43e3cd5621e275b0af3.md) | 151 | `declaration-track:f990f43e3cd5621e275b0af32136bbca26ed276efea5383ffa97d8a81d278cbe` |
| 16 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/g--373ca89c57342f545c2a38be.md) | 159 | `declaration-track:373ca89c57342f545c2a38be4f62d17c23bc522a4407c014eee1a0c076004dfa` |
| 17 | `theorem` | [LiftP_PredLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftp-predlast-iff--05ef481e5414c860fa1f3e8c.md) | 167 | `result-track:05ef481e5414c860fa1f3e8c0606e5b566353de214470ece45814b8c05d68df8` |
| 18 | `def` | [f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/f--aa63e6720958b3121f43af68.md) | 184 | `declaration-track:aa63e6720958b3121f43af6816a40138cb5fb4d639f4f7330357c3710fe78a4f` |
| 19 | `def` | [g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/g--fc67541929c70c067d41895e.md) | 193 | `declaration-track:fc67541929c70c067d41895ec2a98366d7bad246a6393cda0a2c9200e18a5f8c` |
| 20 | `theorem` | [LiftR_RelLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/liftr-rellast-iff--19472c65ddb26c05fee8fcb2.md) | 202 | `result-track:19472c65ddb26c05fee8fcb27c11bd37b3829a6191cc643c5664f64c295e8e73` |
| 21 | `def` | [ofEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/declarations/ofequiv--ea73d2fff7529ce8cf69c4ad.md) | 221 | `declaration-track:ea73d2fff7529ce8cf69c4ad5fef6b8a47ecefc1a6e0fab7de95d64240af4c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
