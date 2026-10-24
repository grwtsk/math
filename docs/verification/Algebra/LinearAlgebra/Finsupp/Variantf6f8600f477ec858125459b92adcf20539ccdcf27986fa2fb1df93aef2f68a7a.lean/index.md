# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5277b8c2087769d46f17dcf5f5bc715b445c1fc",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5277b8c2087769d46f17dcf5f5bc715b445c1fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppLeft](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft--82e729db9861eb93c2f371eb.md) | 88 | `declaration-track:82e729db9861eb93c2f371eb1daa7d6529f4d88f9d2f725816428883ed6b017f` |
| 2 | `lemma` | [finsuppLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-apply-tmul--5017204978a342b6e54f8214.md) | 95 | `result-track:5017204978a342b6e54f8214071c281eac2c2ec9d6b01849f2da0015a0f6059a` |
| 3 | `lemma` | [finsuppLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-apply-tmul-apply--89412526c6ea1bfbfe23b998.md) | 103 | `result-track:89412526c6ea1bfbfe23b998f1b0d92ff12ad481977d0551a1e68cf4008b16cb` |
| 4 | `theorem` | [finsuppLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-apply--0049373ec20a0e25bebba3a9.md) | 108 | `result-track:0049373ec20a0e25bebba3a97779e19fa19b7c70bc152fcf1d57640307cb88d2` |
| 5 | `lemma` | [finsuppLeft_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-symm-apply-single--b48c1553a9778f43b074c102.md) | 116 | `result-track:b48c1553a9778f43b074c102dd49fe8def227ce5149b1d744e48ddc27c3782cc` |
| 6 | `def` | [finsuppRight](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppright--866baa060ebbd96f12d4b133.md) | 123 | `declaration-track:866baa060ebbd96f12d4b1334c08ecee386c15d16b5e44b2a9c1a2a895428d8c` |
| 7 | `lemma` | [finsuppRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppright-apply-tmul--15f55f4eae24ba363276139f.md) | 130 | `result-track:15f55f4eae24ba363276139fffe00678382066bc214fcdbb126810e776fe5496` |
| 8 | `lemma` | [finsuppRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppright-apply-tmul-apply--cac135f476b98fbf69a8318e.md) | 138 | `result-track:cac135f476b98fbf69a8318ef4198d6c86ea0241187f3a066191074c8751a866` |
| 9 | `theorem` | [finsuppRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppright-apply--f691045988d50a5a77574903.md) | 143 | `result-track:f691045988d50a5a77574903bf26ecc7542db6d8d2e369eedd1f23ac0c0ffb6c` |
| 10 | `lemma` | [finsuppRight_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppright-symm-apply-single--8afc45aaa879eec7dcf1c1a5.md) | 151 | `result-track:8afc45aaa879eec7dcf1c1a556ba16e82077ca642f70deae225b488678297199` |
| 11 | `lemma` | [finsuppLeft_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-smul--0da40ef560af90e57579828d.md) | 159 | `result-track:0da40ef560af90e57579828d5404acacef7d4bf7966608e08c796eff778b9b30` |
| 12 | `def` | [finsuppLeft'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft--2c5570b3a661de9601be71a7.md) | 169 | `declaration-track:2c5570b3a661de9601be71a758e079c61d432e8441d022201261e992738de382` |
| 13 | `lemma` | [finsuppLeft'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppleft-apply--f5ef0389e7c04081ba3f9a5f.md) | 175 | `result-track:f5ef0389e7c04081ba3f9a5fe5b41e383484bb69ea80035dd80238cd0e4923dc` |
| 14 | `def` | [finsuppScalarLeft](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarleft--8019dc06b0d66c3dfb126744.md) | 188 | `declaration-track:8019dc06b0d66c3dfb1267440917c386601eda68ed8208eaa4a613478488457b` |
| 15 | `lemma` | [finsuppScalarLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarleft-apply-tmul-apply--464b2c4faa4ce37674f454ea.md) | 194 | `result-track:464b2c4faa4ce37674f454eaf48dba2ee8ad157c69cd1aa0f558e61603776699` |
| 16 | `lemma` | [finsuppScalarLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarleft-apply-tmul--e87673cb81c0d59033f5a1b3.md) | 198 | `result-track:e87673cb81c0d59033f5a1b3f9af5e6b02d893f31c8f93c166b3719ec23fd094` |
| 17 | `lemma` | [finsuppScalarLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarleft-apply--a572a670136f89ba3009c561.md) | 204 | `result-track:a572a670136f89ba3009c561ac976295b785c1e6ad69edd0a1972844ea472a94` |
| 18 | `lemma` | [finsuppScalarLeft_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarleft-symm-apply-single--52ca845a214e66b7afe9506c.md) | 209 | `result-track:52ca845a214e66b7afe9506c2d6a88aea02aa03d954d900ace17f4d6148aa6dd` |
| 19 | `def` | [finsuppScalarRight](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarright--87f263ca640a08b4b03d2895.md) | 217 | `declaration-track:87f263ca640a08b4b03d289543ede6dd5e3c4160902bfed01e45ecda497f77ad` |
| 20 | `lemma` | [finsuppScalarRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarright-apply-tmul-apply--91e91fbdf9c5dfdcd92a27a3.md) | 224 | `result-track:91e91fbdf9c5dfdcd92a27a385750ca4cbc219c350e555738f114b213245d0a4` |
| 21 | `lemma` | [finsuppScalarRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarright-apply-tmul--5009406ed154a10dd8ebca52.md) | 228 | `result-track:5009406ed154a10dd8ebca52e234f905c3c51ee2f198ac3ff8bb19cea4bdb810` |
| 22 | `lemma` | [finsuppScalarRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarright-apply--0ac307ec309dab3f44d00941.md) | 234 | `result-track:0ac307ec309dab3f44d00941f9f65bab6565b974d809ffb302bb2bd210c4bea1` |
| 23 | `lemma` | [finsuppScalarRight_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsuppscalarright-symm-apply-single--27440f126e0c5c512681f573.md) | 239 | `result-track:27440f126e0c5c512681f573cc129f341c1c5ce553ffa35aed970c30c548c109` |
| 24 | `theorem` | [Finsupp.linearCombination_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupp-linearcombination-one-tmul--fcf2e71285c55a5e17316774.md) | 252 | `result-track:fcf2e71285c55a5e17316774334b2f641604384582451b2dc0486f1a727d4975` |
| 25 | `def` | [finsuppTensorFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp--0341ab925b3725710cba166e.md) | 261 | `declaration-track:0341ab925b3725710cba166eca85fa4aaf3d75ac7b6b5d32ea11fc887a4ec2e9` |
| 26 | `theorem` | [finsuppTensorFinsupp_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-single--a680a77de72bf2a4f4eb0cc3.md) | 268 | `result-track:a680a77de72bf2a4f4eb0cc348a55c75b654ea84c59da2660225e0dbc5cdacc4` |
| 27 | `theorem` | [finsuppTensorFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-apply--3e6a0534ad1902d6b62475c1.md) | 274 | `result-track:3e6a0534ad1902d6b62475c151c3b5963de0af0d0a094b601f7dce1881051dae` |
| 28 | `theorem` | [finsuppTensorFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-symm-single--5f2dbe01f9cdfa320a760f70.md) | 289 | `result-track:5f2dbe01f9cdfa320a760f70b77f65cb1140c372ef2dfbe0be4a37f8618b2887` |
| 29 | `def` | [finsuppTensorFinsuppLid](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupplid--0f9515411d3f0f865f0cb690.md) | 296 | `declaration-track:0f9515411d3f0f865f0cb690b237b6cd255bc47d0efba53e1f12a78164092172` |
| 30 | `theorem` | [finsuppTensorFinsuppLid_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupplid-apply-apply--c39784bb534284566ad6b278.md) | 300 | `result-track:c39784bb534284566ad6b27854a51300c5d974feba08146c1f3eb56f02079c0f` |
| 31 | `theorem` | [finsuppTensorFinsuppLid_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupplid-single-tmul-single--9074b4c923859cc440ebf00b.md) | 305 | `result-track:9074b4c923859cc440ebf00baef7795edf31537f36576f68164a97a6bf974124` |
| 32 | `theorem` | [finsuppTensorFinsuppLid_symm_single_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupplid-symm-single-smul--77d03f6dc3c8faeb07f38acb.md) | 311 | `result-track:77d03f6dc3c8faeb07f38acb910ad57d4871c0298f2e3bf16eabd4e3e683396f` |
| 33 | `def` | [finsuppTensorFinsuppRid](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupprid--aa6cb530caeebff5d9db30b6.md) | 318 | `declaration-track:aa6cb530caeebff5d9db30b6251f121d8b5503b2a38d024c38b07cdbed2bc547` |
| 34 | `theorem` | [finsuppTensorFinsuppRid_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupprid-apply-apply--70c812e02d6d0967602c871d.md) | 322 | `result-track:70c812e02d6d0967602c871df9912149c493c7c76ad3b0a9df024b7c257f5003` |
| 35 | `theorem` | [finsuppTensorFinsuppRid_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupprid-single-tmul-single--db68ab694160d10b344d00b8.md) | 327 | `result-track:db68ab694160d10b344d00b836b3925ee4c26c9e75083503f23cc33d9b3740f0` |
| 36 | `theorem` | [finsuppTensorFinsuppRid_symm_single_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupprid-symm-single-smul--a51e8be187411d1489e83fdf.md) | 333 | `result-track:a51e8be187411d1489e83fdf11f10bb057336b214d69ce2f5bd90252e3f5bafe` |
| 37 | `def` | [finsuppTensorFinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp--d2e68da7f0488e6aa7f69965.md) | 340 | `declaration-track:d2e68da7f0488e6aa7f6996597a7d4af97a3314656e2e01394d497b3b0bc2975` |
| 38 | `theorem` | [finsuppTensorFinsupp'_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-apply-apply--bef76177e6550cc23353af0e.md) | 344 | `result-track:bef76177e6550cc23353af0e715cdb6a42ba12744d644b2f3c8a58b8d5230c90` |
| 39 | `theorem` | [finsuppTensorFinsupp'_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-single-tmul-single--e2394b81697fdfebba977c2e.md) | 349 | `result-track:e2394b81697fdfebba977c2e86b843e881a6fc6639b4c0ecb1e5029ca607382c` |
| 40 | `theorem` | [finsuppTensorFinsupp'_symm_single_mul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-symm-single-mul--8bde5504a578ad4aeedfbf23.md) | 354 | `result-track:8bde5504a578ad4aeedfbf2345834ad7b53e99963ef4e64435b2662691671eaf` |
| 41 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_single_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-symm-single-eq-single-one-tmul--c8550d543d8761895af0701b.md) | 359 | `result-track:c8550d543d8761895af0701be46edeb3224a91f13725c9b87edba490c9673795` |
| 42 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_tmul_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupp-symm-single-eq-tmul-single-one--50726a1b79d667ed7869194a.md) | 365 | `result-track:50726a1b79d667ed7869194ad609c32ca3cae110e32f59bdd0a22d9a964610a6` |
| 43 | `theorem` | [finsuppTensorFinsuppLid_self](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupplid-self--4cd30ad87bf4e4593ce18463.md) | 371 | `result-track:4cd30ad87bf4e4593ce1846316d1a93054af23a3169e8802daf3fa99868161e4` |
| 44 | `theorem` | [finsuppTensorFinsuppRid_self](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/declarations/finsupptensorfinsupprid-self--d474f13409254034cb73425a.md) | 374 | `result-track:d474f13409254034cb73425a9a2f8b4f12308db7613cad36f0ea6ccf98c5f0bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
