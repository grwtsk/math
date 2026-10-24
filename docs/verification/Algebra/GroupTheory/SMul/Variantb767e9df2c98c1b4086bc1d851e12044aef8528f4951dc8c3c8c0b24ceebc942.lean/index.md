# Verification target: GRWTSK.Algebra.GroupTheory.SMul.Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65afc647df0f71515c76e876c082ef3970bb2f5c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65afc647df0f71515c76e876c082ef3970bb2f5c`.

Source path: `GRWTSK/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/issmulregular--62c253312e9af73ff347b48d.md) | 44 | `declaration-track:62c253312e9af73ff347b48dc2bb4a7f475c97ac33d11a0252956795a5a2361d` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isleftregular-issmulregular--304510394976e8bd9c17f28c.md) | 48 | `result-track:304510394976e8bd9c17f28c19e3b163ea9697bccabf9fd5e44517e11497b89c` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isleftregular-iff--9545067e5e6554533f92ce7f.md) | 54 | `result-track:9545067e5e6554533f92ce7face90709259cdfe851e99d3cf0751ea0cd783362` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isrightregular-issmulregular--e729f88e4a34ab1dcc797bda.md) | 58 | `result-track:e729f88e4a34ab1dcc797bda2690b0ce701d1939df750cc999bd2e469d3ad5a2` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isrightregular-iff--5652f54826dbe692c4ff730b.md) | 65 | `result-track:5652f54826dbe692c4ff730be24e99f5761907a0f7e8e798b0edb91b13952d14` |
| 6 | `lemma` | [isSMulRegular_map](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/issmulregular-map--fa4837a29f0975a111d5dda1.md) | 72 | `result-track:fa4837a29f0975a111d5dda1bab1899be7e0c1b6b5f5abda4aa827ba242086e7` |
| 7 | `theorem` | [isAddTorsionFree_iff'](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isaddtorsionfree-iff--ed36d91290ee02fe6d8a08a6.md) | 78 | `result-track:ed36d91290ee02fe6d8a08a6fac06d337581f0f57b42c1cf4d0ced5a587c7d11` |
| 8 | `theorem` | [nat_of_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/nat-of-isaddtorsionfree--0ee511dd026764614cebfcdc.md) | 83 | `result-track:0ee511dd026764614cebfcdcc1c0067ae75b04ebfbd2898d5e412b000207403d` |
| 9 | `theorem` | [natAbs_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/natabs-iff--87c532ea2fae207e18141a01.md) | 87 | `result-track:87c532ea2fae207e18141a017dd4111515245130967c461d640a41872b994185` |
| 10 | `theorem` | [smul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/smul--942d0e761d2c1aee3174683d.md) | 103 | `result-track:942d0e761d2c1aee3174683d4d22f67596516b4fbbb99ba69aa974be19c0c64c` |
| 11 | `theorem` | [of_smul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/of-smul--4e80d18911f9307df75271e8.md) | 111 | `result-track:4e80d18911f9307df75271e8819133786ac10fc0116cdf5e7ac069d21cb3ab10` |
| 12 | `theorem` | [smul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/smul-iff--4602334c79660a0e7f6eeeb1.md) | 122 | `result-track:4602334c79660a0e7f6eeeb12665a8f3ccbc86c22725bfd0e73dc613c1571f5f` |
| 13 | `theorem` | [isLeftRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isleftregular--a39c94d43b072d491a1b94ad.md) | 126 | `result-track:a39c94d43b072d491a1b94ad4d224d12efa2a9b2424cf8af02d903fc2cd9aef1` |
| 14 | `theorem` | [isRightRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isrightregular--0792521458c706d9e16477a3.md) | 130 | `result-track:0792521458c706d9e16477a3ac8e7df9b15688bb82a009c566d2b6728e22d9f3` |
| 15 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/mul--1269f10dbc795ea239558997.md) | 135 | `result-track:1269f10dbc795ea2395589974224d5e9bce358af809b6a20b66538df5bc228fd` |
| 16 | `theorem` | [of_mul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/of-mul--ba06c10ad5f9e36b5a8c60b7.md) | 140 | `result-track:ba06c10ad5f9e36b5a8c60b7b1a54706da249eeeede53853a9f0df646acec30b` |
| 17 | `theorem` | [mul_iff_right](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/mul-iff-right--bab8b4cee5d9e0e966015bb2.md) | 146 | `result-track:bab8b4cee5d9e0e966015bb250c1db45ba23e18678895ed871d195bae5b9cc63` |
| 18 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/mul-and-mul-iff--57dfa4b661393a10fe030f08.md) | 155 | `result-track:57dfa4b661393a10fe030f080355303c39cb1d47daa2316683bfae96e4ef303d` |
| 19 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/one--edbc0ed017e2c424a8293cfa.md) | 173 | `result-track:edbc0ed017e2c424a8293cfaffbf6d9486ad82ed700185cbd7d65f5ce8f8f4ba` |
| 20 | `theorem` | [of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/of-mul-eq-one--ae636522f718f29febb8fd36.md) | 182 | `result-track:ae636522f718f29febb8fd36d572bb85485ca1240117d1cb6b1216bf98126e73` |
| 21 | `theorem` | [pow](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/pow--32207c40ab7971715483c8df.md) | 188 | `result-track:32207c40ab7971715483c8df4cc34466c425b39a5f5fc382fb1770fa9ed1790a` |
| 22 | `theorem` | [pow_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/pow-iff--e835f2f571cb879824d4c396.md) | 198 | `result-track:e835f2f571cb879824d4c3968137ecc448baa5a10aff31935437f2a548ca7b93` |
| 23 | `theorem` | [of_smul_eq_one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/of-smul-eq-one--18e1f808195891b8d27905b3.md) | 212 | `result-track:18e1f808195891b8d27905b3f161a35be18286c1bfe7645db3a5a12573b1448c` |
| 24 | `theorem` | [mul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/mul-iff--abe29e2d97256489df799202.md) | 227 | `result-track:abe29e2d97256489df7992024b8664e4e867279a7b53dba60daaa0313cead941` |
| 25 | `theorem` | [IsSMulRegular.all](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/issmulregular-all--79a6138c4723e09030ec8440.md) | 238 | `result-track:79a6138c4723e09030ec84407b4087e45f6274a7ccb53561d3bf790aa5ad3c61` |
| 26 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/issmulregular-of-group--2e7f3a2eb0a556224121bc58.md) | 247 | `result-track:2e7f3a2eb0a556224121bc588a81b44b73fd5b59fa4d340eecd724f70f7d4cd6` |
| 27 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/units-issmulregular--e5cb636085905b803a0b9fd8.md) | 259 | `result-track:e5cb636085905b803a0b9fd84d5a3766d51e028da484f3627d0ea6fba32727d1` |
| 28 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/isunit-issmulregular--b843d0e69da29858bb015d0e.md) | 265 | `result-track:b843d0e69da29858bb015d0eb50edc376aabab1e0e1bcddfc769e53df9a72956` |
| 29 | `lemma` | [Equiv.isSMulRegular_congr](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/declarations/equiv-issmulregular-congr--535babb4cadf3255f8bb0e10.md) | 272 | `result-track:535babb4cadf3255f8bb0e1011868c58c20c6171a2ab2c957d85de9c42aeff01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
