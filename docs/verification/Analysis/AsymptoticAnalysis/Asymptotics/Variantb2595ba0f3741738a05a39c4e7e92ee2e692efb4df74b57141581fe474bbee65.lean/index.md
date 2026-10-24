# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cffe78f934d18e0a535912f3e392e1e79f243d0a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cffe78f934d18e0a535912f3e392e1e79f243d0a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-attop--2db0126c07205c4ad55740ab.md) | 40 | `result-track:2db0126c07205c4ad55740ab04b222fb5b2f61f5527b8bfb68fd255f494f5f52` |
| 2 | `theorem` | [tendsto_rpow_neg_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-neg-attop--77a099843c70435f13dc8b9c.md) | 47 | `result-track:77a099843c70435f13dc8b9c9065e6c0c8d60c96b93ef4511ff224a348040bea` |
| 3 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-attop-of-base-lt-one--e4defe93f973b0b21fbac49f.md) | 52 | `result-track:e4defe93f973b0b21fbac49f48e61718fb3b43409b7323089243a256c73a23a2` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-attop-of-base-gt-one--586055985b109cac3a119c9d.md) | 77 | `result-track:586055985b109cac3a119c9d815e363f3d283d784ba15fadcae7c714054f670a` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--eb16c6d531494dd7cedd59a0.md) | 83 | `result-track:eb16c6d531494dd7cedd59a0b701cb74e402ca725e8432ad0cd72a03bd738088` |
| 6 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-atbot-of-base-gt-one--aa25ee7331ef91f4d234ed53.md) | 89 | `result-track:aa25ee7331ef91f4d234ed538baab6d25c5e7380e247e1dcd6c8ac1e6c6f8561` |
| 7 | `theorem` | [tendsto_rpow_div_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-div-mul-add--a79ebe8b1a79d9ec9d6acfb5.md) | 98 | `result-track:a79ebe8b1a79d9ec9d6acfb556418a3a0a91164f1df2caac17d47cf4c278f239` |
| 8 | `theorem` | [tendsto_rpow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-div--4eb7e6674b310db423a05a99.md) | 115 | `result-track:4eb7e6674b310db423a05a99094e3806a1fef76f832d09e855b35c4bacfec8c7` |
| 9 | `theorem` | [tendsto_rpow_neg_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-neg-div--ed27f6dfd129da7934bd7962.md) | 120 | `result-track:ed27f6dfd129da7934bd79621981f131487301a7eb40b28f090b50d0f1fdec16` |
| 10 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-exp-div-rpow-attop--f20b50c4d1b3c74649a50ff7.md) | 125 | `result-track:f20b50c4d1b3c74649a50ff70cc0fa20012ccbc14ffb96211e211d2943d95aef` |
| 11 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-exp-mul-div-rpow-attop--48dc345a07ee706069eb3f0b.md) | 133 | `result-track:48dc345a07ee706069eb3f0bd8a306c61ce080fef6b926aadec71cad59c3d015` |
| 12 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero--61f6cc54ee529b460f4ac768.md) | 141 | `result-track:61f6cc54ee529b460f4ac7681dbd7cbcee0ae38be309ca126957f757fef0e0a1` |
| 13 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/nnreal-tendsto-rpow-attop--c8533fbe0999b1e399ee705b.md) | 146 | `result-track:c8533fbe0999b1e399ee705ba3525743b46a90995073d9b7b5e1704b8f6b056a` |
| 14 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/ennreal-tendsto-rpow-at-top--5fb23ce82c376e99dd287948.md) | 155 | `result-track:5fb23ce82c376e99dd287948be49d7cf2ff9ef23957d723f0b146ea09addbb46` |
| 15 | `theorem` | [isTheta_exp_arg_mul_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/istheta-exp-arg-mul-im--0853b8d3e5102675868b0dbf.md) | 185 | `result-track:0853b8d3e5102675868b0dbf957f0b28f862e0255a94c85bd96b045460ef1d1f` |
| 16 | `theorem` | [isBigO_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-cpow-rpow--1a09106c96bb0a413f0bc36b.md) | 194 | `result-track:1a09106c96bb0a413f0bc36be1447ec540799c5c1e933fd1a6903838362938f3` |
| 17 | `theorem` | [isTheta_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/istheta-cpow-rpow--2c3d5c1f0e4f6ffc7da987f8.md) | 205 | `result-track:2c3d5c1f0e4f6ffc7da987f86c21b24f78a1f57df68aef8b42385dc2c585fddd` |
| 18 | `theorem` | [isTheta_cpow_const_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/istheta-cpow-const-rpow--ee732aeac218fd37295942cc.md) | 217 | `result-track:ee732aeac218fd37295942ccf0cd236c83915f3840d840a2cb755c53394a810b` |
| 19 | `theorem` | [IsBigOWith.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigowith-rpow--92aff5c931f125ee8d7288fd.md) | 232 | `result-track:92aff5c931f125ee8d7288fd3239e824a7b7af70d80e8a41efa7f115ad98115c` |
| 20 | `theorem` | [IsBigO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-rpow--57a87bccfeb2382504944cdb.md) | 241 | `result-track:57a87bccfeb2382504944cdb5b91a2e927b1852562dd6528f8ddb7e1fb189d96` |
| 21 | `theorem` | [IsTheta.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/istheta-rpow--37d40d3a6e4cb75411d1af1f.md) | 246 | `result-track:37d40d3a6e4cb75411d1af1f6efd4a9fd241e00c31d640c745aa75a0aaf19f46` |
| 22 | `theorem` | [IsLittleO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-rpow--5ad5bf27ea578e213e755805.md) | 250 | `result-track:5ad5bf27ea578e213e755805aa4af644ae09581548d7e67efcc9ae3bf8fe6b91` |
| 23 | `lemma` | [IsBigO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-sqrt--cad8f7976a03cfa5c5bbcf73.md) | 256 | `result-track:cad8f7976a03cfa5c5bbcf73f3213169dc3b0654973a52502aef7f939e19784e` |
| 24 | `lemma` | [IsLittleO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-sqrt--7a27324671f478898fd751ca.md) | 260 | `result-track:7a27324671f478898fd751cab6b462b92fca9b12ea10388f0713d54d5939eee7` |
| 25 | `lemma` | [IsTheta.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/istheta-sqrt--f64ae1783fcc7abc3b39c83e.md) | 264 | `result-track:f64ae1783fcc7abc3b39c83e376b0cde826e6aa92ddf044d6d756d69a839bbc1` |
| 26 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow--63f164654abc11303d3036e5.md) | 268 | `result-track:63f164654abc11303d3036e503508ac7706d4bc002ccf1b066cd8c1f0c502885` |
| 27 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-mul-attop-rpow-of-isbigo-rpow--8e1851aab121ec463de949e7.md) | 278 | `result-track:8e1851aab121ec463de949e79409e26b0d066eaf70bb60d456e4bd7612a4b606` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow--b0be83265f4c405f4e1ef894.md) | 288 | `result-track:b0be83265f4c405f4e1ef894597dc8a40ee61bcc01d2a93aa3aff38cfc14881b` |
| 29 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-rpow-exp-pos-mul-attop--9d73e31d715d874a7adafa24.md) | 304 | `result-track:9d73e31d715d874a7adafa24576d81677346652f9b27f5e82d544ad52b4d67c8` |
| 30 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-zpow-exp-pos-mul-attop--7e5bf1c174d1b2c2de330063.md) | 311 | `result-track:7e5bf1c174d1b2c2de330063e470e8bd478a0232e45c5c5a08d5194511f7b403` |
| 31 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-pow-exp-pos-mul-attop--52bdbb1aad6e1e6ad0e70310.md) | 316 | `result-track:52bdbb1aad6e1e6ad0e703100c67300a9ebdf861c46171bc6f17c8b60117a837` |
| 32 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-rpow-exp-attop--79e2e9ca86f5bcee7e91fde7.md) | 321 | `result-track:79e2e9ca86f5bcee7e91fde7fcb3e5833edb17eb66e52b61949f76a35cb65a74` |
| 33 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-exp-neg-mul-rpow-attop--9eef13c161cc56fab3069bc3.md) | 325 | `result-track:9eef13c161cc56fab3069bc37de8d1c9e1209bab56aa7b298d723abe589c173f` |
| 34 | `theorem` | [isLittleO_log_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-log-rpow-attop--c4b31f1468367a29aa5a2e78.md) | 335 | `result-track:c4b31f1468367a29aa5a2e78f2fb12dd831af70985dbeb4440fce6afeb811c13` |
| 35 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-log-rpow-rpow-attop--9e990c30a6a495472394cc67.md) | 342 | `result-track:9e990c30a6a495472394cc671376fee12839c2741c393440b115891119992c86` |
| 36 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero--5f59e137bfc543bbace3d834.md) | 360 | `result-track:5f59e137bfc543bbace3d83416636ce888f975e0b2110185f61593a2cb2fb763` |
| 37 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/islittleo-log-rpow-nhdsgt-zero--2c3b80f181f57a4c336c4cb5.md) | 371 | `result-track:2c3b80f181f57a4c336c4cb5560f840872af0d86f712588b510ac58648c6e00b` |
| 38 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-log-div-rpow-nhdsgt-zero--25a96ae1b4ac0cf6aec22d8e.md) | 380 | `result-track:25a96ae1b4ac0cf6aec22d8e552e36c2cb7c2121a9fd9a10d489dcbaf419374c` |
| 39 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-log-mul-rpow-nhdsgt-zero--78687f6fa60ef700536060cc.md) | 387 | `result-track:78687f6fa60ef700536060ccb924694341954c5d1eac19cc59b644da1111a91a` |
| 40 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean/declarations/tendsto-log-mul-self-nhdslt-zero--5ee709bb6833a6dba2e8db85.md) | 395 | `result-track:5ee709bb6833a6dba2e8db85ab34ee1bac8d3ac14a5397fc34791f40d5c42b72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
