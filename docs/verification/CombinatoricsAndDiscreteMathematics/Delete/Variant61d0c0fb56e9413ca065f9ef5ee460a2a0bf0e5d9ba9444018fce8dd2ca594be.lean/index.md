# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Delete.Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca7683661fc8f0a9360955379480102dfbfdf4d1",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca7683661fc8f0a9360955379480102dfbfdf4d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean.json)

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
| 1 | `def` | [delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete--c362d7951083141308588bc4.md) | 51 | `declaration-track:c362d7951083141308588bc4f4ee71f841b6d326ca77a631add94f1d4e05288e` |
| 2 | `lemma` | [delete_eq_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-eq-restrict--ad4fa3abdd427e3407b0f4f6.md) | 56 | `result-track:ad4fa3abdd427e3407b0f4f6355a9303ae1e5e6531d1f5973b98efcdc46572fd` |
| 3 | `lemma` | [restrict_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/restrict-compl--52ecea9181ab959e0b7f3130.md) | 58 | `result-track:52ecea9181ab959e0b7f313025328e6c6ff48298fdc920887603c64e1d009276` |
| 4 | `lemma` | [delete_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-compl--5700af5cc371fb19d7b02e03.md) | 61 | `result-track:5700af5cc371fb19d7b02e03e645e8645eb5abc715c05f758bc31aed759195a4` |
| 5 | `lemma` | [delete_isRestriction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isrestriction--eda5489f9240e5d1aa847442.md) | 65 | `result-track:eda5489f9240e5d1aa8474427e96fc26d06d6164b1b7aa1ea6c93113aef7c726` |
| 6 | `lemma` | [IsRestriction.exists_eq_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isrestriction-exists-eq-delete--4000286d1d1c871a9139a48f.md) | 68 | `result-track:4000286d1d1c871a9139a48fce9eb167519847865287c58bad5aefb85428b547` |
| 7 | `lemma` | [isRestriction_iff_exists_eq_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isrestriction-iff-exists-eq-delete--d26643b21cbf5462110cb667.md) | 71 | `result-track:d26643b21cbf5462110cb667aa6b72d90934ee0511c3d872347fa83d03f971a2` |
| 8 | `lemma` | [delete_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-ground--e29bb412a7d5129193c32b0b.md) | 75 | `result-track:e29bb412a7d5129193c32b0b787d5152061fe63386a84c78a37c4668fda33983` |
| 9 | `lemma` | [delete_subset_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-subset-ground--bc874c02cebc7e0f0426c3a7.md) | 78 | `result-track:bc874c02cebc7e0f0426c3a7736c5b759016d53408fbff859770c146e3581492` |
| 10 | `lemma` | [delete_eq_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-eq-self-iff--4aa4c5e06a6f73c40028bac1.md) | 82 | `result-track:4aa4c5e06a6f73c40028bac177a999ac3a1eed075204d4526f6bd1f92b9cc95f` |
| 11 | `lemma` | [deleteElem_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/deleteelem-eq-self--fc49461a6e4fd82c72856e68.md) | 87 | `result-track:fc49461a6e4fd82c72856e68c25f9edbd2687a02b7d610c2ebe77e42252193ad` |
| 12 | `lemma` | [delete_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-delete--16914937593ae18bec2946dd.md) | 91 | `result-track:16914937593ae18bec2946dd32ac1631e4746873d87492d640bd48909780fd2b` |
| 13 | `lemma` | [delete_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-comm--d047d10498ce4eba73512d11.md) | 96 | `result-track:d047d10498ce4eba73512d115c1ec48bcdd1f0af91a7ffba78da65128c080fce` |
| 14 | `lemma` | [delete_inter_ground_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-inter-ground-eq--398ac27659a3e82b41549c3d.md) | 99 | `result-track:398ac27659a3e82b41549c3db1b23e95127c5b4639a9a083e42fc03f3ebcb76d` |
| 15 | `lemma` | [delete_eq_delete_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-eq-delete-iff--02603f7321e930fea4aee73f.md) | 102 | `result-track:02603f7321e930fea4aee73f1695e7e797b70464119b33def9f0b68305f3b908` |
| 16 | `lemma` | [delete_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-empty--a87f8e33adb67fdaff2a7560.md) | 110 | `result-track:a87f8e33adb67fdaff2a7560733eeff730d2798cf241735bcf02148311784c2d` |
| 17 | `lemma` | [delete_delete_eq_delete_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-delete-eq-delete-sdiff--99b1866a0a1f6f3801fbbc40.md) | 114 | `result-track:99b1866a0a1f6f3801fbbc4052cd3a10b37e4139b7aca4a52e76f43ad22a2e6e` |
| 18 | `lemma` | [IsRestriction.restrict_delete_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isrestriction-restrict-delete-of-disjoint--2bed1c61775359e1fdfa69cb.md) | 121 | `result-track:2bed1c61775359e1fdfa69cba1da5f263c7609681b733edbe94b943dcf76f6eb` |
| 19 | `lemma` | [IsRestriction.isRestriction_deleteElem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isrestriction-isrestriction-deleteelem--5fb057fa98f8a55e2dd8da4b.md) | 128 | `result-track:5fb057fa98f8a55e2dd8da4b7da24ed45b6885ae99ccf8d22dc300231df3294a` |
| 20 | `lemma` | [delete_indep_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-indep-iff--3166ed6f62975de7d492f0c4.md) | 134 | `result-track:3166ed6f62975de7d492f0c48aa3208f1bda1b8b4221aa53d611cb4ab86a3c42` |
| 21 | `lemma` | [deleteElem_indep_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/deleteelem-indep-iff--d48a94dffea9daf68917b986.md) | 138 | `result-track:d48a94dffea9daf68917b986ceec7b71cba6274e3941d15a5971dcdc69dff26c` |
| 22 | `lemma` | [Indep.of_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/indep-of-delete--72a343fb8ec9ce096306d6da.md) | 141 | `result-track:72a343fb8ec9ce096306d6daa424a4db871ff42fcf14fd238056526c8a33b4ec` |
| 23 | `lemma` | [Indep.indep_delete_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/indep-indep-delete-of-disjoint--71ebcaa40c0d5fff4ef78540.md) | 144 | `result-track:71ebcaa40c0d5fff4ef78540a7398962ec1481e4b4b44ec0e533d36120ad272c` |
| 24 | `lemma` | [indep_iff_delete_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/indep-iff-delete-of-disjoint--04339f2ac3543ffeda1deaa2.md) | 147 | `result-track:04339f2ac3543ffeda1deaa25f8543680408930f5ceec10a6e5b05a541f9427c` |
| 25 | `lemma` | [delete_dep_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-dep-iff--968fae209c96cd9440c7f9dc.md) | 151 | `result-track:968fae209c96cd9440c7f9dcc3b08c140dc124efe532aa84bcf5d2d6ed0e649c` |
| 26 | `lemma` | [delete_isBase_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isbase-iff--c84a210ceeedfacb54d5bad0.md) | 155 | `result-track:c84a210ceeedfacb54d5bad038990e9a7eb1c73e3bac41f35518fed2b5040615` |
| 27 | `lemma` | [delete_isBasis_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isbasis-iff--2e213a2580652760e69e2917.md) | 159 | `result-track:2e213a2580652760e69e29174df790ad4944ce4e642fbaef7c0ca68ff5655adc` |
| 28 | `lemma` | [delete_isBasis'_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isbasis-iff--bd2579f6c2084f0101a74fb9.md) | 164 | `result-track:bd2579f6c2084f0101a74fb9a786afd9d8579f1bf080810041233f4d857e38e1` |
| 29 | `lemma` | [IsBasis.of_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isbasis-of-delete--7c0644679bdc0eadf97a5783.md) | 170 | `result-track:7c0644679bdc0eadf97a5783d1b21790ef87d2912d093a4f0709cd75ebb8f5f6` |
| 30 | `lemma` | [IsBasis.delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isbasis-delete--ab792d22ceba0e4c284377c8.md) | 173 | `result-track:ab792d22ceba0e4c284377c83f349ca4d144833807a18ad2e630b7ad547118da` |
| 31 | `lemma` | [Coindep.delete_isBase_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/coindep-delete-isbase-iff--585698e826508312d507eb0d.md) | 176 | `result-track:585698e826508312d507eb0decb8dcda9ee4df04ae5a756558df6571421e4a39` |
| 32 | `lemma` | [Coindep.delete_rankPos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/coindep-delete-rankpos--41295daa1ec3810ac3a677bc.md) | 188 | `result-track:41295daa1ec3810ac3a677bcd0bddc9ddc1886b6d65ef82e8fccc04f0276358b` |
| 33 | `lemma` | [Coindep.delete_spanning_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/coindep-delete-spanning-iff--0564e0ac9cea9b31821f2c6e.md) | 192 | `result-track:0564e0ac9cea9b31821f2c6e695e3a5642d22369dbea5635bb1494d15b986459` |
| 34 | `lemma` | [delete_isLoop_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isloop-iff--fb0ff28dfdada297a1268682.md) | 202 | `result-track:fb0ff28dfdada297a1268682e8ee59fbf8869a91986733dfee7a6482b9b874c8` |
| 35 | `lemma` | [delete_isNonloop_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-isnonloop-iff--897139589d4ac52a3356bc02.md) | 206 | `result-track:897139589d4ac52a3356bc0266db657546f5f6f647a9ff8b4d0990fe08a9f6ae` |
| 36 | `lemma` | [IsNonloop.of_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isnonloop-of-delete--48fcf353d026d0cdaabf165e.md) | 209 | `result-track:48fcf353d026d0cdaabf165ea1a8ebf217d8b3d211b8be75ceac45b9ac7f92f2` |
| 37 | `lemma` | [isNonloop_iff_delete_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/isnonloop-iff-delete-of-notmem--b031b78bfcf711f8d1013673.md) | 212 | `result-track:b031b78bfcf711f8d1013673e25ce9a3fdbeced464fd8bb8abb7bb20e4e0adf2` |
| 38 | `lemma` | [delete_loops_eq_removeLoops](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-loops-eq-removeloops--2d18e2571f7a0762ce358d7f.md) | 215 | `result-track:2d18e2571f7a0762ce358d7febb8c0c7ec04cc20935be1ce4ab9d823e48b78f4` |
| 39 | `lemma` | [delete_isCircuit_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-iscircuit-iff--7f611385a060d6fadd381171.md) | 219 | `result-track:7f611385a060d6fadd38117123a16d2daa4ff0e6a7a07665b05c364809437bab` |
| 40 | `lemma` | [IsCircuit.of_delete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/iscircuit-of-delete--7fb107db5cde87e86b4e19c7.md) | 225 | `result-track:7fb107db5cde87e86b4e19c74795281a5b37232b6e578f7b9a4b51db68912820` |
| 41 | `lemma` | [circuit_iff_delete_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/circuit-iff-delete-of-disjoint--af13154716346472fb51bb51.md) | 228 | `result-track:af13154716346472fb51bb5115de5afecb41a6113ae0a86fceb4ec959f087b88` |
| 42 | `lemma` | [delete_closure_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-closure-eq--b43390458f1df1d0fc12a82f.md) | 233 | `result-track:b43390458f1df1d0fc12a82f88944355bc0e1e1089d6cc8c6fd020be39e1eb2d` |
| 43 | `lemma` | [delete_closure_eq_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-closure-eq-of-disjoint--bee70f6e27355fa5de3bca2f.md) | 240 | `result-track:bee70f6e27355fa5de3bca2fc288542287208c0862d5007a2c7d6f96354a63ad` |
| 44 | `lemma` | [delete_loops_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-loops-eq--e35bd0182daf882417ec75ab.md) | 245 | `result-track:e35bd0182daf882417ec75abe07a4a737f682ad60d064325c1066ad50f1e4b39` |
| 45 | `lemma` | [delete_isColoop_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-iscoloop-iff--9808623446973ee56d15d9c3.md) | 248 | `result-track:9808623446973ee56d15d9c3539c4aaed60c9e6f62919095afc3ae24d3ed6fa5` |
| 46 | `instance` | [delete_finitary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-finitary--1e72ba159db72dd0f56ae1b2.md) | 255 | `declaration-track:1e72ba159db72dd0f56ae1b2adf220c23168d45c6050b1336e6a02b7d757f063` |
| 47 | `instance` | [delete_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-finite--501e83ece97ae66b1a52c4b7.md) | 258 | `declaration-track:501e83ece97ae66b1a52c4b7ca4f503007682f294f6c1c8c0d967ad19acb72f9` |
| 48 | `instance` | [delete_rankFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Delete/Variant61d0c0fb56e9413ca065f9ef5ee460a2a0bf0e5d9ba9444018fce8dd2ca594be.lean/declarations/delete-rankfinite--a9de6d3b8ba6ab347546b383.md) | 261 | `declaration-track:a9de6d3b8ba6ab347546b3834d7a3b7ee7d6fb0cb51d2ec1856bea5fce05996c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
