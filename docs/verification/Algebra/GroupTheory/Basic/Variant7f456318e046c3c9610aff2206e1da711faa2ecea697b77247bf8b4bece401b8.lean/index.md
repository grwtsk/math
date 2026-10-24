# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf25c7be581e450fa96815b1b31a4cc1b7d4bbf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf25c7be581e450fa96815b1b31a4cc1b7d4bbf`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/instance--12099f1b7ccacdad982ff432.md) | 41 | `declaration-track:12099f1b7ccacdad982ff432230d217392bbf601ddad2920321bfcf92e92f536` |
| 2 | `theorem` | [Dvd.intro](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-intro--4e9a04d41e1f716dc392babb.md) | 47 | `result-track:4e9a04d41e1f716dc392babbaf7817d17f1ae3fdc5c3a187fee7f214b11009a1` |
| 3 | `theorem` | [exists_eq_mul_right_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/exists-eq-mul-right-of-dvd--cac49cffdeb11ec507e07a22.md) | 54 | `result-track:cac49cffdeb11ec507e07a222eb6b94189b8a203335e793997fd60c9f18aa19c` |
| 4 | `theorem` | [dvd_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-def--55f7bda29d417f3c674ee28b.md) | 58 | `result-track:55f7bda29d417f3c674ee28b6d4146546fcf168c18cbaed1ef0c086a41024956` |
| 5 | `theorem` | [Dvd.elim](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-elim--e35f0979792bbee90d2393d4.md) | 63 | `result-track:e35f0979792bbee90d2393d493c80026b696567ed0a26a7d06f895e5caff7e45` |
| 6 | `theorem` | [dvd_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-trans--5915df98a98252d2483845d5.md) | 70 | `result-track:5915df98a98252d2483845d584e1d06a5f0bf99a51303a7c86e12df0b56b86b5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/instance--9f4d750c682ee0ae787f2137.md) | 77 | `declaration-track:9f4d750c682ee0ae787f2137b3e7a6ca8250529f2a971f72820a287bf56bb869` |
| 8 | `theorem` | [dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-mul-right--5ce8b740d6c4560081578a62.md) | 81 | `result-track:5ce8b740d6c4560081578a62e65f5cad9d7680e89e95aab61991a1356d3fa62c` |
| 9 | `theorem` | [dvd_mul_of_dvd_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-mul-of-dvd-left--b4ab1e9d63c9c0f6d054691a.md) | 85 | `result-track:b4ab1e9d63c9c0f6d054691ad77aec08e3a2841ccb9d1c17bd4f623c5c21713b` |
| 10 | `theorem` | [dvd_of_mul_right_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-of-mul-right-dvd--45dbe6d1fcd69346b0c5b236.md) | 91 | `result-track:45dbe6d1fcd69346b0c5b23640f8a020b71e581e5d3b80806eb7a7a08309b149` |
| 11 | `theorem` | [map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/map-dvd--737f6409aba3d19ed2bb29c9.md) | 99 | `result-track:737f6409aba3d19ed2bb29c9283348038a64b1e293e7fb6b2dee33c0396393e1` |
| 12 | `theorem` | [MulHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/mulhom-map-dvd--4821662d31238e8ea75a630a.md) | 103 | `result-track:4821662d31238e8ea75a630aa885f232aa8f3b66bf822d92ebb282ac53f40241` |
| 13 | `theorem` | [MonoidHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/monoidhom-map-dvd--97259baf6fb8fd27bde80580.md) | 107 | `result-track:97259baf6fb8fd27bde8058098ba57d19d2191edebc8ec19b48a310feb939817` |
| 14 | `theorem` | [dvd_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-refl--becd7fc732e40da16405b12e.md) | 120 | `result-track:becd7fc732e40da16405b12e73ca3207d31474b6c8b684206e749ab571cf128f` |
| 15 | `theorem` | [dvd_rfl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-rfl--406a14535bf6e57b7fc87f03.md) | 124 | `result-track:406a14535bf6e57b7fc87f030d63fdfeacfa0bec04245b267da6d7e0369508c8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/instance--174f1d21f841af2f63d95688.md) | 127 | `declaration-track:174f1d21f841af2f63d956884b592577fa90d4e43051bade5b8d234a6ac11959` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/one-dvd--d253d2fff67a8de874b0dbb0.md) | 130 | `result-track:d253d2fff67a8de874b0dbb0add32c67b83090bd72bcae513b131a38db6b88b7` |
| 18 | `theorem` | [dvd_of_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-of-eq--70ad1e46e50558c7a0e9bb3f.md) | 134 | `result-track:70ad1e46e50558c7a0e9bb3f89ffe14eae6cfef60ed697b76dedcb1a04dd81aa` |
| 19 | `theorem` | [Dvd.intro_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-intro-left--ee9a62450609f08a4f7ede4a.md) | 146 | `result-track:ee9a62450609f08a4f7ede4a3b0e11d7db2b779690e93bf02b2797d381557442` |
| 20 | `theorem` | [exists_eq_mul_left_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/exists-eq-mul-left-of-dvd--076b7dc4d522c998b7e27003.md) | 153 | `result-track:076b7dc4d522c998b7e27003044433a3edb046a82e78c0d9c23dde128aac0d61` |
| 21 | `theorem` | [dvd_iff_exists_eq_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-iff-exists-eq-mul-left--ece14ac70b78efc7fe9cc075.md) | 157 | `result-track:ece14ac70b78efc7fe9cc0754b52a536376c3f31a37f0995c652770de5267495` |
| 22 | `theorem` | [Dvd.elim_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-elim-left--3e77d93ce3e8f092442f25b1.md) | 163 | `result-track:3e77d93ce3e8f092442f25b15d55322065f1be5e097ae5051826bc0a7d5177f6` |
| 23 | `theorem` | [dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-mul-left--441fdf298e2c3d97f498f3a3.md) | 168 | `result-track:441fdf298e2c3d97f498f3a3a42f91d560bfffbda3ec61056975f20fcc81daf5` |
| 24 | `theorem` | [dvd_mul_of_dvd_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-mul-of-dvd-right--2de46decae8acb212992f6bd.md) | 172 | `result-track:2de46decae8acb212992f6bd3ad8e005011198dfe51e35e2ba0d61d7c5c0e336` |
| 25 | `theorem` | [mul_dvd_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/mul-dvd-mul--289df877b9c6365051a41579.md) | 180 | `result-track:289df877b9c6365051a415797528de148994d7bf73877bfb2c84946eee89d8d2` |
| 26 | `theorem` | [dvd_of_mul_left_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/dvd-of-mul-left-dvd--3e35365119f1af41ae28cc45.md) | 184 | `result-track:3e35365119f1af41ae28cc45b331bf2b09a0644c20a12f55d9edb217bba27402` |
| 27 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/mul-dvd-mul-left--56b4519d9260fa0feef7b751.md) | 194 | `result-track:56b4519d9260fa0feef7b751b9a1513ed1b0bbcb39d416f4857fe0f7cae145b4` |
| 28 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/mul-dvd-mul-right--62fad10961927fa5a4423480.md) | 198 | `result-track:62fad10961927fa5a442348096c5c14b1642a5b265b9f0dfb42727105a26f183` |
| 29 | `theorem` | [pow_dvd_pow_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7f456318e046c3c9610aff2206e1da711faa2ecea697b77247bf8b4bece401b8.lean/declarations/pow-dvd-pow-of-dvd--67d4dfc7a44883881db0663a.md) | 202 | `result-track:67d4dfc7a44883881db0663a5b1a039784670005fe6547d90a6b08fc798292db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
