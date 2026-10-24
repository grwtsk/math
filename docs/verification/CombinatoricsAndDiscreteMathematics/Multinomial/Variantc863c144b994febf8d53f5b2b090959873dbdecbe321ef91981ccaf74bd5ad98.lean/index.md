# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multinomial.Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02695baa287368c727e8dcb6f32530f4864cba4d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02695baa287368c727e8dcb6f32530f4864cba4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Antidiag.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial--e3cf292e5519e841effcd2ee.md) | 42 | `declaration-track:e3cf292e5519e841effcd2ee3831cd31632c5ba09c49123d19b34ec80744ea13` |
| 2 | `theorem` | [multinomial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-pos--e5ffd5af73bb9c08afea35fa.md) | 45 | `result-track:e5ffd5af73bb9c08afea35faffecc7b3c35681f70ac115dc38f4558a4939bf8c` |
| 3 | `theorem` | [multinomial_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-spec--b449d68c00c813763a016d3f.md) | 49 | `result-track:b449d68c00c813763a016d3f4a03afdc7e324c972411d107d20e0fd54ed6a202` |
| 4 | `lemma` | [multinomial_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-empty--00af491c60a33cff0d3a0410.md) | 52 | `result-track:00af491c60a33cff0d3a041021551a44210510324694e66ee68c5a62439d467f` |
| 5 | `lemma` | [multinomial_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-cons--659c707297ea24353d06fcc0.md) | 56 | `result-track:659c707297ea24353d06fcc068796a06c92e3e47a7c53b8d26493721eb60d17a` |
| 6 | `lemma` | [multinomial_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-insert--75ea995687b2710e44fdc947.md) | 64 | `result-track:75ea995687b2710e44fdc947ef03d7d67ab5d7956599d21841c3f9530d898e82` |
| 7 | `lemma` | [multinomial_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-singleton--8639c47bcd9f5978fad8d957.md) | 68 | `result-track:8639c47bcd9f5978fad8d95787e7faa10cb4b5d66a8a52c51803060f6652c7af` |
| 8 | `theorem` | [multinomial_insert_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-insert-one--908b09d45ccddd2433ffd48f.md) | 72 | `result-track:908b09d45ccddd2433ffd48fb6ccd8823a1e200987d0f2b09db36cf4af8ff0f1` |
| 9 | `theorem` | [multinomial_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-congr--026d7f0b951229f3bc37295a.md) | 79 | `result-track:026d7f0b951229f3bc37295affb6d1cdc84f189a6227346033402f57eb06b08f` |
| 10 | `theorem` | [binomial_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/binomial-eq--14390452ded523a3009007c0.md) | 92 | `result-track:14390452ded523a3009007c0f59f9be9288bb8db4f28b12a9d47adb3f85bf9ab` |
| 11 | `theorem` | [binomial_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/binomial-eq-choose--a5930ce8f5884f98bbf2171f.md) | 96 | `result-track:a5930ce8f5884f98bbf2171fcbf69a52bc1bb2c39d0d823231d28c21277dac6c` |
| 12 | `theorem` | [binomial_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/binomial-spec--4cd3d03269fdea6b2d1bb3a2.md) | 100 | `result-track:4cd3d03269fdea6b2d1bb3a2faa5bf6b703c254236c8048819390e7485346688` |
| 13 | `theorem` | [binomial_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/binomial-one--00fe01641dda259a596f5627.md) | 104 | `result-track:00fe01641dda259a596f56273935e1ef097b1097c6914261c18709d079c97ba2` |
| 14 | `theorem` | [binomial_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/binomial-succ-succ--87338d9365b02ac548498e38.md) | 108 | `result-track:87338d9365b02ac548498e38b585519abc2d2a14410102ab8edac60f3b61b0f9` |
| 15 | `theorem` | [succ_mul_binomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/succ-mul-binomial--b0eb9801cd00971e2d03a9ad.md) | 118 | `result-track:b0eb9801cd00971e2d03a9adad4607da7ea4d2a3762c5abddef1cf4f73f48fa5` |
| 16 | `theorem` | [multinomial_univ_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-univ-two--8b8a6c9060c780e9368cb8c4.md) | 128 | `result-track:8b8a6c9060c780e9368cb8c4dac8faddc44f3205390d874dec2d6ac7becf1470` |
| 17 | `theorem` | [multinomial_univ_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-univ-three--d3ab81ea9d6f3aa1363e8972.md) | 133 | `result-track:d3ab81ea9d6f3aa1363e8972a4ac0983807fa62e06d6e31efe4c2d901665d0f4` |
| 18 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial--96d0f58bb885b53d38baf8ed.md) | 150 | `declaration-track:96d0f58bb885b53d38baf8ed8183f477b94e8bc6edfd8a59e0e205f08812b2bd` |
| 19 | `theorem` | [multinomial_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-eq--55f80a79940494a73e5ef59f.md) | 153 | `result-track:55f80a79940494a73e5ef59ffdc81d8c9d5819d9d45b8de8f65a72f2d410add1` |
| 20 | `theorem` | [multinomial_update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-update--a44096b1309125134c35e12c.md) | 156 | `result-track:a44096b1309125134c35e12c818f605eddc415771f71c042459f24205c1a24d1` |
| 21 | `def` | [multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial--f13485ff14d44a12972c59aa.md) | 177 | `declaration-track:f13485ff14d44a12972c59aaf430de84aa6791c1679468971995cc37d2d11a97` |
| 22 | `theorem` | [multinomial_filter_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-filter-ne--087fe937153c137028d71772.md) | 180 | `result-track:087fe937153c137028d71772f33354f5e64c86366b3b4c6fce4d45f35dc66125` |
| 23 | `theorem` | [multinomial_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-zero--47a5f8a09bc2f86e4149c3e8.md) | 192 | `result-track:47a5f8a09bc2f86e4149c3e8e87db9395d6ff5a89cdf2288373c8f3c5506363d` |
| 24 | `lemma` | [sum_pow_eq_sum_piAntidiag_of_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/sum-pow-eq-sum-piantidiag-of-commute--7921643316977f666a51f135.md) | 211 | `result-track:7921643316977f666a51f135bf63665a71a8d4fc6a75508c1f6c28e6888216c3` |
| 25 | `theorem` | [sum_pow_of_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/sum-pow-of-commute--d5112ce02d1379ceb7a2a63d.md) | 251 | `result-track:d5112ce02d1379ceb7a2a63d33bed58978366b212b7e068f1fc7fb54c2f78a06` |
| 26 | `lemma` | [sum_pow_eq_sum_piAntidiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/sum-pow-eq-sum-piantidiag--6fe97da65f2cf2b690fe5631.md) | 289 | `result-track:6fe97da65f2cf2b690fe56317f1cd119ffe857d9e5258d5fed7380ac37fbad94` |
| 27 | `theorem` | [sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/sum-pow--9ebbdf4fea4d7ad6591d3ce8.md) | 294 | `result-track:9ebbdf4fea4d7ad6591d3ce8bf0222283fdec57475931b83eb6f81b95e752d07` |
| 28 | `lemma` | [multinomial_two_mul_le_mul_multinomial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-two-mul-le-mul-multinomial--36b026184fbcdd96089012a5.md) | 306 | `result-track:36b026184fbcdd96089012a5c5b21757a54a3acc229d822f25b1552663093567` |
| 29 | `theorem` | [multinomial_coe_fill_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/declarations/multinomial-coe-fill-of-notmem--757a600a53c703040d986b15.md) | 329 | `result-track:757a600a53c703040d986b15e8424caf8c5edf90eeaa8ea52e97c30f3dc0b53c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
