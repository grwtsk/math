# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c0742304ab18b06dae30191ed820f9a0907bcb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c0742304ab18b06dae30191ed820f9a0907bcb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_sq_le_sq_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-sq-le-sq-sum-of-nonneg--5efac91157caa8ee1e2e0516.md) | 43 | `result-track:5efac91157caa8ee1e2e0516f2bc63a7b4f5a8980ea98699120babbfaa3cc480` |
| 2 | `lemma` | [prod_add_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/prod-add-prod-le--90ae2f2c12af3f847ca763ee.md) | 59 | `result-track:90ae2f2c12af3f847ca763ee3e6c7def003bc5b7b3cc1bd02f56b14ab5f6806b` |
| 3 | `theorem` | [le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/le-prod-of-submultiplicative-on-pred-of-nonneg--886130f6b9a3ffd1a9e94d4d.md) | 71 | `result-track:886130f6b9a3ffd1a9e94d4d8fa0f560a1002c27751d924dfa99b854a6ace969` |
| 4 | `theorem` | [le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/le-prod-of-submultiplicative-of-nonneg--ccf6979d0950d0df9f7a5f6d.md) | 82 | `result-track:ccf6979d0950d0df9f7a5f6d9f1a590208aa21046456fac51bb64721909a2e46` |
| 5 | `theorem` | [sum_mul_self_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-mul-self-eq-zero-iff--68e9919f4a89137904ca16bd.md) | 96 | `result-track:68e9919f4a89137904ca16bd90a7b82b51c0c83f8d3785556f17d264d78a5a9a` |
| 6 | `theorem` | [sum_sq_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-sq-eq-zero-iff--cc1ceedeb8e0bf574f00182a.md) | 100 | `result-track:cc1ceedeb8e0bf574f00182a19130f1214dbe1544da78c648e523d3b7f95a097` |
| 7 | `theorem` | [sum_pow_eq_zero_iff_of_even](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-pow-eq-zero-iff-of-even--ebcf46ed65a3fb23bd9fabe6.md) | 103 | `result-track:ebcf46ed65a3fb23bd9fabe6cc81a7b66cbc7f2b3bca3c181adecd3e272fb8de` |
| 8 | `lemma` | [abs_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/abs-prod--ab59612f4abac61b7c34340c.md) | 109 | `result-track:ab59612f4abac61b7c34340c1f0e1263f9f742453fe203fec976457b2d054de9` |
| 9 | `theorem` | [PNat.coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/pnat-coe-prod--174a1ece4d89dc6c1ad13c3e.md) | 114 | `result-track:174a1ece4d89dc6c1ad13c3e57a895fa4cd8d4ec5a7914075a372cae8ab7203b` |
| 10 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.SumSqLeSqSumOfNonneg.Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.CanonicallyOrderedAdd.prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sumsqlesqsumofnonneg-var--75b47fe4572a3c86874bd38d.md) | 123 | `result-track:75b47fe4572a3c86874bd38d3e45c19407c6cd88efe16ce47d7bdbcd321204c8` |
| 11 | `lemma` | [prod_add_prod_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/prod-add-prod-le--ee3d40de39670584c1a0f7f9.md) | 130 | `result-track:ee3d40de39670584c1a0f7f99b4765300c47e61c281779fd5091e3d46b801c5d` |
| 12 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-le-mul--29491f5f2fb2bd692c05a16c.md) | 146 | `result-track:29491f5f2fb2bd692c05a16c8cb1d24bc688b5affa0adcc8d1b175443b2f6a04` |
| 13 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-eq-mul--4c78b143d41de32b40bf198f.md) | 172 | `result-track:4c78b143d41de32b40bf198fe624515a27a8f4ebcc271c6a214bbb070b402667` |
| 14 | `lemma` | [sum_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sum-mul-sq-le-sq-mul-sq--b806a94427495b21aa746ea1.md) | 179 | `result-track:b806a94427495b21aa746ea1611c75efc7d7ffa4e290edd06a0aaebc89a79400` |
| 15 | `theorem` | [sq_sum_div_le_sum_sq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/sq-sum-div-le-sum-sq-div--8b64fba68d8c5f0906e0640b.md) | 189 | `result-track:8b64fba68d8c5f0906e0640befec45add44e9817a12cffc8d5974cd6d0b6308f` |
| 16 | `lemma` | [AbsoluteValue.sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/absolutevalue-sum-le--cd349d2b394096c438764f84.md) | 206 | `result-track:cd349d2b394096c438764f84d0c2fa19750f1aff01800176eada77e48cd1bd8e` |
| 17 | `lemma` | [IsAbsoluteValue.abv_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/isabsolutevalue-abv-sum--7cb9490fef340a04125f76bc.md) | 211 | `result-track:7cb9490fef340a04125f76bc38411b9418c2c24f5216a3afa069b317543d0ec4` |
| 18 | `lemma` | [AbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/absolutevalue-map-prod--2a341d2195f8ec92457c2962.md) | 216 | `result-track:2a341d2195f8ec92457c2962d04288553182b075b376c106bd3b0beffc0d01e4` |
| 19 | `lemma` | [IsAbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/isabsolutevalue-map-prod--ee5e6ef3a99c4bf95dbb946f.md) | 222 | `result-track:ee5e6ef3a99c4bf95dbb946f00b33ab7f532e4414f2003d9aac500462d2c1521` |
| 20 | `def` | [evalFinsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/declarations/evalfinsetprod--b89ceba9f21daae6b251b1e3.md) | 248 | `declaration-track:b89ceba9f21daae6b251b1e3cc07a890e9a73c6b93627a53c49d6e058748c264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
