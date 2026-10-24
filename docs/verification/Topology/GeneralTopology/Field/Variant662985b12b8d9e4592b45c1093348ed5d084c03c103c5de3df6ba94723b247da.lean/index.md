# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a25f551574790032b7b27f17943536e680b87c6d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a25f551574790032b7b27f17943536e680b87c6d`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.tendsto_cocompact_mul_left₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/filter-tendsto-cocompact-mul-left--0db7ba50d1754e92e251c2d4.md) | 33 | `result-track:0db7ba50d1754e92e251c2d463085b772c1131a7fbe8187e7898b965ab1585ec` |
| 2 | `theorem` | [Filter.tendsto_cocompact_mul_right₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/filter-tendsto-cocompact-mul-right--3162ee24cdfced81180929b8.md) | 39 | `result-track:3162ee24cdfced81180929b80a03f17705092108104e9f743fa434c3e5733891` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/instance--8b0d7c04b2a9c489de72459d.md) | 44 | `declaration-track:8b0d7c04b2a9c489de72459d6a94b79f4a9f2f7e68428854664310fa3cecdaf5` |
| 4 | `class` | [IsTopologicalDivisionRing](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/istopologicaldivisionring--ff4869d40394d0fbfe9f0bd7.md) | 55 | `declaration-track:ff4869d40394d0fbfe9f0bd77333d161821b72ea5659fb9cba31ab2797471489` |
| 5 | `def` | [Subfield.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/subfield-topologicalclosure--9fde11c4d665ab2f3d3553cf.md) | 65 | `declaration-track:9fde11c4d665ab2f3d3553cf0b3de72f2d4924585d53410938571a97f265318c` |
| 6 | `theorem` | [Subfield.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/subfield-le-topologicalclosure--5b8fa4cc80377e169bea048c.md) | 74 | `result-track:5b8fa4cc80377e169bea048c2af40bd2bae4daa59bf2e13c9c6986b1ebdcf4fd` |
| 7 | `theorem` | [Subfield.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/subfield-isclosed-topologicalclosure--4ed01a3db8cb47a1fda12666.md) | 77 | `result-track:4ed01a3db8cb47a1fda126668285413c62352020e6f93530d046489f48eaf376` |
| 8 | `theorem` | [Subfield.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/subfield-topologicalclosure-minimal--b630d65a3d00f4294f4f734c.md) | 81 | `result-track:b630d65a3d00f4294f4f734c3ebd06323c33fda9db904628a32859609e4728fd` |
| 9 | `def` | [affineHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/affinehomeomorph--96ba9101e95cfb906459ba34.md) | 103 | `declaration-track:96ba9101e95cfb906459ba3425f68a220a50736583f60d36a3b99d6c393c1058` |
| 10 | `theorem` | [affineHomeomorph_image_Icc](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/affinehomeomorph-image-icc--916a0ac06a12db1896d3803e.md) | 111 | `result-track:916a0ac06a12db1896d3803eb29d4b2525a31ab726d3363718bfc59b2e959004` |
| 11 | `theorem` | [affineHomeomorph_image_Ico](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/affinehomeomorph-image-ico--474ebe09ad64a376026d177b.md) | 117 | `result-track:474ebe09ad64a376026d177b634ae5039505b3652d35d68ebcb6996bfff2073f` |
| 12 | `theorem` | [affineHomeomorph_image_Ioc](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/affinehomeomorph-image-ioc--c0ce39aa715a281caa7755fe.md) | 123 | `result-track:c0ce39aa715a281caa7755feb30622924ae41ad4bb7a417aad46df2ae36b71a0` |
| 13 | `theorem` | [affineHomeomorph_image_Ioo](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/affinehomeomorph-image-ioo--1490760f2a3ac1f6ccd73afe.md) | 129 | `result-track:1490760f2a3ac1f6ccd73afeacfb3c44fc918164430935886893079d34af6080` |
| 14 | `theorem` | [IsLocalMin.inv](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/islocalmin-inv--9e70afbed05de5689d7e4126.md) | 144 | `result-track:9e70afbed05de5689d7e4126d4ce583e16afde0785d5d563f8070647c4598961` |
| 15 | `theorem` | [IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/ispreconnected-eq-one-or-eq-neg-one-of-sq-eq--8e42363926a441494c025d80.md) | 161 | `result-track:8e42363926a441494c025d80c0c9006b61cd4dd835e31b16ac9a341601f26aba` |
| 16 | `theorem` | [IsPreconnected.eq_or_eq_neg_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/ispreconnected-eq-or-eq-neg-of-sq-eq--c6b35a44ede37d86b3e707a9.md) | 172 | `result-track:c6b35a44ede37d86b3e707a9fc7d0afd46894f407ce6acfd717acacce44ff45c` |
| 17 | `theorem` | [IsPreconnected.eq_of_sq_eq](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/ispreconnected-eq-of-sq-eq--db2668bcdc206753aeb79a48.md) | 184 | `result-track:db2668bcdc206753aeb79a488206d107e496666281e607df203964443aac3b97` |
| 18 | `instance` | [Subfield.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/declarations/subfield-continuoussmul--2a263e9085d9a31bf84d8600.md) | 200 | `declaration-track:2a263e9085d9a31bf84d86009c35225e7bb17795581191c38f5d327dbe71c2e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
