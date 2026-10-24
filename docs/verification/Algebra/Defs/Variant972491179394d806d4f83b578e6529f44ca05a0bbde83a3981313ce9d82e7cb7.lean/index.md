# Verification target: GRWTSK.Algebra.Defs.Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc31bd148812963a6e5ef82f8b22cb8cc216e1f8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc31bd148812963a6e5ef82f8b22cb8cc216e1f8`.

Source path: `GRWTSK/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubsemiringClass](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/nonunitalsubsemiringclass--9f14dccce886df1f715d18f1.md) | 26 | `declaration-track:9f14dccce886df1f715d18f1f67cc54001fc9b524d8e1fe8394f16037176b5c1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--985137eed614463e7f37187e.md) | 32 | `declaration-track:985137eed614463e7f37187e55453dbd0119d81adee0e4babca602a87b57dfe4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--9ba4357c3a27c9bd61514610.md) | 47 | `declaration-track:9ba4357c3a27c9bd61514610047a1f46c9ce7efa28a2032d7b2186d1fd6540f3` |
| 4 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/nozerodivisors--7e4f60ef6c12838a207f00b8.md) | 52 | `declaration-track:7e4f60ef6c12838a207f00b8564f839fa796b63b1c95bc2476fbf1eee817788f` |
| 5 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/subtype--49d4199c60a1f292b54f0cfc.md) | 57 | `declaration-track:49d4199c60a1f292b54f0cfc23841de81422325a7584350217eec1239b77c2a3` |
| 6 | `theorem` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/subtype-apply--e0d63bb2d005346675959489.md) | 62 | `result-track:e0d63bb2d005346675959489a8d6ef4b1c3d257a29e75d0ac36d7284460c5e44` |
| 7 | `theorem` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/subtype-injective--dbbed14b1d813613dac55617.md) | 65 | `result-track:dbbed14b1d813613dac55617663d76b1a640850b665482e7f65059a014129b35` |
| 8 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-subtype--c8e29e395344215a360fc590.md) | 69 | `result-track:c8e29e395344215a360fc59069fe65186b2ddd386f56af2dd6a65fb57369644a` |
| 9 | `instance` | [toNonUnitalSemiring](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/tononunitalsemiring--0ef7451cbbf5253cbd12e734.md) | 76 | `declaration-track:0ef7451cbbf5253cbd12e7347f57da5b5a3073aa17b963806bf72cec748433b3` |
| 10 | `instance` | [toNonUnitalCommSemiring](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/tononunitalcommsemiring--5975a3148192da1470525d25.md) | 81 | `declaration-track:5975a3148192da1470525d257cd5c50670726fee103267e8ca76255a852dd80b` |
| 11 | `structure` | [NonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/nonunitalsubsemiring--af1ac3d8254e9024a188b34b.md) | 93 | `declaration-track:af1ac3d8254e9024a188b34b31c5cef9cf7f8fe62d0c985e696df708eece1e56` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--96ae52de50c7339fcc12edce.md) | 104 | `declaration-track:96ae52de50c7339fcc12edce295ea3e32119a2740ab3c30c4235b1082aeac19a` |
| 13 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/ofclass--5fb9c86b3a6e9cfee658931b.md) | 110 | `declaration-track:5fb9c86b3a6e9cfee658931b2b84ff94c8d7bcc1cb179d597417438c13640450` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--dbb39483cba11bc71ed7c01c.md) | 117 | `declaration-track:dbb39483cba11bc71ed7c01c466621d8122d7f133925741faeaa2a635510cdf1` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--f569c7d78139665f2c3ec898.md) | 127 | `declaration-track:f569c7d78139665f2c3ec89845ec4297667db17bccb1ed052e668f24d51a7d3e` |
| 16 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-carrier--361907756538f1f6316dc803.md) | 132 | `result-track:361907756538f1f6316dc803be76e0e92dfc933e056e432f47c5d8adfbeae226` |
| 17 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/ext--8346b1e42e44a194c0be3348.md) | 137 | `result-track:8346b1e42e44a194c0be3348a0180de332b68336cefa6216b65fc1c6765a16f1` |
| 18 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/copy--fc6ad2bde56c1617eb959fcf.md) | 142 | `declaration-track:fc6ad2bde56c1617eb959fcfd73974eebe73aa20f2eede0f8b14d4237fcbf266` |
| 19 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-copy--ae703011043afbba6540ae7a.md) | 147 | `result-track:ae703011043afbba6540ae7ab83f180547ee97d2878ba483e8133741023bebe3` |
| 20 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/copy-eq--499bb2c68b7f1e865939f0ed.md) | 151 | `result-track:499bb2c68b7f1e865939f0eddc98b770db6a70804f5a0a42a318db7e7a912e0d` |
| 21 | `theorem` | [toSubsemigroup_injective](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/tosubsemigroup-injective--95a8864eba3d87433915604f.md) | 154 | `result-track:95a8864eba3d87433915604f569c609659c41e9305acab8077044d23facf017e` |
| 22 | `theorem` | [toAddSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/toaddsubmonoid-injective--9186dffaf165273fc7cad9a8.md) | 158 | `result-track:9186dffaf165273fc7cad9a84c29dd4f191dc358b4101cb493cabd8e5097b861` |
| 23 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mk--80f7d9e155ed2848dcca8038.md) | 164 | `declaration-track:80f7d9e155ed2848dcca803850f3bab0ced642e79b4d797dcb121103ad567f35` |
| 24 | `theorem` | [coe_mk'](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-mk--816150ced33d26e7b6041815.md) | 172 | `result-track:816150ced33d26e7b604181549b4e524102b89f5505439fc14a8ff9517b85fe1` |
| 25 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-mk--bd376fa276db9443ed35a03e.md) | 177 | `result-track:bd376fa276db9443ed35a03eb2b3373cb410ecd5566872812c8c0e440c0fb4aa` |
| 26 | `theorem` | [mk'_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mk-tosubsemigroup--bb0d1990bdecf324a2212648.md) | 182 | `result-track:bb0d1990bdecf324a221264829b329eb39ec68d329e0e204538419d25a2302a0` |
| 27 | `theorem` | [mk'_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mk-toaddsubmonoid--891782020fc5c8824c4cb9a0.md) | 187 | `result-track:891782020fc5c8824c4cb9a01f426917c97d325e9c75660787eb8bdfdd0d070b` |
| 28 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-zero--2ee0bb3970643fcedc77a726.md) | 199 | `result-track:2ee0bb3970643fcedc77a726186bdd94676257ace6060eab82ac5d2ca4d2bb89` |
| 29 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-add--78da66a14bfafe96e2114b40.md) | 203 | `result-track:78da66a14bfafe96e2114b40fd0d81b3fba70d69bd5af7f19122857bf97d7e65` |
| 30 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-mul--09d7f34e8e50e500d54c7e1b.md) | 207 | `result-track:09d7f34e8e50e500d54c7e1b4d4d03720b1a2f1bfdc101b896bfe6595c779d04` |
| 31 | `theorem` | [mem_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-tosubsemigroup--68c91fa273077c22c966c424.md) | 214 | `result-track:68c91fa273077c22c966c42480726c16a968bf871407c6d0b3c22994071b5448` |
| 32 | `theorem` | [coe_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-tosubsemigroup--4f16ca9dae9c92a3c853862f.md) | 218 | `result-track:4f16ca9dae9c92a3c853862fbe0415bb273ef369517ada5bea04695a7cfc40fa` |
| 33 | `theorem` | [mem_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-toaddsubmonoid--23db2d59d73245df6e7c2ca9.md) | 222 | `result-track:23db2d59d73245df6e7c2ca9830b03a04ce905aa6e8b7947afab3a8f0098c213` |
| 34 | `theorem` | [coe_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-toaddsubmonoid--43bead8991cc7e9048485a8b.md) | 226 | `result-track:43bead8991cc7e9048485a8b0f4ae1cab25636d7a549c0502138d667253212ab` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--42c056e01c8f0775f0bdb1b3.md) | 230 | `declaration-track:42c056e01c8f0775f0bdb1b3f9dac1dbd53b997f9a8cbca9184116e647b64e5c` |
| 36 | `theorem` | [mem_top](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-top--30a766acdd2afb12e2273b28.md) | 234 | `result-track:30a766acdd2afb12e2273b285cd4dc16109277f584792ae66b1b8f2ca916aee2` |
| 37 | `theorem` | [coe_top](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-top--ef61cd7c4dde7a949eb5e251.md) | 238 | `result-track:ef61cd7c4dde7a949eb5e2517392e5174217a9e9ba75085bfd65d660fbf6522e` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--940078ed1db1ece9a664578e.md) | 256 | `declaration-track:940078ed1db1ece9a664578e9521df1a0835dbdfa4721da5d8c2fed431c7dacf` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--0cbbf138b444f2db3647d7e0.md) | 262 | `declaration-track:0cbbf138b444f2db3647d7e0b4efffc41b22a48207a0f9af1ad80afd45d11f44` |
| 40 | `theorem` | [coe_bot](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-bot--3657b9f3eec69f1a4ecade57.md) | 265 | `result-track:3657b9f3eec69f1a4ecade57b5184ae39c5890b525a3c8c23c0f0ba089d9e1db` |
| 41 | `theorem` | [mem_bot](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-bot--b0071be3cda6a128e584d33e.md) | 268 | `result-track:b0071be3cda6a128e584d33e98af0cad5e81059086747023718044559cfa8aaf` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/instance--8faaca34e1a5ff0b148a0b25.md) | 272 | `declaration-track:8faaca34e1a5ff0b148a0b258893e5ca4f44ed3f84c87e7ba5799c3e3d73d53f` |
| 43 | `theorem` | [coe_inf](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/coe-inf--7f74f7e5fa719ae95413950a.md) | 278 | `result-track:7f74f7e5fa719ae95413950a6770d21305be723b114450effcf6a97c354d9051` |
| 44 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/mem-inf--d95557e2aecd4bb0e0a3de80.md) | 283 | `result-track:d95557e2aecd4bb0e0a3de80dd013226ce6427cc036bc97710ba7d57c2282c95` |
| 45 | `def` | [codRestrict](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/codrestrict--0969e4da55cae1107c46cc8d.md) | 300 | `declaration-track:0969e4da55cae1107c46cc8d7d1cf824c8db4a046515779141111181c3a463c8` |
| 46 | `def` | [eqSlocus](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/eqslocus--6ce7e394c2946d4c702d5ffc.md) | 307 | `declaration-track:6ce7e394c2946d4c702d5ffce03c6cd4ab5f0a245c644f5b762580ca0fe98af8` |
| 47 | `def` | [inclusion](../../../../mathematics/Algebra/Defs/Variant972491179394d806d4f83b578e6529f44ca05a0bbde83a3981313ce9d82e7cb7.lean/declarations/inclusion--ec2c7551c73a46c5861ece19.md) | 319 | `declaration-track:ec2c7551c73a46c5861ece192527a66c31ffc44ca970e4bb3999aaa4d5a1e506` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
