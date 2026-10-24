# Verification target: GRWTSK.Algebra.Basic.Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dadd769a4172867c0c3ac888c2ec5eb4d7bf1c3",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dadd769a4172867c0c3ac888c2ec5eb4d7bf1c3`.

Source path: `GRWTSK/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean.json)

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
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulleft--3218c4608bdf7d299cb5e093.md) | 45 | `declaration-track:3218c4608bdf7d299cb5e0935bb21afb9294fd7d6eb345add330179cd0cc3a35` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright--d9153be5cf80b420e86e3684.md) | 51 | `declaration-track:d9153be5cf80b420e86e3684c57060fca88addd84f1ff1f64be33aee5755e886` |
| 3 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulleft--25e778903194d106e1c845c8.md) | 61 | `declaration-track:25e778903194d106e1c845c89596ee4fe1fac50e0100ade2391502ad245d2d64` |
| 4 | `lemma` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/coe-mulleft--b12a2b2b4171e5d4f6284e87.md) | 66 | `result-track:b12a2b2b4171e5d4f6284e876c0d654ec621e4134d5d653f45a7c6e97d6bd216` |
| 5 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright--d26ec7fefbc82eb6587a9241.md) | 69 | `declaration-track:d26ec7fefbc82eb6587a9241b18be57f89b214757845adc7d139f6c64b43552f` |
| 6 | `lemma` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/coe-mulright--7ebf842016212cdf1bf5737e.md) | 74 | `result-track:7ebf842016212cdf1bf5737ec565f104084244c5f0d53156feda2561e2872750` |
| 7 | `lemma` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright-apply--40afa81bf008e12fd62f72c1.md) | 76 | `result-track:40afa81bf008e12fd62f72c10c0119cc54f195a09bce6e45a50441ae95224404` |
| 8 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mul--9f7a53b05b101da859e0c462.md) | 85 | `declaration-track:9f7a53b05b101da859e0c46237d2927cb817fd5c9c9b24c10b32a6f7789828ce` |
| 9 | `lemma` | [mul_apply](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mul-apply--909e04c6869d89c83af3cb63.md) | 90 | `result-track:909e04c6869d89c83af3cb63c93c584299c28e9507926ab6ca25f9680d8ed07e` |
| 10 | `lemma` | [coe_mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/coe-mul--6be5bdab448565762c02853f.md) | 92 | `result-track:6be5bdab448565762c02853f07ac4092793ed86ac68ab6ec03fa71f89a190ff9` |
| 11 | `lemma` | [coe_flip_mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/coe-flip-mul--be126d1f2d8b976bec17269a.md) | 93 | `result-track:be126d1f2d8b976bec17269a32df1b508701832d0db293624a1c7a0c5e2e301d` |
| 12 | `lemma` | [map_mul_iff](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/map-mul-iff--fcaed8c37f9c0503de2f4c62.md) | 99 | `result-track:fcaed8c37f9c0503de2f4c62fec88afa5b178371797ffb54220487aef6ae5722` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulleft-eq-mulright-iff-forall-commute--02091b4c07abad2f158b6221.md) | 103 | `result-track:02091b4c07abad2f158b6221952602556d13a72e1c76752bb77377ab41792518` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright-eq-mulleft-iff-forall-commute--7fcd5f6a2ce77bf915b9794c.md) | 106 | `result-track:7fcd5f6a2ce77bf915b9794c96bf0e9ebbc814d6b638765797fc276f6d4a0412` |
| 15 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulleft--5205088307a264cd01c62891.md) | 117 | `declaration-track:5205088307a264cd01c628919aec324d1847dc96889d6ffbe6b52cc112a0ce25` |
| 16 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright--1eee809542bbcdb0063719b7.md) | 121 | `declaration-track:1eee809542bbcdb0063719b758f9be1b798938a67327f737b28b7117f921735a` |
| 17 | `lemma` | [mulRight_eq_mulLeft](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulright-eq-mulleft--384c8c627efbc7566b5b85e2.md) | 128 | `result-track:384c8c627efbc7566b5b85e2fddeaa73b9206946cffb12500c46eba387aedb2a` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/mulopposite-insthasdistribneg--684746be89f0d91c1e247d38.md) | 143 | `declaration-track:684746be89f0d91c1e247d386e54608655b630249202fd989cb134019891a006` |
| 19 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/vieta-formula-quadratic--a63b38d1d8b0d60111c13c0d.md) | 161 | `result-track:a63b38d1d8b0d60111c13c0d556df90fc84c7eb39793264e76515d36d933bbf5` |
| 20 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/succ-ne-self--d40d1e41fa6396dc4489a823.md) | 169 | `result-track:d40d1e41fa6396dc4489a823aa74ea11143280bdcc3e5fde040b0250e4b0c205` |
| 21 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/pred-ne-self--efe73461cbee3aa45addc445.md) | 172 | `result-track:efe73461cbee3aa45addc445a206746435972c8a1046a3dabb95d2c680bb83d4` |
| 22 | `lemma` | [isLeftRegular_iff_right_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isleftregular-iff-right-eq-zero-of-mul--5b85abbbcd162e8b58db960c.md) | 183 | `result-track:5b85abbbcd162e8b58db960c28bd9d31a5c71ad5fd9c8f12de81f6c777b18fe5` |
| 23 | `lemma` | [isRightRegular_iff_left_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isrightregular-iff-left-eq-zero-of-mul--232fb701bec92a458d07af2f.md) | 187 | `result-track:232fb701bec92a458d07af2fc91b6a20773be39d6465e0b72c42fc33d6346c18` |
| 24 | `lemma` | [isRegular_iff_eq_zero_of_mul](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isregular-iff-eq-zero-of-mul--48c05507be9ec2213045ae37.md) | 191 | `result-track:48c05507be9ec2213045ae3757b91ceaf0c4fc6c6961eeb3a091c4d102a2d970` |
| 25 | `lemma` | [noZeroDivisors_tfae](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/nozerodivisors-tfae--cf6937fc06951cda92ccc66b.md) | 198 | `result-track:cf6937fc06951cda92ccc66bc92efbd66289d36e67846305a9a231fd44eeaedd` |
| 26 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/iscancelmulzero-iff-nozerodivisors--d70012fdf83ccd5f85238468.md) | 209 | `result-track:d70012fdf83ccd5f85238468746491e89e30eca230e4d7031cf09812f2fb6148` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/instance--7daf585b895faefd9cc57271.md) | 213 | `declaration-track:7daf585b895faefd9cc5727106f3c2e7097a64166003113705f2a39c5c542ae7` |
| 28 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/nozerodivisors-to-isdomain--dc01b9e7119a8d625eb7ee93.md) | 219 | `result-track:dc01b9e7119a8d625eb7ee939ec2182c2ee6a8b512284160645e63f9ad976fd1` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/instance--68b3fa6cf10ea66477bfda8e.md) | 223 | `declaration-track:68b3fa6cf10ea66477bfda8edbc97bbf80a05846d0b44ac51030bf4b349adec3` |
| 30 | `instance` | [Subsingleton.to_isCancelMulZero](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/subsingleton-to-iscancelmulzero--61d845c8e118e37557cfdf69.md) | 227 | `declaration-track:61d845c8e118e37557cfdf6983113a7b51ebc29beab59839a8d1d0e4c6c448c9` |
| 31 | `lemma` | [Subsingleton.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/subsingleton-to-nozerodivisors--7b5e751b1113d572c6fb34fd.md) | 234 | `result-track:7b5e751b1113d572c6fb34fd99e07f7c03f7997d8fc74b2ab25b7da2a570492d` |
| 32 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isdomain-iff-cancelmulzero-and-nontrivial--5a9a9614c9e951e0f37686e8.md) | 239 | `result-track:5a9a9614c9e951e0f37686e893d6ecb7e80feb87038d3397d94d3e03b45f60a3` |
| 33 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/iscancelmulzero-iff-isdomain-or-subsingleton--471f83ab90d7438f9d15c088.md) | 243 | `result-track:471f83ab90d7438f9d15c088c28eab6c10090ef2300de54fd0b6aca17821a9d0` |
| 34 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isdomain-iff-nozerodivisors-and-nontrivial--66d815340c0f93f9e9a9d4e1.md) | 249 | `result-track:66d815340c0f93f9e9a9d4e11141b05309b0dd6754318dc809fc8cab1af78174` |
| 35 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/nozerodivisors-iff-isdomain-or-subsingleton--bba8735d73257ca3b2d3f15f.md) | 253 | `result-track:bba8735d73257ca3b2d3f15f1e4284a26cf05484287045fa3967457316fc6e7b` |
| 36 | `lemma` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/one-div-neg-one-eq-neg-one--18d815198af1c6dcaaaf5a44.md) | 262 | `result-track:18d815198af1c6dcaaaf5a44e345748687013c8846edd1ff5e7e8f5d8930eae6` |
| 37 | `lemma` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/one-div-neg-eq-neg-one-div--155bcea34c6485833056478f.md) | 266 | `result-track:155bcea34c6485833056478fac4fd3fa425cfdadff46fbe8bab3811f9bd4c2d8` |
| 38 | `lemma` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/div-neg-eq-neg-div--26375af7c69488b0f6c7ed5a.md) | 273 | `result-track:26375af7c69488b0f6c7ed5a9a6701946b9305d8357a60f95b2f51d6574fb91f` |
| 39 | `lemma` | [neg_div](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/neg-div--6f234dc8b31d8128e6586165.md) | 280 | `result-track:6f234dc8b31d8128e6586165b508882b2345a06bf50021206489554ad9d72e30` |
| 40 | `lemma` | [neg_div'](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/neg-div--5a1ac9372479692b39d780c0.md) | 283 | `result-track:5a1ac9372479692b39d780c0eaf2d44b2cba5bc87f58de51a70ec2e9484cf5f4` |
| 41 | `lemma` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/neg-div-neg-eq--cd2adc4b6248e5aaa4dcf8ae.md) | 286 | `result-track:cd2adc4b6248e5aaa4dcf8aede34c7df38ea4a09962bffdd3b144d2f768d9934` |
| 42 | `lemma` | [neg_inv](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/neg-inv--939df1fdf8375a26bb836b75.md) | 288 | `result-track:939df1fdf8375a26bb836b752ae2132b2eb9e893950ebd58e5adc03894b2a914` |
| 43 | `lemma` | [div_neg](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/div-neg--514deea548c72ceddcfa7289.md) | 290 | `result-track:514deea548c72ceddcfa72895992028d42e7a6c603968da5500a54092500943a` |
| 44 | `lemma` | [div_neg_eq_neg_div'](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/div-neg-eq-neg-div--452d01259a5c93a097a95a22.md) | 292 | `result-track:452d01259a5c93a097a95a22509484f3a507baaa961267b0378b33b8cc628872` |
| 45 | `lemma` | [inv_neg](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/inv-neg--5b8b323b27e2e37fbaf2d8d3.md) | 295 | `result-track:5b8b323b27e2e37fbaf2d8d321b82ce04d0f022774f338199635d420b84ce936` |
| 46 | `lemma` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/inv-neg-one--036e2dd2bba8af16adf7079f.md) | 297 | `result-track:036e2dd2bba8af16adf7079f9442c1d29760d48eedf156e1d1f46edb96b3cd7c` |
| 47 | `lemma` | [isSelfInv_neg_iff](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isselfinv-neg-iff--db5a43aae181dc335466c916.md) | 300 | `result-track:db5a43aae181dc335466c916055d3b460f35688354fd57655b803b56b814c678` |
| 48 | `lemma` | [isSelfNeg_inv_iff](../../../../mathematics/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/declarations/isselfneg-inv-iff--4188ae4e2af0bf913902f0dd.md) | 306 | `result-track:4188ae4e2af0bf913902f0dd4ff3fed2d521071bcfdf17a3dabed7db2dd489d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
