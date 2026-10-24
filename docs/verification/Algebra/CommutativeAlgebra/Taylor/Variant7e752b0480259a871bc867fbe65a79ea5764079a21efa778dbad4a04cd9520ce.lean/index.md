# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Taylor.Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c9512be9f6af50fba9f68c487ee90da9d5bc55",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c9512be9f6af50fba9f68c487ee90da9d5bc55`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.HasseDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor--a74a02deb7da9d56a87d118a.md) | 35 | `declaration-track:a74a02deb7da9d56a87d118ac4fe7dbc370a46bb8a9020655ff64f3222cf0c8b` |
| 2 | `theorem` | [taylor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-apply--f7c4cbe8e9324237451ba29e.md) | 41 | `result-track:f7c4cbe8e9324237451ba29e2f59cb8eb70f39ea8c35df9bf9b3b3273d5be630` |
| 3 | `theorem` | [taylor_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-x--ee92265c523d1f7a1cf8229f.md) | 46 | `result-track:ee92265c523d1f7a1cf8229f4cc60f43bdf4d0ab44fffd27dea274f2d7284780` |
| 4 | `theorem` | [taylor_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-c--312045592ee63fd83d34c300.md) | 51 | `result-track:312045592ee63fd83d34c30063af6b1e4bef5e12a2278b61edeab386fb0429e8` |
| 5 | `theorem` | [taylor_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-zero--138cbdaeb0e77ef2dafc2839.md) | 56 | `result-track:138cbdaeb0e77ef2dafc283939c8f02d5196df5b8812999171f1cc26699ccd3e` |
| 6 | `theorem` | [taylor_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-zero--cbf604929730a54d82966258.md) | 62 | `result-track:cbf604929730a54d829662581d43da166d666548d91337134d3bbe009f4bfd8f` |
| 7 | `theorem` | [taylor_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-one--8009ab5b0f12561f046fc8f8.md) | 66 | `result-track:8009ab5b0f12561f046fc8f8a02f2f29cae3246f2981c568c7689301d9de906a` |
| 8 | `theorem` | [taylor_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-monomial--6ec7fcd338937ae55c0d9f49.md) | 70 | `result-track:6ec7fcd338937ae55c0d9f497a625f471f723377221f34bf8ee9a72a5ac5a4de` |
| 9 | `theorem` | [taylor_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-coeff--8f7164866e68f75bd408048f.md) | 75 | `result-track:8f7164866e68f75bd408048f0c9b1b8130a38f0b925cc2cdacc482bede571fc9` |
| 10 | `theorem` | [taylor_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-coeff-zero--ad9ed0c7a8af8b72755c513e.md) | 88 | `result-track:ad9ed0c7a8af8b72755c513e4748217222337d16ad4f783510c90a5225d17cd1` |
| 11 | `theorem` | [taylor_coeff_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-coeff-one--a8ebd733e9519d2c608d6f8e.md) | 93 | `result-track:a8ebd733e9519d2c608d6f8e5be004d54fdc569abebf3064c6620c392cd2c7c3` |
| 12 | `theorem` | [natDegree_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/natdegree-taylor--964a55e647fd211633b2bcf8.md) | 98 | `result-track:964a55e647fd211633b2bcf8932169e82f5924baaa82557a135ba93df6272151` |
| 13 | `theorem` | [taylor_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-mul--24103f00ef0f76da04a7cc2e.md) | 106 | `result-track:24103f00ef0f76da04a7cc2e4bdfb09fbcc0a6640323bfb41bd56bc00be40014` |
| 14 | `def` | [taylorAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/tayloralghom--1c59747190d264b8ee75ef8d.md) | 112 | `declaration-track:1c59747190d264b8ee75ef8d58d53fe02e5a5f5576cf199c00437e3d0562d90a` |
| 15 | `theorem` | [taylor_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-taylor--1a5fa3eaf710cfb6bba98498.md) | 116 | `result-track:1a5fa3eaf710cfb6bba98498ecf52c47f855285798a87d3d35492f82b10c9141` |
| 16 | `theorem` | [taylor_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-eval--235691d4d7771141a691b760.md) | 121 | `result-track:235691d4d7771141a691b76088ba3c4d059731b9381fa8022d3a9c461dd7dfce` |
| 17 | `theorem` | [taylor_eval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-eval-sub--563cef7ca2bc191e63d4003d.md) | 126 | `result-track:563cef7ca2bc191e63d4003d458d99f2fa1ee58121a6bf43b94795b9e4e3327f` |
| 18 | `theorem` | [taylor_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/taylor-injective--6ba6e8e1947e212dd159cf81.md) | 130 | `result-track:6ba6e8e1947e212dd159cf8139345c63514e36e88fae92af8d493df95ca5a8a7` |
| 19 | `theorem` | [eq_zero_of_hasseDeriv_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/eq-zero-of-hassederiv-eq-zero--49ddd6ac5f9acce037a197f5.md) | 137 | `result-track:49ddd6ac5f9acce037a197f5d1f2d2af876463b407d69ff7acfd8c79e1698fa9` |
| 20 | `theorem` | [sum_taylor_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant7e752b0480259a871bc867fbe65a79ea5764079a21efa778dbad4a04cd9520ce.lean/declarations/sum-taylor-eq--660a5538aa358aa8843dc5b1.md) | 146 | `result-track:660a5538aa358aa8843dc5b1e015fe243bcaef1e6b6a4c06de10f16d652914db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
