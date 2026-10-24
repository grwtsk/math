# Verification target: GRWTSK.Algebra.FunctionField.Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e82fdd1d362400a56ab4797f1c759a84038993",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/index.md) · [Full source](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e82fdd1d362400a56ab4797f1c759a84038993`.

Source path: `GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ValuedField` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunctionField](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/functionfield--df5b19a625c706c8948a063d.md) | 64 | `declaration-track:df5b19a625c706c8948a063dbfbf31780b49d6c3084c022c5c457bb3ec13b877` |
| 2 | `theorem` | [functionField_iff](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/functionfield-iff--ca00ce3bb38ee80756024cd4.md) | 70 | `result-track:ca00ce3bb38ee80756024cd4b811aa704ac600f83ef18b67e256dce5353347bc` |
| 3 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/algebramap-injective--04401b5aa8a0acb616b18aff.md) | 91 | `result-track:04401b5aa8a0acb616b18aff7a098f48476c429b6bdf5b8b7408a9dfcdc1eb11` |
| 4 | `def` | [ringOfIntegers](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/ringofintegers--b20524d6d05a3dd84e938100.md) | 105 | `declaration-track:b20524d6d05a3dd84e938100801950952d37ef8216f4f2e11ec84b35cdcbcf77` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--9c6681d6e351ef9bae9a7b85.md) | 113 | `declaration-track:9c6681d6e351ef9bae9a7b857c845095620740055149724cbdc1726f93e33fd3` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--2fa39d7bd0d4f45280dc0268.md) | 116 | `declaration-track:2fa39d7bd0d4f45280dc0268316a83cb6a3ceb894ada4c8cfdf57301a3308427` |
| 7 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/algebramap-injective--35029254da5bed1ff5969949.md) | 121 | `result-track:35029254da5bed1ff59699498b0fdae1bec1b6f219c35f96c82ebcc34a074698` |
| 8 | `theorem` | [not_isField](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/not-isfield--964a106d567af2d40599466d.md) | 132 | `result-track:964a106d567af2d40599466d2cadde0bee9b11690c32e304c8ac138bf9d548b1` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--a5b5f3ce853ab714c9bd370a.md) | 140 | `declaration-track:a5b5f3ce853ab714c9bd370a9b515c50e0f8d838e3ee9e104e430d31cec9c8c6` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--7ef6798918d832812859b3d1.md) | 143 | `declaration-track:7ef6798918d832812859b3d1b03bccd2241388b98b09fc859fef286b6d3f99ac` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--6f7e2d07b6d9f228f1355634.md) | 146 | `declaration-track:6f7e2d07b6d9f228f1355634af3fcd5d4554d2397d8a74af32f77f0fff8a11a3` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--2d73f4ab992c697c430eb05d.md) | 149 | `declaration-track:2d73f4ab992c697c430eb05d68665a6b92ff99d77c1222c6b56d2768ab702d8b` |
| 13 | `def` | [inftyValuationDef](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluationdef--40c6747268f02565f6af5ac9.md) | 164 | `declaration-track:40c6747268f02565f6af5ac973cc4281a4497aa3425e40a3f9fb9fdb9f9ac711` |
| 14 | `theorem` | [InftyValuation.map_zero'](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-map-zero--0f4205588d125ea0f20b3fab.md) | 168 | `result-track:0f4205588d125ea0f20b3fab09fca9d415fd663090fe9714419082f059199421` |
| 15 | `theorem` | [InftyValuation.map_one'](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-map-one--1ad0975b639f350a0de1608f.md) | 172 | `result-track:1ad0975b639f350a0de1608feb4398ba56918c52ca0422243e8bc949c30198e0` |
| 16 | `theorem` | [InftyValuation.map_mul'](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-map-mul--9142c759cba2030d836410ee.md) | 176 | `result-track:9142c759cba2030d836410ee95811400d27f5aba8f531605a2460e8177c805b2` |
| 17 | `theorem` | [InftyValuation.map_add_le_max'](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-map-add-le-max--5ed2b95bfdd4b654f86dba79.md) | 187 | `result-track:5ed2b95bfdd4b654f86dba79ea4a12aed07cca2b5fb3b9581f9e57b01d898007` |
| 18 | `theorem` | [inftyValuation_of_nonzero](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-of-nonzero--8602437204d714fae855123f.md) | 207 | `result-track:8602437204d714fae855123f6fe6234b52808bbeffdb7650f3953a05b09614de` |
| 19 | `def` | [inftyValuation](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation--f94f5ea9f71dd576880eeb65.md) | 213 | `declaration-track:f94f5ea9f71dd576880eeb65c2a45ed15fdaef2ab367749939db30a482fac964` |
| 20 | `theorem` | [inftyValuation_apply](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-apply--77d5e0188ae2e4df96465be6.md) | 222 | `result-track:77d5e0188ae2e4df96465be61f9a41bcc33bd6c99c45ee9698ae0befe53a06db` |
| 21 | `theorem` | [inftyValuation.C](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-c--71f2560f5ca44a2ad8790ce4.md) | 227 | `result-track:71f2560f5ca44a2ad8790ce427738f29e6c27e4c8c0d4850e0d7c46ffa45d817` |
| 22 | `theorem` | [inftyValuation.X](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-x--e4e8946ed9ab2f96f0e6154e.md) | 235 | `result-track:e4e8946ed9ab2f96f0e6154e9f16d2ea6c07179e8c418fad5148943e318f699d` |
| 23 | `theorem` | [inftyValuation.polynomial](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluation-polynomial--f1c2c28fc2290ab3b8da030b.md) | 241 | `result-track:f1c2c28fc2290ab3b8da030b8faefb687b56b855c107493d5e27cd47daa4aea9` |
| 24 | `def` | [inftyValuedFqt](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluedfqt--d299f159c518e4490cd799e2.md) | 250 | `declaration-track:d299f159c518e4490cd799e27420fb77d0dc11a14b99513f88d0ecd50cdb2656` |
| 25 | `theorem` | [inftyValuedFqt.def](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/inftyvaluedfqt-def--dc213796b7d3009fd525301b.md) | 255 | `result-track:dc213796b7d3009fd525301b566addcafdbf5912744c5121d34bc30fa632d893` |
| 26 | `def` | [FqtInfty](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/fqtinfty--1bbb46c097e0ab222d1b7243.md) | 262 | `declaration-track:1bbb46c097e0ab222d1b724341c4aaf75adb16e44806fd7655c462c82e7f883d` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--1eb267e7ac5ac95f39dd5409.md) | 267 | `declaration-track:1eb267e7ac5ac95f39dd5409565efc94fb421f18c494e947468108dfceb8adb9` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/instance--0baacbbf1505a449755cd7ad.md) | 271 | `declaration-track:0baacbbf1505a449755cd7adbdace5a72a3d3a339b1c460e2bd59cb269a95b7b` |
| 29 | `instance` | [valuedFqtInfty](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/valuedfqtinfty--1c13aed52ecc9121e955d88d.md) | 275 | `declaration-track:1c13aed52ecc9121e955d88d66e230774e1d3f9f67fa2e4a302764e587a171b6` |
| 30 | `theorem` | [valuedFqtInfty.def](../../../../mathematics/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/declarations/valuedfqtinfty-def--4da3cef07f5eeda1fddb4136.md) | 280 | `result-track:4da3cef07f5eeda1fddb41361c1347dfbb422322a0ec13cdf715a99ee137895a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
