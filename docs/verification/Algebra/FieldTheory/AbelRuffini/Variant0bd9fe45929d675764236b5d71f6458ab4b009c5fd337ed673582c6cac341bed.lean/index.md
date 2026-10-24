# Verification target: GRWTSK.Algebra.FieldTheory.AbelRuffini.Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75eafad64b1f5ea8a7ec279c95e2d0dd1aa2b179",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75eafad64b1f5ea8a7ec279c95e2d0dd1aa2b179`.

Source path: `GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Solvable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/macro-rules--3e6446ed416af95226beda4c.md) | 39 | `declaration-track:3e6446ed416af95226beda4c9f545510d9b1e9d420459b797cfa634214c93ef2` |
| 2 | `theorem` | [gal_zero_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-zero-issolvable--771a07842a143d24f28ccb15.md) | 49 | `result-track:771a07842a143d24f28ccb15a6aed4f654c24a40f56e04dbcbda84ef17007458` |
| 3 | `theorem` | [gal_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-one-issolvable--4cd37a29840a30e74e96726c.md) | 52 | `result-track:4cd37a29840a30e74e96726c03f49591df9b6f00890693fc7211e9f28884c473` |
| 4 | `theorem` | [gal_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-c-issolvable--6da9e6e50ed9e4cfd539354e.md) | 55 | `result-track:6da9e6e50ed9e4cfd539354e10c309504878d09f245cb8a292e11f60bea979f6` |
| 5 | `theorem` | [gal_X_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-issolvable--13d887e6370aaf3989a2d588.md) | 59 | `result-track:13d887e6370aaf3989a2d588aa1b5784a933b31591721c9cea1fe60be7c9eeca` |
| 6 | `theorem` | [gal_X_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-sub-c-issolvable--575e0556bf24f802dcef2b6f.md) | 63 | `result-track:575e0556bf24f802dcef2b6f2f0901190a8ecd4c7bdefc430ec38279ff8131c0` |
| 7 | `theorem` | [gal_X_pow_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-pow-issolvable--e735f75ac588b13569b23620.md) | 67 | `result-track:e735f75ac588b13569b23620f75ed94dabccb22bbaef3f63cd8e0c9cd01fd516` |
| 8 | `theorem` | [gal_mul_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-mul-issolvable--afb9bd328d8fe639b736cc16.md) | 71 | `result-track:afb9bd328d8fe639b736cc16a266251b544d97ce60adca8a6fac4ff26aea36a7` |
| 9 | `theorem` | [gal_prod_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-prod-issolvable--958623db40eb8c6ef426c123.md) | 76 | `result-track:958623db40eb8c6ef426c1234b9ef3bb3a928556b7f6fa79d195c12dc6640ab0` |
| 10 | `theorem` | [gal_isSolvable_of_splits](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-issolvable-of-splits--aa6dfb938c7f570b575d73c1.md) | 85 | `result-track:aa6dfb938c7f570b575d73c1f1fc9b82df169a790a6c309b62418859b6249a67` |
| 11 | `theorem` | [gal_isSolvable_tower](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-issolvable-tower--6a17d8d26bd9fd4884752e02.md) | 92 | `result-track:6a17d8d26bd9fd4884752e021344e3bc84c46c491c374f947b310694baeff8ac` |
| 12 | `theorem` | [gal_X_pow_sub_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-pow-sub-one-issolvable--5d80223d904ec868d5b3c4df.md) | 108 | `result-track:5d80223d904ec868d5b3c4df82f1a083f2129a0ac34db5d94d31e4ce08c20fdd` |
| 13 | `theorem` | [gal_X_pow_sub_C_isSolvable_aux](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-pow-sub-c-issolvable-aux--4fd353fc2ebf5869d14b3c32.md) | 129 | `result-track:4fd353fc2ebf5869d14b3c322dfef096b4a89cd65ff62750cda5128c8e33163e` |
| 14 | `theorem` | [splits_X_pow_sub_one_of_X_pow_sub_C](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/splits-x-pow-sub-one-of-x-pow-sub-c--583f829bf9f5b233efb26071.md) | 169 | `result-track:583f829bf9f5b233efb26071e518e0ebd341252357f08896cf0cd98c342bdd91` |
| 15 | `theorem` | [gal_X_pow_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/gal-x-pow-sub-c-issolvable--047f2a220734c6cb8fbeab1f.md) | 210 | `result-track:047f2a220734c6cb8fbeab1f2c4981507247097f7b0a61c390db789dc9b4d065` |
| 16 | `inductive` | [IsSolvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/issolvablebyrad--936cfb24eaea4767543d6891.md) | 230 | `declaration-track:936cfb24eaea4767543d6891ee8b01412fb0a4ec5a18a4777a155f99ba076529` |
| 17 | `def` | [solvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/solvablebyrad--481e6de1e9a58c6ac930c461.md) | 242 | `declaration-track:481e6de1e9a58c6ac930c461b4e84bceda89da2a50fa38ff60a0d5e3c51af6c0` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/induction--d45f5f1c41bf7b34d0479b36.md) | 260 | `result-track:d45f5f1c41bf7b34d0479b365e4b4d6f03f473357f02b10da12ae76af555093d` |
| 19 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/isintegral--be4838d99e2da24865fce692.md) | 295 | `result-track:be4838d99e2da24865fce6928e6306483083009e8042884a330278fc8ad6c608` |
| 20 | `def` | [P](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/p--ea1f07273201d2ee0df46f1c.md) | 315 | `declaration-track:ea1f07273201d2ee0df46f1c8262ec180fa512b9b2920be994fa3735f53078e2` |
| 21 | `theorem` | [induction3](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/induction3--82c0e8da0a379c77c9e7e793.md) | 322 | `result-track:82c0e8da0a379c77c9e7e793a2fa60c6f0bbd29c9a79089777f9e9d064304912` |
| 22 | `theorem` | [induction2](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/induction2--8ae00de316b42b58749955e7.md) | 349 | `result-track:8ae00de316b42b58749955e79821208d7d64d2fffde6673590586aed6bebea4c` |
| 23 | `theorem` | [induction1](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/induction1--e2a0bc96f9fc300afc49b0ce.md) | 381 | `result-track:e2a0bc96f9fc300afc49b0ce7cc3c1daffa654223e102f68295a89accaec6f01` |
| 24 | `theorem` | [isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/issolvable--a8d6977a831a72b28f74e4db.md) | 385 | `result-track:a8d6977a831a72b28f74e4dbc91d9a7a1d35c2e1e7ae32a233b1a5081c4678bf` |
| 25 | `theorem` | [isSolvable'](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant0bd9fe45929d675764236b5d71f6458ab4b009c5fd337ed673582c6cac341bed.lean/declarations/issolvable--ffe5b9f7608ebda4ab978633.md) | 400 | `result-track:ffe5b9f7608ebda4ab9786337067218b4ba8d52a837810ed3918f44a96be3d7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
