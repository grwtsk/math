# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59ee7f399ea4f40573d848d06a5deeb06b6e2c88",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59ee7f399ea4f40573d848d06a5deeb06b6e2c88`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.TrivSqZeroExt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/rel--0f979d8554f78b369be63a0a.md) | 60 | `declaration-track:0f979d8554f78b369be63a0a4d0c650502e8f66c72df16c2e05dd90982482dfe` |
| 2 | `def` | [TensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/tensoralgebra--3c2f5e965c08838042c3fb56.md) | 71 | `declaration-track:3c2f5e965c08838042c3fb56163f09457eb1d72839cecae53b30da74a53636f3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instance--7b7083709879330ebee74b4b.md) | 76 | `declaration-track:7b7083709879330ebee74b4b1ddda33a470d6844440b92b743f629be5524d5ad` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instance--47a8c918f6ad584a3aee9572.md) | 77 | `declaration-track:47a8c918f6ad584a3aee95728692e9c1f6409e0d499fa8097ec2f931d8cac87f` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instalgebra--a2e6501dd21dafb1095c4dd2.md) | 81 | `declaration-track:a2e6501dd21dafb1095c4dd2ad695667f64f155c424d8923ea6990e3f68c455f` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/example--2fee8cedf8668ffd467a0d12.md) | 88 | `declaration-track:2fee8cedf8668ffd467a0d1232a72c0ee3794c3fbd0f84dfa71cb0f574356b78` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instance--149ee06048ea7bde943f8040.md) | 90 | `declaration-track:149ee06048ea7bde943f80400e946fde09175b7b68d1c9bb84825fb3769943be` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instance--d9552977b3267988fb891580.md) | 96 | `declaration-track:d9552977b3267988fb8915807bb583e29d2097f157fe6cdd57c5c63c2fb706eb` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/instance--1d297242ed551c62c01bf7b8.md) | 104 | `declaration-track:1d297242ed551c62c01bf7b82865ea17eb3c2c98786811d5f51ade0a46f0c9a1` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/example--eaa1a562469c5c29ae3264f8.md) | 109 | `declaration-track:eaa1a562469c5c29ae3264f89c35dfe14243afe7dce26b892c85067765c32069` |
| 11 | `theorem` | [ringQuot_mkAlgHom_freeAlgebra_ι_eq_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/ringquot-mkalghom-freealgebra-eq--ef87e0af856dc31f166eda7f.md) | 125 | `result-track:ef87e0af856dc31f166eda7f8a928d786dc0076cb5e50bd76e5881b497be0a31` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/lift--2fbec2ccf6b56c7f95d994ec.md) | 136 | `declaration-track:2fbec2ccf6b56c7f95d994ecbda5ee30b1236af597583cf166991bdabdecd4d8` |
| 13 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/comp-lift--b4c4a4d52f4081593b7d5d52.md) | 160 | `result-track:b4c4a4d52f4081593b7d5d52a646e809f0a49b4bf5322909d160caf88a7b8884` |
| 14 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/lift-apply--2a47ade3e168d95e5198948c.md) | 166 | `result-track:2a47ade3e168d95e5198948c2c13d2fc09a0d593928586072a7c228ec1cf1c6f` |
| 15 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/lift-unique--727dfd004644882f02f1e4b9.md) | 172 | `result-track:727dfd004644882f02f1e4b9d85ed09c833392abb4d13f1d312e22a190c05fe5` |
| 16 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/lift-comp--c42623a221872553b007f453.md) | 182 | `result-track:c42623a221872553b007f453a284fa2555c44990fe950dd962f6aebdfff1518e` |
| 17 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/hom-ext--278499f986e41fdb4532d9ec.md) | 190 | `result-track:278499f986e41fdb4532d9ec341c823947d9b6c55e067d2cc639c65b33a43a53` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/induction--c4c7c70b8698327f788070fa.md) | 201 | `result-track:c4c7c70b8698327f788070fa4ac94723c7e83f0535bd724b70e46d1c642dc24d` |
| 19 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/algebramapinv--524ae95f05a90bb9c967e9ac.md) | 225 | `declaration-track:524ae95f05a90bb9c967e9acb81f48e0ee7214a6b694632ef3e4ee8dc53d6887` |
| 20 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/algebramap-leftinverse--06cd02688a442f24742282b5.md) | 231 | `result-track:06cd02688a442f24742282b51183a56b7947b1b61e64d811769e3cb00e4e76e5` |
| 21 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/algebramap-inj--50f465f091a36fd704400485.md) | 237 | `result-track:50f465f091a36fd704400485db879ce4e537311bcc49c7b7a16190a2e17f4736` |
| 22 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/algebramap-eq-zero-iff--7d037321193b9dad163f88dc.md) | 243 | `result-track:7d037321193b9dad163f88dcff438d0b48c1a1500b97fd63809d73fbe714fc2a` |
| 23 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/algebramap-eq-one-iff--4575e19f26887851a5fca890.md) | 248 | `result-track:4575e19f26887851a5fca89042c51f33ba759f0e9c4166be8e6347d7e4725576` |
| 24 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/totrivsqzeroext--d1e4e49f2410382584918e7f.md) | 256 | `declaration-track:d1e4e49f2410382584918e7f6955b018e747a9a00f1bf675863b72fcc1d3c2ce` |
| 25 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/totrivsqzeroext--8c3750d1df82843726bc5f75.md) | 262 | `result-track:8c3750d1df82843726bc5f75e96751c4ac94b5f336903cbc58469b4536333118` |
| 26 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/inv--e33381fe94a9f369ba4cdc36.md) | 271 | `declaration-track:e33381fe94a9f369ba4cdc3628faeef5d4db27dd4a10e2864b88bbc5619982ad` |
| 27 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/leftinverse--9ea7f2f571720c2bb8b6c38b.md) | 277 | `result-track:9ea7f2f571720c2bb8b6c38b6c892f33b8e48e29d1bd86f0705d0f7294958383` |
| 28 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/inj--3022102073ea7cc6dc819a2b.md) | 285 | `result-track:3022102073ea7cc6dc819a2b04c429f0f966c6c9419f4b4e3528f817ffe3908d` |
| 29 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/eq-zero-iff--01108edd002087c2e7701dca.md) | 290 | `result-track:01108edd002087c2e7701dcabfae5c6e1c8deda29747767c4a672a4552696a5b` |
| 30 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/eq-algebramap-iff--6e8bab234538a41d79a72e96.md) | 296 | `result-track:6e8bab234538a41d79a72e9679e6c02506d1cad7b13b5d978f5cf1fe6b32492a` |
| 31 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/ne-one--ff53b0a7940dbdbc08fed1c9.md) | 309 | `result-track:ff53b0a7940dbdbc08fed1c9ca8165d6f518d5c02da7a37b6c9fb15f87738587` |
| 32 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/range-disjoint-one--00a50add76d7ff0aa3259773.md) | 315 | `result-track:00a50add76d7ff0aa325977397b0d1e9be21e6270c30a133e4d63caddaf4eef6` |
| 33 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/tprod--e0adffd06c2e1abeec87cbc7.md) | 329 | `declaration-track:e0adffd06c2e1abeec87cbc71beec0b7f481ebc99536b74d3c8322b3eb8ad9e5` |
| 34 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/tprod-apply--00fa4ea5697f436c16579c6b.md) | 334 | `result-track:00fa4ea5697f436c16579c6b06eb98faf430a71974bc2cfb5e777532e1f45cdd` |
| 35 | `def` | [toTensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/totensor--484e9f27e915b648200e2cef.md) | 348 | `declaration-track:484e9f27e915b648200e2cef9dfcbdc767a4e2eb892288782fa656e28c3ae836` |
| 36 | `theorem` | [toTensor_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfcba574028aaede1ed84f433fc391143c9b9b6d3f2e00443fae4eb513f1cce0b.lean/declarations/totensor--9c1eac4183dd2de0a7bd72e9.md) | 353 | `result-track:9c1eac4183dd2de0a7bd72e973c0ec3e77588d4f1f4bde51ba1184a1238da3d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
