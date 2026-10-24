# Verification target: GRWTSK.Topology.GeneralTopology.LogBounds.Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13324a4b3623e5c50f44227dd3ad143d1efbc6ed",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13324a4b3623e5c50f44227dd3ad143d1efbc6ed`.

Source path: `GRWTSK/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Convex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuousOn_one_add_mul_inv](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/continuouson-one-add-mul-inv--3a5db10b5207a15351989b4a.md) | 39 | `result-track:3a5db10b5207a15351989b4a40a2ec832a7cd423dab1515e68f3f877b6e5a413` |
| 2 | `lemma` | [log_eq_integral](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/log-eq-integral--3805f87035864e6e140c956d.md) | 46 | `result-track:3805f87035864e6e140c956deff64ac97c2b00203317b75b399e56adb88c57ac` |
| 3 | `lemma` | [log_inv_eq_integral](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/log-inv-eq-integral--77306b8b8bef05bbd09f2e7c.md) | 54 | `result-track:77306b8b8bef05bbd09f2e7ca8072c06d66f4fb96417e01f5be717b193bf6d0c` |
| 4 | `def` | [logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/logtaylor--69ffb51a2636495093fbbbc4.md) | 67 | `declaration-track:69ffb51a2636495093fbbbc4cd01366a78142ae8b6230dc2a70a4dc7af2acaba` |
| 5 | `lemma` | [logTaylor_zero](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/logtaylor-zero--fb16714215146c3896f066be.md) | 69 | `result-track:fb16714215146c3896f066bef2818c008193a4b2bf494957b298feeb820bf6aa` |
| 6 | `lemma` | [logTaylor_succ](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/logtaylor-succ--1fcb1bbeba180bae3f14e405.md) | 74 | `result-track:1fcb1bbeba180bae3f14e405a2e7138ac7e5f1858f33d312f16b2264b0fad6ca` |
| 7 | `lemma` | [logTaylor_at_zero](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/logtaylor-at-zero--ffc9ee6180151ccc4230eb20.md) | 79 | `result-track:ffc9ee6180151ccc4230eb203c4e5341dcc43dac230aa380ad939e76badbda08` |
| 8 | `lemma` | [hasDerivAt_logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/hasderivat-logtaylor--b37015164a13c668cb877595.md) | 84 | `result-track:b37015164a13c668cb8775950308fe7d697e8fca6e58f1efd97486d303ee72c8` |
| 9 | `lemma` | [hasDerivAt_log_sub_logTaylor](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/hasderivat-log-sub-logtaylor--06ff53fbc33b3300c39587fd.md) | 105 | `result-track:06ff53fbc33b3300c39587fd1ef8183723efa4c93ffd600c3a3be446c8a05af5` |
| 10 | `lemma` | [norm_one_add_mul_inv_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-one-add-mul-inv-le--1e14bea204e8dadaae7486b7.md) | 117 | `result-track:1e14bea204e8dadaae7486b761d1dcbb10910cbceee360352ffae4e2d5c4a7e8` |
| 11 | `lemma` | [integrable_pow_mul_norm_one_add_mul_inv](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/integrable-pow-mul-norm-one-add-mul-inv--44b0f1dce6de263fe2cc2cd3.md) | 132 | `result-track:44b0f1dce6de263fe2cc2cd3b851dd254ebc779aceb71411d2a584e2e19e3b22` |
| 12 | `lemma` | [norm_log_sub_logTaylor_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-sub-logtaylor-le--4906119af85d4d6a1cc3854b.md) | 141 | `result-track:4906119af85d4d6a1cc3854b58e18b5db4d418c05d951cd4a059f7bfd5eae1a5` |
| 13 | `lemma` | [norm_log_one_add_sub_self_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-one-add-sub-self-le--d0b2e92895d661ab749125cd.md) | 179 | `result-track:d0b2e92895d661ab749125cd529b3533506e7c6d6aec35b8291df8c9282ad4e0` |
| 14 | `lemma` | [log_sub_logTaylor_isBigO](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/log-sub-logtaylor-isbigo--fa0de1228c03ee0f4dcf6f75.md) | 186 | `result-track:fa0de1228c03ee0f4dcf6f75f3a96a111efbf37a61327fd8ec64b508f1602974` |
| 15 | `lemma` | [log_sub_self_isBigO](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/log-sub-self-isbigo--d8a70e466a196d9cbf5d5140.md) | 200 | `result-track:d8a70e466a196d9cbf5d514064f71200f95f6071be433bf4e5c055efcf5516f5` |
| 16 | `lemma` | [norm_log_one_add_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-one-add-le--6f8386335ef2b11cde99e32b.md) | 205 | `result-track:6f8386335ef2b11cde99e32bce3b2a5ea6ca152502b9a8ff598ec36d6a8dff24` |
| 17 | `lemma` | [norm_log_one_add_half_le_self](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-one-add-half-le-self--23db885c338c1f6d7c453bf9.md) | 211 | `result-track:23db885c338c1f6d7c453bf96c9a2f97741f8f1b9c79c624877ea64f15c4e707` |
| 18 | `lemma` | [norm_log_one_sub_inv_add_logTaylor_neg_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-one-sub-inv-add-logtaylor-neg-le--635ee991a9cdc47aa28f2862.md) | 229 | `result-track:635ee991a9cdc47aa28f28620a081aa2c05e50852089422f31abb7b04d522799` |
| 19 | `lemma` | [norm_log_one_sub_inv_sub_self_le](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/norm-log-one-sub-inv-sub-self-le--aea33f4c64d78107ea1be408.md) | 237 | `result-track:aea33f4c64d78107ea1be408561f892c4d0b0655b215f1bfe724b4ff73a4cddf` |
| 20 | `lemma` | [hasSum_taylorSeries_log](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/hassum-taylorseries-log--201771bedd970f2a999f38c5.md) | 246 | `result-track:201771bedd970f2a999f38c5852183472c86d843b55498a2f7cd44a87ada2bdb` |
| 21 | `lemma` | [hasSum_taylorSeries_neg_log](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/hassum-taylorseries-neg-log--0c12275d0c275dfd58cbe7fe.md) | 279 | `result-track:0c12275d0c275dfd58cbe7fe3fec2d75a8c0de1f1f6f60d0501bfeef2251778f` |
| 22 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-mul-log-one-add-of-tendsto--5b60a61ba40ed3a327d8c410.md) | 303 | `result-track:5b60a61ba40ed3a327d8c4104ccb6caf4193840f483d46c48c678f6379d50a8b` |
| 23 | `lemma` | [tendsto_one_add_cpow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-cpow-exp-of-tendsto--9497946e9bfe35123482d3ff.md) | 324 | `result-track:9497946e9bfe35123482d3ff0cf0dece16b1bbde0924410448207670f040983c` |
| 24 | `lemma` | [tendsto_one_add_div_cpow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-div-cpow-exp--0c50301255f92fd6f2b180ae.md) | 338 | `result-track:0c50301255f92fd6f2b180aee6ffca99f401294d66e9466a0ca21b10b87d5a20` |
| 25 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-nat-mul-log-one-add-of-tendsto--466892d9b93b16006bc77c55.md) | 347 | `result-track:466892d9b93b16006bc77c5534b06feb4fecefd964ea56f670b15bd0dc546470` |
| 26 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-pow-exp-of-tendsto--670adcc03665f9e020aead7f.md) | 355 | `result-track:670adcc03665f9e020aead7f92f698b5b61b0166c8886cb1955513fa2cf12398` |
| 27 | `lemma` | [tendsto_one_add_div_pow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-div-pow-exp--131f096d61196bc3e2d803b7.md) | 362 | `result-track:131f096d61196bc3e2d803b71f9b052646a176f92966c5dda2ecd20ef680f852` |
| 28 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-mul-log-one-add-of-tendsto--8699dbe83bbee8b5ffee9488.md) | 372 | `result-track:8699dbe83bbee8b5ffee94880a89f68d0a913836e3d76be2cc768b2b28d8348c` |
| 29 | `lemma` | [tendsto_one_add_rpow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-rpow-exp-of-tendsto--bd83577f0782328b41557235.md) | 385 | `result-track:bd83577f0782328b4155723519e9e60505402ecee63b739a865bc3993a9961aa` |
| 30 | `lemma` | [tendsto_one_add_div_rpow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-div-rpow-exp--75fc0eb3a532d13937228f3e.md) | 397 | `result-track:75fc0eb3a532d13937228f3e0479846a283d904853fba39ee2366360c2ad35f7` |
| 31 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-nat-mul-log-one-add-of-tendsto--97d862d98bb8cb95e8719ac2.md) | 406 | `result-track:97d862d98bb8cb95e8719ac2b919a55d70aed63a7014385e267a1f3fa8166be8` |
| 32 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-pow-exp-of-tendsto--8f6f5d82ff1b88f03c0106a6.md) | 414 | `result-track:8f6f5d82ff1b88f03c0106a6542513fef04bc69907649f2199ff0c52cc4b5b1a` |
| 33 | `lemma` | [tendsto_one_add_div_pow_exp](../../../../../mathematics/Topology/GeneralTopology/LogBounds/Variante90b545ff243cf245f05e7664b4d3e7f420a839ffbb757a60bab1383a4d1445b.lean/declarations/tendsto-one-add-div-pow-exp--0d9646b9b2f501e61dc8b4d1.md) | 421 | `result-track:0d9646b9b2f501e61dc8b4d1310337f9c57973a9902731c1209a1a3f2a4d2882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
