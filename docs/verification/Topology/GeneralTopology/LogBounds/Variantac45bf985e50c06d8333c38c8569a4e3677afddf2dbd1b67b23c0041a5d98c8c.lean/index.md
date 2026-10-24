# Verification target: GRWTSK.Topology.GeneralTopology.LogBounds.Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c37eb735ffa490a848dc1e3302813ea2349c71",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c37eb735ffa490a848dc1e3302813ea2349c71`.

Source path: `GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Convex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuousOn_one_add_mul_inv](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/continuouson-one-add-mul-inv--40a10715600deca85b523965.md) | 31 | `result-track:40a10715600deca85b5239652e8ed95d8dfe32a14cb1962a02c87c87112f6f61` |
| 2 | `lemma` | [log_eq_integral](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/log-eq-integral--b717581d9aef92414985fa4a.md) | 38 | `result-track:b717581d9aef92414985fa4ad53bbc27e9a3458b5573ab05a79a5a0ba40712d4` |
| 3 | `lemma` | [log_inv_eq_integral](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/log-inv-eq-integral--df1c13d0291f196c8ede71e5.md) | 46 | `result-track:df1c13d0291f196c8ede71e580718e5fd2bbd02c5c1930328995cce5f579b066` |
| 4 | `def` | [logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/logtaylor--2b2437b0dc6e3de125e28e3e.md) | 59 | `declaration-track:2b2437b0dc6e3de125e28e3e4d4e6269326a9b7409d101d70897a5d4a412288d` |
| 5 | `lemma` | [logTaylor_zero](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/logtaylor-zero--002d504ea79e1d01d45718c0.md) | 61 | `result-track:002d504ea79e1d01d45718c0b97810271a001eed249ffca446848f12113b1bf4` |
| 6 | `lemma` | [logTaylor_succ](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/logtaylor-succ--46754c2bc218e24c2c632206.md) | 66 | `result-track:46754c2bc218e24c2c6322069fe6bcc68f7ad9693402a59bd6cba85c0020bfe1` |
| 7 | `lemma` | [logTaylor_at_zero](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/logtaylor-at-zero--d9ecdd04677f5d74b68930be.md) | 71 | `result-track:d9ecdd04677f5d74b68930beaae25105f57dfaac1a0a8237f5e2429d82f8c671` |
| 8 | `lemma` | [hasDerivAt_logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/hasderivat-logtaylor--50c8b12449061cb1767f2e57.md) | 76 | `result-track:50c8b12449061cb1767f2e57b29b158c311aa75fed3b0d5ad8ed5120d6831048` |
| 9 | `lemma` | [hasDerivAt_log_sub_logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/hasderivat-log-sub-logtaylor--141afd970e9304c32cb60559.md) | 97 | `result-track:141afd970e9304c32cb605591414463636e69f589a61fb77b175338560ab0d8a` |
| 10 | `lemma` | [norm_one_add_mul_inv_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-one-add-mul-inv-le--c3e2c338f28268f1b0feee86.md) | 109 | `result-track:c3e2c338f28268f1b0feee862495a9fb693f1d238075ea91c0c033e2530ec4e3` |
| 11 | `lemma` | [integrable_pow_mul_norm_one_add_mul_inv](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/integrable-pow-mul-norm-one-add-mul-inv--8a64b386b10272bd372554e8.md) | 124 | `result-track:8a64b386b10272bd372554e889aa25e728d3aec0f0f7f83806174a1ca0490949` |
| 12 | `lemma` | [norm_log_sub_logTaylor_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-sub-logtaylor-le--84465761fe0cc70465be8a50.md) | 133 | `result-track:84465761fe0cc70465be8a501cace0f0e134507872294c7e7d740cffa2869be8` |
| 13 | `lemma` | [norm_log_one_add_sub_self_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-one-add-sub-self-le--b98d5c6375f41e4a3a11fe77.md) | 171 | `result-track:b98d5c6375f41e4a3a11fe77ab69ddd0d098fb7a64828706dd192be3cfb91f4a` |
| 14 | `lemma` | [log_sub_logTaylor_isBigO](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/log-sub-logtaylor-isbigo--af0f71bb4517d5246a36573d.md) | 178 | `result-track:af0f71bb4517d5246a36573d4830f0156e44505b24fe8887a87345c542d020e3` |
| 15 | `lemma` | [log_sub_self_isBigO](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/log-sub-self-isbigo--00bddb73e575ce2fbc1c0f2b.md) | 192 | `result-track:00bddb73e575ce2fbc1c0f2b9a48d44da0148a61f5df27584e3f082cf34e33e7` |
| 16 | `lemma` | [norm_log_one_add_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-one-add-le--9f3f165ec96d6c5c70ffa101.md) | 197 | `result-track:9f3f165ec96d6c5c70ffa1013c7540495788a14455a738ef0d073b2d0e534a16` |
| 17 | `lemma` | [norm_log_one_add_half_le_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-one-add-half-le-self--20b5d2e3e26a45b271ecfe3c.md) | 203 | `result-track:20b5d2e3e26a45b271ecfe3cd64187a32241be66f79c8e35bb7fba205352be07` |
| 18 | `lemma` | [norm_log_one_sub_inv_add_logTaylor_neg_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-one-sub-inv-add-logtaylor-neg-le--d8104e0942635f0402277816.md) | 221 | `result-track:d8104e0942635f0402277816bebf98290009d940a3d5bf50e5bc85a8c7c668f2` |
| 19 | `lemma` | [norm_log_one_sub_inv_sub_self_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/norm-log-one-sub-inv-sub-self-le--6357f7e4b74b4031b9c47df8.md) | 229 | `result-track:6357f7e4b74b4031b9c47df8e8052c40e893a4f4ec9cb3e1d2e130c65253b5ec` |
| 20 | `lemma` | [hasSum_taylorSeries_log](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/hassum-taylorseries-log--4db8b8c21671e4e9587884ef.md) | 238 | `result-track:4db8b8c21671e4e9587884ef6f4297fb722e6a5415df35558d127004e3f43e15` |
| 21 | `lemma` | [hasSum_taylorSeries_neg_log](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/hassum-taylorseries-neg-log--d1f3e5186cdc346bf5f55d04.md) | 271 | `result-track:d1f3e5186cdc346bf5f55d04c93edb4ae4a34824b8ea9e78e181ced833bd6c7b` |
| 22 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-mul-log-one-add-of-tendsto--7e91c87bec73725f9651fe72.md) | 295 | `result-track:7e91c87bec73725f9651fe72dc67b5dad0307a1bd5a76fb3c91aed07e4b28892` |
| 23 | `lemma` | [tendsto_one_add_cpow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-cpow-exp-of-tendsto--369fa14f1035c55bd4450e75.md) | 316 | `result-track:369fa14f1035c55bd4450e75ba576303511cd0561949547fef7b863e64bd5eba` |
| 24 | `lemma` | [tendsto_one_add_div_cpow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-div-cpow-exp--1c10bd584c5e36c93e7744e1.md) | 330 | `result-track:1c10bd584c5e36c93e7744e1be015c58c55b97329139a21f0c273c2dec8158f0` |
| 25 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-nat-mul-log-one-add-of-tendsto--e25632fb39ba8aaaa75e3684.md) | 339 | `result-track:e25632fb39ba8aaaa75e3684a9e3bcaf46b2bde65ea7bef1d25429f23b223e7b` |
| 26 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-pow-exp-of-tendsto--e974a5c638ef2ebb2cdeb4f5.md) | 347 | `result-track:e974a5c638ef2ebb2cdeb4f5b52bbcc56e85e371d3f9c3843a607df6877d22cd` |
| 27 | `lemma` | [tendsto_one_add_div_pow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-div-pow-exp--65285796c508553284840797.md) | 354 | `result-track:65285796c50855328484079724c5def2436ef6a47c5ff794512f07160fd1b804` |
| 28 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-mul-log-one-add-of-tendsto--23ab4e7f2b0524a984ae404a.md) | 364 | `result-track:23ab4e7f2b0524a984ae404a15d74263c92e3cdcc0ebb3f4863343cd81f0ab67` |
| 29 | `lemma` | [tendsto_one_add_rpow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-rpow-exp-of-tendsto--d649443292eaf457614eb9d7.md) | 377 | `result-track:d649443292eaf457614eb9d7cf582d6b7074d35db8c9d6bf54cb0b769fd5c9e0` |
| 30 | `lemma` | [tendsto_one_add_div_rpow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-div-rpow-exp--5b72339600c6d65027e51eba.md) | 389 | `result-track:5b72339600c6d65027e51ebaa9f0180b9594cc4d8a5215ddabc6d65a82824816` |
| 31 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-nat-mul-log-one-add-of-tendsto--03848900964daff886e234e6.md) | 398 | `result-track:03848900964daff886e234e6675df5e6f590b40908f3b1820190de8601917cd9` |
| 32 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-pow-exp-of-tendsto--df90c550f4ef281bbabc28ed.md) | 406 | `result-track:df90c550f4ef281bbabc28ed1334de757b2a77f3ecfb58566f180127cf818523` |
| 33 | `lemma` | [tendsto_one_add_div_pow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean/declarations/tendsto-one-add-div-pow-exp--5c62ce891427ac7a65e93851.md) | 413 | `result-track:5c62ce891427ac7a65e93851c301605f169c6e2e58cee22d3f12370059e5e20a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
