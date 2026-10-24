# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11a177692bdb3b3f9b1d21ddf8bbe8273772b402",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11a177692bdb3b3f9b1d21ddf8bbe8273772b402`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/relations--720ec0831de94e0174470918.md) | 63 | `declaration-track:720ec0831de94e0174470918d6b95127b30687a9b29b456e53e2d38492a8710e` |
| 2 | `def` | [Quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/quotient--9e13bb112220a86a636ed2d6.md) | 78 | `declaration-track:9e13bb112220a86a636ed2d6d40c5223382e5d6ec520e4c9f929645f95c93b69` |
| 3 | `def` | [toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/toquotient--98e67cb32dc154b4b583db9f.md) | 82 | `declaration-track:98e67cb32dc154b4b583db9f75e267b64613dfbb1079314b323216e686d837d7` |
| 4 | `lemma` | [Quotient.linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/quotient-linearmap-ext--0897b3361158f8884eee889b.md) | 86 | `result-track:0897b3361158f8884eee889b7fa2d70d542cd1fb7e70cbac2cc14475f778bdde` |
| 5 | `lemma` | [surjective_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/surjective-toquotient--3348eecc6295bf5ec497cfb2.md) | 93 | `result-track:3348eecc6295bf5ec497cfb2f8a58a65b32aaab9f6a98ba17817ce191c8211ec` |
| 6 | `lemma` | [ker_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ker-toquotient--7b91d3ed8bb0fd7e4ef881d9.md) | 96 | `result-track:7b91d3ed8bb0fd7e4ef881d91c9d33f7b0f9031b3f8a6db3334c1019e0cdae85` |
| 7 | `lemma` | [toQuotient_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/toquotient-relation--c36b33532145acce9d67d601.md) | 102 | `result-track:c36b33532145acce9d67d60138879d102a1179e620119773422d9280bef3dccc` |
| 8 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/map--9eb134e78151c2ccde90701f.md) | 110 | `declaration-track:9eb134e78151c2ccde90701f48ecb5650d48b02da9b468ccc64f09d0b50a0fd0` |
| 9 | `lemma` | [map_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/map-single--09033a6088ee39ab3f2ed359.md) | 114 | `result-track:09033a6088ee39ab3f2ed3596ebb3d72cf642776642c02f1d3c587236f75c017` |
| 10 | `lemma` | [range_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/range-map--5091b8a64da35b5e1e34cf04.md) | 119 | `result-track:5091b8a64da35b5e1e34cf04a2483e50b77fdf7cc45bc3ead531aa1d35524843` |
| 11 | `lemma` | [toQuotient_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/toquotient-map--725ea913188d8bc489adf75a.md) | 124 | `result-track:725ea913188d8bc489adf75a5010c382437b01804fc95600654520ca123bd0c1` |
| 12 | `lemma` | [toQuotient_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/toquotient-map-apply--f57755c89fbe977fa7705fc7.md) | 127 | `result-track:f57755c89fbe977fa7705fc7095de86b99f0807762315be36e546dae3abdec19` |
| 13 | `structure` | [Solution](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/solution--f9fea760c0f1a8485e94a6d6.md) | 135 | `declaration-track:f9fea760c0f1a8485e94a6d652829f49d7cf1386d0a2664745c7d68b2f204d1a` |
| 14 | `def` | [π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/anonymous--fc962fc6f1a4dab8390185f3.md) | 151 | `declaration-track:fc962fc6f1a4dab8390185f3e4c2dacf0306b88f39729078708c217167325876` |
| 15 | `lemma` | [π_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/single--c95f797cc8cd2ff13d633c4e.md) | 154 | `result-track:c95f797cc8cd2ff13d633c4ebc314cac38a58ac3b72ba9ee6b5f160964eaa0e4` |
| 16 | `lemma` | [π_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/relation--f45b6c75133ffacac7310ae6.md) | 158 | `result-track:f45b6c75133ffacac7310ae6917d49b25ed0f65f52b0b6cc1c33506a0d48aba3` |
| 17 | `lemma` | [π_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/comp-map--59686a984863414312fefecc.md) | 162 | `result-track:59686a984863414312fefecc1638fa82c03110e24daf717efe389cb524fd148a` |
| 18 | `lemma` | [π_comp_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/comp-map-apply--af5821488e8f15ba6b88cc6c.md) | 165 | `result-track:af5821488e8f15ba6b88cc6c3829752aa8d1010914bbb00005b85265aae776c2` |
| 19 | `lemma` | [range_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/range--47d18df750b46f82ceada76f.md) | 169 | `result-track:47d18df750b46f82ceada76fe6bf3c767fa821a1d16fc090eb3c88af5030cf17` |
| 20 | `lemma` | [span_relation_le_ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/span-relation-le-ker--99c44f605fdef2c1746de1f0.md) | 172 | `result-track:99c44f605fdef2c1746de1f08804905a6c65ada9e86f8547bf9d433392442ef4` |
| 21 | `def` | [fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/fromquotient--239f8faae6bc4136511ec735.md) | 180 | `declaration-track:239f8faae6bc4136511ec73503777314628817017902e8ed51a963356d6c0832` |
| 22 | `lemma` | [fromQuotient_comp_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/fromquotient-comp-toquotient--8a5d75d3340f1aeb2ed7258b.md) | 184 | `result-track:8a5d75d3340f1aeb2ed7258bf3589cfb4c27d88ab168e63802be281d82d24d46` |
| 23 | `lemma` | [fromQuotient_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/fromquotient-toquotient--9c17a9d063b9a8bb820057d9.md) | 188 | `result-track:9c17a9d063b9a8bb820057d97e8595d50dfb05628f69328af43b8a4a3e5ffa7c` |
| 24 | `def` | [postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp--a6117745d4cfe8380245af11.md) | 195 | `declaration-track:a6117745d4cfe8380245af1174a76102fba4345cd2d79d1ba8901336bc9762f4` |
| 25 | `lemma` | [postcomp_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-comp--27c4db547d9bb055af0c1c9b.md) | 202 | `result-track:27c4db547d9bb055af0c1c9b7dfbd45be00a2da4b76a7a33d6f77bfbd1f04d26` |
| 26 | `lemma` | [postcomp_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-id--dbd4d0ac3e437ed0570e885b.md) | 206 | `result-track:dbd4d0ac3e437ed0570e885b6560a7c098c634f2c34be329c5e3143b0f7491bb` |
| 27 | `lemma` | [congr_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/congr-var--cdc7b896f9f74fe6d7e8ea78.md) | 210 | `result-track:cdc7b896f9f74fe6d7e8ea781c8a16f34adc63b622ef796ddd7fee48cf134ffd` |
| 28 | `lemma` | [congr_postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/congr-postcomp--09320bbd6ea1a58365870ef6.md) | 213 | `result-track:09320bbd6ea1a58365870ef653970856a07225656cc1bd813af8da483f830020` |
| 29 | `def` | [ofπ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/of--b78443b5bb54d9c42e253a5f.md) | 227 | `declaration-track:b78443b5bb54d9c42e253a5fe2ce0727d9059d2ad98e727a0f712b0b31ec20de` |
| 30 | `lemma` | [ofπ_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/of--b6a5b60be737824e7bc07044.md) | 235 | `result-track:b6a5b60be737824e7bc07044ce8dd13bb664bf88f19b8124535508fff2447a6f` |
| 31 | `def` | [ofπ'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/of--34cf9a9dce7962d4d6de3d61.md) | 246 | `declaration-track:34cf9a9dce7962d4d6de3d6154a2c5dc6a04d2fe41e0b0d9b85e0eb849f66da8` |
| 32 | `lemma` | [ofπ'_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/of--40858a5899486edd9cea2f21.md) | 251 | `result-track:40858a5899486edd9cea2f211f59d21c1fb756f0c253b75b6c8d6f583f28cbd4` |
| 33 | `lemma` | [injective_fromQuotient_iff_ker_π_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/injective-fromquotient-iff-ker-eq-span--d478aad07302fadcfc4d65c2.md) | 259 | `result-track:d478aad07302fadcfc4d65c2fbaed135a3f1cf7bc6b56c9c3972c6e69fb1c696` |
| 34 | `lemma` | [surjective_fromQuotient_iff_surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/surjective-fromquotient-iff-surjective--e293214214dfc374cb146a54.md) | 276 | `result-track:e293214214dfc374cb146a5464afb4d382185092bff3e4c18564609a7c6d22ae` |
| 35 | `lemma` | [surjective_π_iff_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/surjective-iff-span-eq-top--63c5fc206bb2ec4fbec94827.md) | 282 | `result-track:63c5fc206bb2ec4fbec9482755786b254768ba5af350d93d1537543389dd6496` |
| 36 | `structure` | [IsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ispresentation--91a6dd96c4b50a4115c678c9.md) | 291 | `declaration-track:91a6dd96c4b50a4115c678c998a1c156b7d24fcebff9859ae674112ba88f6058` |
| 37 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/linearequiv--ecd526cf62de9da7af4a140f.md) | 303 | `declaration-track:ecd526cf62de9da7af4a140fc1d299705e88ca2a083b85a1f96896a504d14e71` |
| 38 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/linearequiv-apply--d18c1d16cfde1649fc825bfd.md) | 306 | `result-track:d18c1d16cfde1649fc825bfd9fabcacbe2cd48c540738b672a760f432c631b9f` |
| 39 | `lemma` | [linearEquiv_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/linearequiv-symm-var--a9599307d4a1e34221df93a0.md) | 310 | `result-track:a9599307d4a1e34221df93a079e0681bf33c424606eca3337e61b9c6aa7bd93a` |
| 40 | `lemma` | [surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/surjective--584b7a2a8970404c5466d24f.md) | 314 | `result-track:584b7a2a8970404c5466d24f30854644cd3bd91294e35d702588b0315670c4f1` |
| 41 | `lemma` | [ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ker--2de32eddf03ea3e9d880c21c.md) | 317 | `result-track:2de32eddf03ea3e9d880c21cc6a97d11d3c3c1fa2b4b0be11c70ec0fed08eb41` |
| 42 | `lemma` | [exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/exact--286c0891b412d68e1d108e04.md) | 321 | `result-track:286c0891b412d68e1d108e04227b438c818a428fd4bf30dc33cb0ee6badab719` |
| 43 | `def` | [desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/desc--77da054f30f8107970e4c41a.md) | 329 | `declaration-track:77da054f30f8107970e4c41a7b39ad25809def66946292ebc561ee44b337b1c7` |
| 44 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/desc-var--8e39d99ff228a166e9c094b9.md) | 333 | `result-track:8e39d99ff228a166e9c094b9d8c4cc11854f76a8090cd9ed6452d9809dc76f07` |
| 45 | `lemma` | [desc_comp_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/desc-comp--f54f1cbc0ff8c300e88db79a.md) | 339 | `result-track:f54f1cbc0ff8c300e88db79a5aa9b139471c71e9f0780e04ea5541a73947f1a8` |
| 46 | `lemma` | [π_desc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/desc-apply--c5bafdd03d380f28ec95ccb8.md) | 342 | `result-track:c5bafdd03d380f28ec95ccb8472930d5c319be1976ee1d4791ac3bf9c285cc7b` |
| 47 | `lemma` | [postcomp_desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-desc--0a6e7901922994c8c4a804b5.md) | 347 | `result-track:0a6e7901922994c8c4a804b5e9b965a33c8133663a121c69a28fc62a6fea8934` |
| 48 | `lemma` | [postcomp_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-injective--b7d414ea9e4fba124fc6c09e.md) | 350 | `result-track:b7d414ea9e4fba124fc6c09e484b6a2a8cae4b417856da9c3e7b53bb81e5f1d8` |
| 49 | `def` | [linearMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/linearmapequiv--3d2eaf9103602dac9fb0336c.md) | 363 | `declaration-track:3d2eaf9103602dac9fb0336c9c1dc9ca66131f157f7f1d195bc905e44f42541b` |
| 50 | `def` | [uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/uniq--3e78f660c0fee24913aedd6e.md) | 375 | `declaration-track:3e78f660c0fee24913aedd6eb5a53ba8224dc086b8336389568c3344f753a5b3` |
| 51 | `lemma` | [postcomp_uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-uniq--186a25dddce6eaa4bf93428c.md) | 381 | `result-track:186a25dddce6eaa4bf93428c882a01393bd4931c54c3e3de8c0679eeb25d7952` |
| 52 | `lemma` | [postcomp_uniq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/postcomp-uniq-symm--b606d9aa26492ed32b0e1c4f.md) | 385 | `result-track:b606d9aa26492ed32b0e1c4f75235886b7278a9966df12dfbdf3758e8db4d3cf` |
| 53 | `lemma` | [uniq_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/uniq-var--612e82ee01f5330dcd80ac00.md) | 389 | `result-track:612e82ee01f5330dcd80ac00f2efd49109c7a412d4c6af019b142fdba11aab56` |
| 54 | `lemma` | [uniq_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/uniq-symm-var--468bef1f5624cb0b4cbc7978.md) | 393 | `result-track:468bef1f5624cb0b4cbc7978ec05419bbc08f056cce362625f4cc131e365befa` |
| 55 | `lemma` | [of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/of-linearequiv--085896cae2d261709b68cefa.md) | 398 | `result-track:085896cae2d261709b68cefa1ee89d6bac7489188184940bcd22814586ef960f` |
| 56 | `def` | [ofQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ofquotient--53e1f5cd570e63b0a9a0644a.md) | 412 | `declaration-track:53e1f5cd570e63b0a9a0644a9e52be9d9b03e96c7a29f0d6a39d5659a502e3c5` |
| 57 | `lemma` | [ofQuotient_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ofquotient--768db04ee355fe17c69099d2.md) | 416 | `result-track:768db04ee355fe17c69099d2520227af1f0ae8d998a12db65757ee2294b5c70d` |
| 58 | `lemma` | [ofQuotient_fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ofquotient-fromquotient--07ed00638a9b23e63a445a32.md) | 419 | `result-track:07ed00638a9b23e63a445a329d8f2218011697bbe0eb39555fb7a31bdbbc6bd5` |
| 59 | `lemma` | [ofQuotient_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ofquotient-ispresentation--ae7bce7e6be30cff0e173d9c.md) | 421 | `result-track:ae7bce7e6be30cff0e173d9ca86be42daee1f8b35195240da252720308d40377` |
| 60 | `structure` | [IsPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ispresentationcore--f63f3b4f55387455fcbfd9a7.md) | 431 | `declaration-track:f63f3b4f55387455fcbfd9a72f9103628b53783f21bb2f4f3bbeae846c50028f` |
| 61 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/desc-var--fedef3d80e01330e79f15d35.md) | 445 | `result-track:fedef3d80e01330e79f15d35c6c658e6af22b357331ba783642369f8d7c41623` |
| 62 | `def` | [down](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/down--3762cf4724a5283f063677fc.md) | 451 | `declaration-track:3762cf4724a5283f063677fc6844a109d9b935b356d5f4bc2b30f7dd86a18472` |
| 63 | `lemma` | [isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ispresentation--25b8cda8ebae671239a53151.md) | 465 | `result-track:25b8cda8ebae671239a5315125951eb2007a64ab10cd9b7246cff7d25cb5d462` |
| 64 | `lemma` | [isPresentation_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ispresentation-iff--75421df1e31803def619b65f.md) | 479 | `result-track:75421df1e31803def619b65f5fc3e0c5791b849b2b0bd5e6328e1ab0ef469b18` |
| 65 | `lemma` | [isPresentation_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/ispresentation-mk--070171aff307cc8aa005618a.md) | 487 | `result-track:070171aff307cc8aa005618a8657f817058c4faaa233cb5e32e8efccad3a7761` |
| 66 | `structure` | [Presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/presentation--b494e75cb955ef27ebcfbb5f.md) | 502 | `declaration-track:b494e75cb955ef27ebcfbb5fc1416db4a4544b002f4c002aa846e85341205cd9` |
| 67 | `def` | [Presentation.ofIsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/presentation-ofispresentation--cffd79a5868542a408c9790f.md) | 509 | `declaration-track:cffd79a5868542a408c9790f26d9826bf6ceab3a0a3e1553c8a9fedeb9a23ff9` |
| 68 | `def` | [Presentation.ofLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/declarations/presentation-oflinearequiv--cd39bf224eb21219fc8c30e9.md) | 519 | `declaration-track:cd39bf224eb21219fc8c30e9f70d51db04399b8d3123765c83f090ff76cd1a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
