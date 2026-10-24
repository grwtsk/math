# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ddba5f1bb4721f502a741e746161c6c97e53989",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ddba5f1bb4721f502a741e746161c6c97e53989`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/coneofsection--f8b76164a9384630e0400269.md) | 34 | `declaration-track:f8b76164a9384630e04002698ceefc44b135b9aa224d2e5e2b9e819955037155` |
| 2 | `def` | [sectionOfCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/sectionofcone--1dfba9cdc8f6ca84e70d7ad3.md) | 42 | `declaration-track:1dfba9cdc8f6ca84e70d7ad3b2407a662e0dfdf9b67a564e69da2efa17dd5b23` |
| 3 | `theorem` | [isLimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/islimit-iff--a2d2225f190b8f2a7d41d0b8.md) | 45 | `result-track:a2d2225f190b8f2a7d41d0b80f782d4ef5cfcd25b6e03c62e27313411cf166d9` |
| 4 | `theorem` | [isLimit_iff_bijective_sectionOfCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/islimit-iff-bijective-sectionofcone--cce3a114a6c4ac5c9f97aefb.md) | 55 | `result-track:cce3a114a6c4ac5c9f97aefb648778ac52385e3d3d14f2f612fd3d4b3973ddd6` |
| 5 | `def` | [isLimitEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/islimitequivsections--93d9451e5b3e0c274ad2bb11.md) | 62 | `declaration-track:93d9451e5b3e0c274ad2bb11865fa36e34287d24722045b71ea9a2f0515d6ea9` |
| 6 | `theorem` | [isLimitEquivSections_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/islimitequivsections-apply--b15d700cb9ee1725840bf9ec.md) | 70 | `result-track:b15d700cb9ee1725840bf9ec4b6c8dce0baf00d123597a00501277716f792e49` |
| 7 | `theorem` | [isLimitEquivSections_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/islimitequivsections-symm-apply--ca5a57a452e0327d563e38c7.md) | 74 | `result-track:ca5a57a452e0327d563e38c76271fa3d10dce2948984083dfdaa072bceecc866` |
| 8 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitcone--13a9bf6adcf9199e40f4d40e.md) | 110 | `declaration-track:13a9bf6adcf9199e40f4d40e3ad7645aceecd04903dca1c02eabc37959bed902` |
| 9 | `lemma` | [limitCone_pt_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitcone-pt-ext--2d2cd1dbdec66ada263cad35.md) | 119 | `result-track:2d2cd1dbdec66ada263cad35f088fcfe774ac9fc97a563ac18af0c4acec45a33` |
| 10 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitconeislimit--96bf15de1b23b2a180769ede.md) | 125 | `declaration-track:96bf15de1b23b2a180769ede3c6435c74faf05ab52abe50ce070c26ba9eb2d76` |
| 11 | `theorem` | [hasLimit_iff_small_sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/haslimit-iff-small-sections--62baf3dd6316aa01c9547c01.md) | 137 | `result-track:62baf3dd6316aa01c9547c0108d968dd5d3fba9693eec3bd376007e6bdf56ce1` |
| 12 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitcone--7f0b3db53f1d926cb7fb6286.md) | 150 | `declaration-track:7f0b3db53f1d926cb7fb62863164dbce76d6f0054a7ae086e5728d1c3b669f33` |
| 13 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitconeislimit--425f2894ee8eaadee0aaa10d.md) | 160 | `declaration-track:425f2894ee8eaadee0aaa10de281a17ebc3649c51af2c2fdda491337f732ef9a` |
| 14 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/haslimit--843f7d798913381faa33a879.md) | 183 | `declaration-track:843f7d798913381faa33a8796c245687d5392f3cbb7388c62f2e32155d39ed8d` |
| 15 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/haslimitsofshape--21dce3e6cfc75f7ae1f19584.md) | 186 | `declaration-track:21dce3e6cfc75f7ae1f19584fb27d30e8aa770708c20c0bab77b5a8d9e6548fe` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/instance--f68399e9bd1dbd089c9e542d.md) | 193 | `declaration-track:f68399e9bd1dbd089c9e542d67463a1229c27f2b6957fb9d3bc55d450f284770` |
| 17 | `def` | [limitEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitequivsections--4339ffec92beec9d896b946a.md) | 201 | `declaration-track:4339ffec92beec9d896b946a034fed5fbd53033f7ef46773a483aa38e7db18ff` |
| 18 | `theorem` | [limitEquivSections_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitequivsections-apply--2ef8452765778f644973be8f.md) | 205 | `result-track:2ef8452765778f644973be8f5ae2720bf33c0c9e5977b8e352cea5c0b9834a25` |
| 19 | `theorem` | [limitEquivSections_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limitequivsections-symm-apply--4d7d23994161fab666264eb8.md) | 210 | `result-track:4d7d23994161fab666264eb815c95010bbf00b358fca55e8ecb2a5fea496123e` |
| 20 | `def` | [limNatIsoSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limnatisosectionsfunctor--06bca77b6ebb9506f93c36f3.md) | 215 | `declaration-track:06bca77b6ebb9506f93c36f3a7ae5eb26a9e17c2e0fb362a3e4fa71a1b67b739` |
| 21 | `def` | [Limit.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-mk--3063c97b621557de1a31dcaa.md) | 224 | `declaration-track:3063c97b621557de1a31dcaaf43b4309583503f9032911022158e40077992389` |
| 22 | `theorem` | [Limit.π_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-mk--0a879d04ee8a78dc96384378.md) | 229 | `result-track:0a879d04ee8a78dc9638437899b675c5c746453cd99e1e80700a8f8a0a9495d3` |
| 23 | `theorem` | [limit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-ext--8ad5f74d7cdc55d0d7c10f93.md) | 236 | `result-track:8ad5f74d7cdc55d0d7c10f93f04465f1d4407ca3da236a95201ba6da64fd5eec` |
| 24 | `theorem` | [limit_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-ext--ec54c68c7ddb3d18129d8197.md) | 242 | `result-track:ec54c68c7ddb3d18129d819752ddd97f7e68306f87f5c1f88c910460b90ab937` |
| 25 | `theorem` | [limit_ext_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-ext-iff--f68b8180815ec683c4f4d363.md) | 246 | `result-track:f68b8180815ec683c4f4d3638ca6709864e113650bfb5ade7b9791683a40055c` |
| 26 | `theorem` | [Limit.w_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-w-apply--78e71d1137c4677915948f9e.md) | 256 | `result-track:78e71d1137c4677915948f9e73f32e0c623a482e431057c9b682ad51a62f9cdf` |
| 27 | `theorem` | [Limit.lift_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-lift-apply--fd2ce73fa26dd23096657d88.md) | 261 | `result-track:fd2ce73fa26dd23096657d8838e7152969f7abc7d3e79504a1615b75f9efa840` |
| 28 | `theorem` | [Limit.map_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-map-apply--207f678d6baaeed3011b0109.md) | 266 | `result-track:207f678d6baaeed3011b01094b8fb8400b42fd48831750c4fbe0c7842fbb6baa` |
| 29 | `theorem` | [Limit.w_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-w-apply--4f2de7787f439214261c3066.md) | 271 | `result-track:4f2de7787f439214261c306628f146553c15357b4cbdd4624cc3c8c4d2b4a268` |
| 30 | `theorem` | [Limit.lift_π_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-lift-apply--3394c300235517ea83194b72.md) | 276 | `result-track:3394c300235517ea83194b72fd50a58f59d7d8e3015bb504b6550a0e51251ed5` |
| 31 | `theorem` | [Limit.map_π_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/limit-map-apply--51a513ce639ddb23242b48a3.md) | 281 | `result-track:51a513ce639ddb23242b48a36c8720477a3c729c83e2f0c8a5761dee80a9b1d5` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/example--0e99eb84ae59685257f2a146.md) | 292 | `declaration-track:0e99eb84ae59685257f2a146144974d06426f3b972a204ee3f19de33356631e0` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/example--27d8f6f204c7de74a2c5191b.md) | 293 | `declaration-track:27d8f6f204c7de74a2c5191bf18300d153dc03bfe3a5e59d67d399d7c9873273` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/example--4d158df836bfa6cf28c94ed7.md) | 295 | `declaration-track:4d158df836bfa6cf28c94ed7cf3f5f372a40c75377f497a0adca64742869c651` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/example--dbfc88adeb0f95df6c72c0f4.md) | 296 | `declaration-track:dbfc88adeb0f95df6c72c0f45d609d4b20e96a5d154389242aa6601d387bf959` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/declarations/example--55643a196d300e971a9a9c4d.md) | 298 | `declaration-track:55643a196d300e971a9a9c4dbe88bfa55c2aba604ed48567b256486284d5ff43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
