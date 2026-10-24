# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.List.Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "225de2132310bfac3c23f447f724356a619ac13c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `225de2132310bfac3c23f447f724356a619ac13c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean.json)

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
| 1 | `def` | [listEquivOfEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/listequivofequiv--99db995f75b5e1234a4312cc.md) | 27 | `declaration-track:99db995f75b5e1234a4312cc74d56e4b4a611b4250cc41269c1b17ac8f5e45bc` |
| 2 | `def` | [encodeList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/encodelist--93daa0eb102118fcdfb5a799.md) | 44 | `declaration-track:93daa0eb102118fcdfb5a7997a8fae865d35ee808e7239bb6f61eeaba66d2476` |
| 3 | `def` | [decodeList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/decodelist--d0bb321840dde793b5873bd1.md) | 49 | `declaration-track:d0bb321840dde793b5873bd1c2c09676b6d7e18ad06b17263c5cd8475af03044` |
| 4 | `theorem` | [decodeList_encodeList_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/decodelist-encodelist-eq-self--395875f95584ba87b0010329.md) | 58 | `result-track:395875f95584ba87b00103295166af66a827bec07f3f4481450d865b9857543f` |
| 5 | `instance` | [_root_.List.encodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-list-encodable--2fa049c76e71412b566b472f.md) | 63 | `declaration-track:2fa049c76e71412b566b472f9819fd7ce2ec1a4569429ad50b506af63aad9012` |
| 6 | `instance` | [_root_.List.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-list-countable--5bbe3df69696ab7cdfa3d140.md) | 66 | `declaration-track:5bbe3df69696ab7cdfa3d140c8e849e010b36779c7df3a0b12a20cc8a99ab5bf` |
| 7 | `theorem` | [encode_list_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/encode-list-nil--7928d00eb91bd090851c87eb.md) | 71 | `result-track:7928d00eb91bd090851c87eb0de3c228027ab63d57f93028da8518b2352d7831` |
| 8 | `theorem` | [encode_list_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/encode-list-cons--08e603c61cf5dc8101d0aa4c.md) | 75 | `result-track:08e603c61cf5dc8101d0aa4c861f7e49d400a7c88a6f572cdcb19775cadca7a0` |
| 9 | `theorem` | [decode_list_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/decode-list-zero--e94a6e4f9fbf9a81f4af6bfd.md) | 80 | `result-track:e94a6e4f9fbf9a81f4af6bfd0c495cfca135c3fc7788b97f4f73fdb2ccc53fc8` |
| 10 | `theorem` | [decode_list_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/decode-list-succ--ae8bdc6f30992b7ec999af96.md) | 84 | `result-track:ae8bdc6f30992b7ec999af96a919937c920989806ed950712e834bdf75114bee` |
| 11 | `theorem` | [length_le_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/length-le-encode--1d1254a93f9fc2f129c289dc.md) | 91 | `result-track:1d1254a93f9fc2f129c289dce755aafc7454ef62558a1302198f86f6a761e36b` |
| 12 | `instance` | [_root_.Multiset.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-multiset-countable--d5f816ceb478e3a4384e07c5.md) | 101 | `declaration-track:d5f816ceb478e3a4384e07c500d2ffcbee5fa4a2a2d9b528d7e0605be66e773f` |
| 13 | `instance` | [_root_.Finset.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-finset-countable--8851e01113a625f5fbd454bc.md) | 105 | `declaration-track:8851e01113a625f5fbd454bc7ebeac34d36cbfb6fbe45afda08ec1d389f0fc62` |
| 14 | `def` | [encodableOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/encodableoflist--39609f4935dfa2f375eb55d1.md) | 110 | `declaration-track:39609f4935dfa2f375eb55d129b3c1a6b2d7b70ab79eb61708c659e066a1d02f` |
| 15 | `def` | [_root_.Fintype.truncEncodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-fintype-truncencodable--396f6c5b1f28df46d53f04ca.md) | 115 | `declaration-track:396f6c5b1f28df46d53f04ca3ea1a20e9ddb63feac0ed61ac74f37fae2c9280c` |
| 16 | `def` | [_root_.Fintype.toEncodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/root-fintype-toencodable--56034a31d8c0718db67bd7bb.md) | 123 | `declaration-track:56034a31d8c0718db67bd7bb4c4691a4856c5739fbe2940deb4a8032d304f56c` |
| 17 | `theorem` | [denumerable_list_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/denumerable-list-aux--9ca73a2f981d83766d6279e9.md) | 136 | `result-track:9ca73a2f981d83766d6279e93b3a8ab5ba3ca12bd7be40a46f093f925e44074b` |
| 18 | `instance` | [denumerableList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/denumerablelist--0fa9d2654ec2bffd4d012772.md) | 150 | `declaration-track:0fa9d2654ec2bffd4d0127723ecb250d152546ee7d2a7841899a4cc001a1f4c6` |
| 19 | `theorem` | [list_ofNat_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/list-ofnat-zero--8e2e0d0248457f28d4e95c36.md) | 154 | `result-track:8e2e0d0248457f28d4e95c364635b58a2a2321967d63de522f51eb38a065b0da` |
| 20 | `theorem` | [list_ofNat_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/list-ofnat-succ--2d7f958b9bae74c808559006.md) | 157 | `result-track:2d7f958b9bae74c808559006cd64ec8c1cd5dbbc63c362928c71d271e1f8fa01` |
| 21 | `def` | [listUniqueEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/listuniqueequiv--6385c6f6eb1c3f838af68418.md) | 172 | `declaration-track:6385c6f6eb1c3f838af68418554ec2103adfa4c77c9b89cbb6edf9f024cc4255` |
| 22 | `def` | [listNatEquivNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/listnatequivnat--822ea4ff7f8f81ea18adff7f.md) | 179 | `declaration-track:822ea4ff7f8f81ea18adff7f0c2eaf49293b812751c06b076e8a1bbdb209e167` |
| 23 | `def` | [listEquivSelfOfEquivNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean/declarations/listequivselfofequivnat--180c8c14c1dd324ef17aeaa5.md) | 183 | `declaration-track:180c8c14c1dd324ef17aeaa5fec2bc386bd370527a215a98e3e75306af7c37ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
