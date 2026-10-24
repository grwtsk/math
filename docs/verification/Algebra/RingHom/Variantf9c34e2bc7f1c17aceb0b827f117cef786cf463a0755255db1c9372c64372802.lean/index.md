# Verification target: GRWTSK.Algebra.RingHom.Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3ff780347fd9d4aef51364065a22e5e35b9e615",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3ff780347fd9d4aef51364065a22e5e35b9e615`.

Source path: `GRWTSK/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean.json)

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
| 1 | `structure` | [GradedRingHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/gradedringhom--63c159bff55febfbe5766545.md) | 46 | `declaration-track:63c159bff55febfbe5766545c0c09b5874aff15ebf48ea487d3aafafd069a019` |
| 2 | `def` | [ofClass](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/ofclass--531f40f3f08d5a0ee5864791.md) | 65 | `declaration-track:531f40f3f08d5a0ee5864791efc3fe3f6140e30a9aa9e949f07f8335e37c66aa` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instance--12bdac0344e9e7da0be1d08c.md) | 74 | `declaration-track:12bdac0344e9e7da0be1d08c864f504995acbd54d667021d66e391f2af8def00` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instance--05024645da511914bac4f0f4.md) | 83 | `declaration-track:05024645da511914bac4f0f4d989d5e152d8b0c9f8b2f5610d5ba1756d440811` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instance--0c6a7c7ede3e8274533b6182.md) | 86 | `declaration-track:0c6a7c7ede3e8274533b61823d3f6c23d0eb67f64b0816496b36c3601a64674f` |
| 6 | `theorem` | [toRingHom_eq_toRingHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/toringhom-eq-toringhom--ba29e2815a4f13396267b6e4.md) | 97 | `result-track:ba29e2815a4f13396267b6e4648ff68c390910f4c0ef748171f97a22223b38b6` |
| 7 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-toringhom--d3a57952c25d7a7d35fdb22c.md) | 100 | `result-track:d3a57952c25d7a7d35fdb22c30a4d219c385a8e5a036f1d7a6b3216a39ca395a` |
| 8 | `theorem` | [coe_mk](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-mk--9ea4517ec161340f26a97cb7.md) | 103 | `result-track:9ea4517ec161340f26a97cb7b74b93e7db8bca8c812864cddde024b850b21e29` |
| 9 | `theorem` | [coe_ofClass](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-ofclass--bd532e9b9e0a365b87cd4a7b.md) | 106 | `result-track:bd532e9b9e0a365b87cd4a7b95e4f837f236fec9c70c66b9419b856a0af667bd` |
| 10 | `instance` | [coeToRingHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coetoringhom--82e4265ca6540a2e1bf60f59.md) | 109 | `declaration-track:82e4265ca6540a2e1bf60f59078959f504864af7a53dda9a2e41214085a52fbc` |
| 11 | `def` | [copy](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/copy--0681507b80475ae2b2a86333.md) | 114 | `declaration-track:0681507b80475ae2b2a863336994520bd1a5606c4ea91e0ee8a5ad685d26f675` |
| 12 | `theorem` | [coe_copy](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-copy--b443fecf90692167dc7708af.md) | 119 | `result-track:b443fecf90692167dc7708af919d3e69cfabc38ef9f3a008ed00e1f8ee883ae7` |
| 13 | `theorem` | [copy_eq](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/copy-eq--528966c3c1f2e9aa8caa68fa.md) | 122 | `result-track:528966c3c1f2e9aa8caa68faf3a7aa4156b849b58b993b25e367a96a07bf99b5` |
| 14 | `theorem` | [congr_fun](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/congr-fun--0483c3ec63eef06e7d13834a.md) | 131 | `result-track:0483c3ec63eef06e7d13834ab747d5eff1ceb700ebcdcc5db29ae0eea5b091c6` |
| 15 | `theorem` | [congr_arg](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/congr-arg--6c9a4f0ad5bf24ce37656910.md) | 134 | `result-track:6c9a4f0ad5bf24ce37656910c17f6ee802739a715f2e32299744951352dc4153` |
| 16 | `theorem` | [coe_inj](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-inj--038dfbc3de1b92baa2b76d46.md) | 137 | `result-track:038dfbc3de1b92baa2b76d46512420e2c20c71a92bcd601c7ee37bbfb2113cd9` |
| 17 | `theorem` | [ext](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/ext--bcfbf7f7a5b5874809e45825.md) | 141 | `result-track:bcfbf7f7a5b5874809e458250b9a60d4052e7173d67f7f8981d6ca49bfa5ad54` |
| 18 | `theorem` | [mk_coe](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/mk-coe--894a56b25c03772aadb7f37b.md) | 145 | `result-track:894a56b25c03772aadb7f37bb72d359f03a86b370c9ea79e031134321f457280` |
| 19 | `theorem` | [coe_ringHom_injective](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-ringhom-injective--aac5b06dbd7d779bbdcc9ad4.md) | 148 | `result-track:aac5b06dbd7d779bbdcc9ad492b8768218c3bf0eda3a8e54040e8c90eea41746` |
| 20 | `theorem` | [map_zero](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-zero--79dd9b573af24839da48b836.md) | 152 | `result-track:79dd9b573af24839da48b836c79308b3729d2b58b79e87229ec0ecde5d64bed0` |
| 21 | `theorem` | [map_one](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-one--af1a594d445505bfbd7c1fb8.md) | 156 | `result-track:af1a594d445505bfbd7c1fb8eb9f9f286b86f1502533f7c7d4a3e5726ef34a0f` |
| 22 | `theorem` | [map_add](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-add--2beb2e6cc7b2297f4b9ec58e.md) | 160 | `result-track:2beb2e6cc7b2297f4b9ec58e680620270d30bea5cfd49974eac80bb211d2d9af` |
| 23 | `theorem` | [map_mul](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-mul--8281df4d97dd718c08eeccff.md) | 164 | `result-track:8281df4d97dd718c08eeccff4b34465a1bfab58fedaa8913fdbd821aeef4a19a` |
| 24 | `theorem` | [map_neg](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-neg--08420b5d8992c6bcfa2a0a98.md) | 175 | `result-track:08420b5d8992c6bcfa2a0a9838320ca8ff82d9f4c9186473f2281f2c92447f7c` |
| 25 | `theorem` | [map_sub](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-sub--f185dd48d0f17b9f41de8c52.md) | 179 | `result-track:f185dd48d0f17b9f41de8c524aa3e2afcbf3bd6c6983910426bfeb3317d92808` |
| 26 | `def` | [id](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/id--a305cd419e0307a1cc77650e.md) | 187 | `declaration-track:a305cd419e0307a1cc77650edab049a7520411affd3949afb22b162f46d848ae` |
| 27 | `theorem` | [coe_id](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-id--c41f0680d22607a0fff9dcaa.md) | 192 | `result-track:c41f0680d22607a0fff9dcaae06817d05f9c6f2646ae3b365a49eb763d24b1f5` |
| 28 | `theorem` | [id_apply](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/id-apply--cb2981189e0fbca126e6eb73.md) | 195 | `result-track:cb2981189e0fbca126e6eb73b59a29c90aa392a817975afa80b5771ec75e0bff` |
| 29 | `theorem` | [toRingHom_id](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/toringhom-id--451e7ceb16d03324a6015bc1.md) | 199 | `result-track:451e7ceb16d03324a6015bc19c9957cafaaf5dcacc30ba12f18dbd25fbea917c` |
| 30 | `def` | [comp](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/comp--1c98778768bd81bfe1732b79.md) | 203 | `declaration-track:1c98778768bd81bfe1732b796b51afc06aac3f0a3abb74ffd3a782bd0c49f595` |
| 31 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/comp-assoc--07c0b4d485bbd270ae301dd9.md) | 208 | `result-track:07c0b4d485bbd270ae301dd92e97c6ddbf098e4c24261ad4b739c811775e6fe3` |
| 32 | `theorem` | [coe_comp](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-comp--b84c4212c08928964a709e3d.md) | 213 | `result-track:b84c4212c08928964a709e3d5ebca6a3d57838aa0ede2fe7e06bc945753737cb` |
| 33 | `theorem` | [comp_apply](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/comp-apply--f619bcca82307d5a6ff47bee.md) | 216 | `result-track:f619bcca82307d5a6ff47beef5013f5648b65fd39907063fb1ce77b8a6d4978e` |
| 34 | `theorem` | [comp_id](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/comp-id--8fc9d14d289a8695ecd755c5.md) | 221 | `result-track:8fc9d14d289a8695ecd755c56b689445588870a3c1302baaa5ee0cfb6e68fc46` |
| 35 | `theorem` | [id_comp](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/id-comp--db3afa6474a28b43a521be98.md) | 225 | `result-track:db3afa6474a28b43a521be98d084c0831c4485c6385dc786fb2131e21be83398` |
| 36 | `instance` | [instOne](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instone--842edeec4701fe6b1a5fca68.md) | 228 | `declaration-track:842edeec4701fe6b1a5fca688a1b2f859adb2ec9675c76b79671df1867f7f5d9` |
| 37 | `instance` | [instMul](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instmul--31e563d4ce8cab52555a3a85.md) | 229 | `declaration-track:31e563d4ce8cab52555a3a8509b12d29725bccc5bf5b6714a30dbe190739a936` |
| 38 | `lemma` | [one_def](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/one-def--dbae034d9e70597cbf4195ea.md) | 231 | `result-track:dbae034d9e70597cbf4195ea5095b66372f497c09229eb2a177b7f2636b8446d` |
| 39 | `lemma` | [mul_def](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/mul-def--7661629a2aae9a331a02df39.md) | 233 | `result-track:7661629a2aae9a331a02df395cb848a5a4ffa0ba4c367baee2964e7bccb55ebf` |
| 40 | `lemma` | [coe_one](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-one--8f661a5e05af830c2866ef3e.md) | 235 | `result-track:8f661a5e05af830c2866ef3e866eff89f38bc59285d162ee6915403285ebea60` |
| 41 | `lemma` | [coe_mul](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-mul--77d6d0d7022d532fc56bd108.md) | 237 | `result-track:77d6d0d7022d532fc56bd10886e1cea954d6882babbbbe7baec20b32c330acbe` |
| 42 | `instance` | [instMonoid](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/instmonoid--543f4c681904a15f216321e2.md) | 239 | `declaration-track:543f4c681904a15f216321e28f2dd69f9ea919a0ee8c0d05aa1027ed4ae28f2f` |
| 43 | `lemma` | [coe_pow](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/coe-pow--9d891770cd553b294c785c56.md) | 246 | `result-track:9d891770cd553b294c785c56ff2b5fb2dbc3dd674306b66019ea93bba25fccbe` |
| 44 | `theorem` | [cancel_right](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/cancel-right--2ddec295899c9c3af823f1e4.md) | 249 | `result-track:2ddec295899c9c3af823f1e4408b9a04acd147e931f2313c2b205f15b26a3a17` |
| 45 | `theorem` | [cancel_left](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/cancel-left--dc783f87977d8b3332ddab12.md) | 254 | `result-track:dc783f87977d8b3332ddab12af55c1f8d012c3b3337a9aa1b052d98254906e04` |
| 46 | `def` | [gradedAddHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/gradedaddhom--5f8d8d4f221ecf18191c1798.md) | 260 | `declaration-track:5f8d8d4f221ecf18191c1798f661b9e64767b6e83b8c877ddb940fe1b7aa4ea4` |
| 47 | `def` | [gradedZeroRingHom](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/gradedzeroringhom--c8121d8eef4f7fad386d2c15.md) | 267 | `declaration-track:c8121d8eef4f7fad386d2c150a22a4d3d0d39fe4352f7c00850fed174115aa4a` |
| 48 | `lemma` | [DirectSum.decompose_map](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/directsum-decompose-map--61c0fd3ebe29ad409e3bbd75.md) | 283 | `result-track:61c0fd3ebe29ad409e3bbd75b076d44c57526d3b4ae42c6e85bcbed129f41908` |
| 49 | `lemma` | [map_directSumDecompose](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/map-directsumdecompose--d03d96cead3b287165801b01.md) | 295 | `result-track:d03d96cead3b287165801b01ce3de1a8413b51b888cb52a6dcf746fca8c0fe7e` |
| 50 | `lemma` | [GradedRingHom.map_directSumDecompose](../../../../mathematics/Algebra/RingHom/Variantf9c34e2bc7f1c17aceb0b827f117cef786cf463a0755255db1c9372c64372802.lean/declarations/gradedringhom-map-directsumdecompose--9ff537ad45d1b15ae17b1097.md) | 299 | `result-track:9ff537ad45d1b15ae17b1097a5ac7ad16b1f22fd48146217e0b28e7e7f7d8497` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
