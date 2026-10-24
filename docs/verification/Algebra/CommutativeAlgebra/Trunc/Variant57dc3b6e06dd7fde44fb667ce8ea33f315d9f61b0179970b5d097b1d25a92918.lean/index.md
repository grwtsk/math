# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0194e383101dc71d7637b9b309ec774ed78e1784",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0194e383101dc71d7637b9b309ec774ed78e1784`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc--be116e8312d282f42f63f007.md) | 37 | `declaration-track:be116e8312d282f42f63f007d3f653c5592972024c0d4e6c06be5d5df4d4461c` |
| 2 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/coeff-trunc--ac73f08a69aeecc598d674e9.md) | 40 | `result-track:ac73f08a69aeecc598d674e902267d467ac7f43e274d6f16a9b211020fc02ea9` |
| 3 | `theorem` | [trunc_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-zero--b8455fbac08f5291b96a88fa.md) | 45 | `result-track:b8455fbac08f5291b96a88fa9f2796f9caa0d9226a1762be968c9192c249a579` |
| 4 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-one--4fa8f0f0a60390eb5540e9b3.md) | 51 | `result-track:4fa8f0f0a60390eb5540e9b32c0c39c55360f41372c7ae086974d89797df7c88` |
| 5 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-c--c275997f135d61f32c8d9d24.md) | 61 | `result-track:c275997f135d61f32c8d9d24dc22a21466d73336723b451ac40c275de0fa1b98` |
| 6 | `theorem` | [trunc_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-add--c3261320c18b5b9637ef1124.md) | 67 | `result-track:c3261320c18b5b9637ef1124efabdd84c0ae7d05530c1b6b978f6255b080b49e` |
| 7 | `theorem` | [trunc_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-succ--11f54255ee17c5896b8526ea.md) | 74 | `result-track:11f54255ee17c5896b8526ea954716d53664f76799618f697f5802c2772633a5` |
| 8 | `theorem` | [natDegree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/natdegree-trunc-lt--1343dec5de78cc6f545dc0c0.md) | 78 | `result-track:1343dec5de78cc6f545dc0c0b8edd4d519de8d392a4c5025b3cf8cd1ade0064f` |
| 9 | `lemma` | [trunc_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-zero--3d02843c138d6c7be2c01806.md) | 87 | `result-track:3d02843c138d6c7be2c018067195e79e8f54219ba910dc89dcbfc4c80743a40f` |
| 10 | `theorem` | [degree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/degree-trunc-lt--c7982b49f11bbdd552d53007.md) | 89 | `result-track:c7982b49f11bbdd552d53007009dc9fa7354adda17f1e43a5a61ac17589c57be` |
| 11 | `theorem` | [eval₂_trunc_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/eval-trunc-eq-sum-range--bf7856d88cdc3e448207e369.md) | 98 | `result-track:bf7856d88cdc3e448207e369091fc7ecc9194ff279612dcecb246e184821d6fb` |
| 12 | `theorem` | [trunc_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-x--5f285239d238527126147813.md) | 112 | `result-track:5f285239d23852712614781323b9eeaec84db2453cd554642fc58b26912c9b43` |
| 13 | `lemma` | [trunc_X_of](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-x-of--49088398a233c8222f19d61b.md) | 124 | `result-track:49088398a233c8222f19d61b456e5d0373750658a0c5870895410c2c06650c4f` |
| 14 | `lemma` | [trunc_one_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-one-left--72f52dd0cdaf906f7dd86ecc.md) | 133 | `result-track:72f52dd0cdaf906f7dd86ecc296fde31920bb97b5deb2fc6ae1e3dbce88a29e9` |
| 15 | `lemma` | [trunc_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-one-x--2b3abb3a0299e9ec9b602124.md) | 136 | `result-track:2b3abb3a0299e9ec9b6021242121e1e66ab1e9bfb9a1d83bce787c740faad0a8` |
| 16 | `lemma` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-c-mul--4e12eb9e7e50fdd4e766ca9b.md) | 139 | `result-track:4e12eb9e7e50fdd4e766ca9b5b9ed6210494d4028389356a81056da301dcaf27` |
| 17 | `lemma` | [trunc_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-mul-c--fbbc7d651e498fafde8419ef.md) | 143 | `result-track:fbbc7d651e498fafde8419efe185e04ecf03b4a874a7976ed85b702a19986ebe` |
| 18 | `lemma` | [eq_shift_mul_X_pow_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/eq-shift-mul-x-pow-add-trunc--2c843378f8a4b350836ce7d7.md) | 147 | `result-track:2c843378f8a4b350836ce7d78b78790e1c975e196dbe0ee7782387eb1fe9abc7` |
| 19 | `lemma` | [eq_X_pow_mul_shift_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/eq-x-pow-mul-shift-add-trunc--51327af52bfa03f898f77bc5.md) | 155 | `result-track:51327af52bfa03f898f77bc50f9b0176ccc8d1b3c03407fe5ab442dd23b4548c` |
| 20 | `theorem` | [trunc_trunc_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-trunc-of-le--c3235e2d05c46d10ac3f720d.md) | 171 | `result-track:c3235e2d05c46d10ac3f720dcd76a3fea61fea740ed91ffa0fd75b172663ae77` |
| 21 | `theorem` | [trunc_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-trunc--3e5e43c2e90ef1bf00e8a6a4.md) | 179 | `result-track:3e5e43c2e90ef1bf00e8a6a4f73bd660e998ea3c1f9bdf7d6c157f2b5f6226c3` |
| 22 | `theorem` | [trunc_trunc_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-trunc-mul--8482849faa3f31f5ee7f68cd.md) | 182 | `result-track:8482849faa3f31f5ee7f68cd855400050362fc7b1c460884d2bfc2a752605463` |
| 23 | `theorem` | [trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-mul-trunc--f75b29b7b80b684cfc987998.md) | 193 | `result-track:f75b29b7b80b684cfc987998985500052d57b6b5e75f4fa3124934fb2f6e4e7d` |
| 24 | `theorem` | [trunc_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-trunc-mul-trunc--a656530d179a15ea83fd2310.md) | 197 | `result-track:a656530d179a15ea83fd23102ffd5f607f3f6903c7b097e084186d53a84fe35c` |
| 25 | `theorem` | [trunc_trunc_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-trunc-pow--0b244be403012e349dd00e4a.md) | 201 | `result-track:0b244be403012e349dd00e4a0c01d8bbb1ee3523427d50524c64513ade38f736` |
| 26 | `theorem` | [trunc_coe_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-coe-eq-self--a972ea59070599a93e22c096.md) | 210 | `result-track:a972ea59070599a93e22c096fb8c14fa53bf56ad993b760c512f9f5bc7c848e2` |
| 27 | `theorem` | [coeff_coe_trunc_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/coeff-coe-trunc-of-lt--8e74e8a713426e43aa34ecf4.md) | 223 | `result-track:8e74e8a713426e43aa34ecf4df973db4d07f4eb2bb61cee5cfa40d13548d83dd` |
| 28 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--50c7bb2be837dd79b6f7ce29.md) | 229 | `result-track:50c7bb2be837dd79b6f7ce299bbf7328b524aa1f827925c7450c11c78ffba354` |
| 29 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--52c9061f30a675e9e27b9de1.md) | 235 | `result-track:52c9061f30a675e9e27b9de1b15ee048bc1189d21242f399950e767879e73fdc` |
| 30 | `lemma` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean/declarations/trunc-map--b3eeab0a5ab25892e914fd9f.md) | 244 | `result-track:b3eeab0a5ab25892e914fd9f7d6ae0839abb52acf7b68a282a4cf9587dfbad42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
