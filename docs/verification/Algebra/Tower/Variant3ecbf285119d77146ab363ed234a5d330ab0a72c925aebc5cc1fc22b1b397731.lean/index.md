# Verification target: GRWTSK.Algebra.Tower.Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb393b63f16e57c6818b88bd36bda4e5a47ce5af",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb393b63f16e57c6818b88bd36bda4e5a47ce5af`.

Source path: `GRWTSK/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lsmul](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/lsmul--007362a30e6d70c33da25a0b.md) | 71 | `declaration-track:007362a30e6d70c33da25a0b5ec7dc60dc7cf262b3d2f96ea83d80806da86e48` |
| 2 | `theorem` | [lsmul_coe](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/lsmul-coe--58bf8fb09810b4ce142c21c3.md) | 80 | `result-track:58bf8fb09810b4ce142c21c3cab6a606e25f318f13e04cd4327ef4ddf3d234fa` |
| 3 | `theorem` | [algebraMap_smul](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/algebramap-smul--3aa78fa5c87fbeb4859bb2dd.md) | 92 | `result-track:3aa78fa5c87fbeb4859bb2dd09d7b1e6c2d82e473e984e1eae3453c8fe726a91` |
| 4 | `theorem` | [of_algebraMap_smul](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/of-algebramap-smul--bbac090be9fe16163baba997.md) | 97 | `result-track:bbac090be9fe16163baba9972e7371282a281b21c8971e79869ba70efc3e3905` |
| 5 | `theorem` | [of_compHom](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/of-comphom--68ece7626fdf2b93eb65f380.md) | 102 | `result-track:68ece7626fdf2b93eb65f38081fa286be343c52df474affb2fee296f1cec9bc2` |
| 6 | `theorem` | [of_algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/of-algebramap-eq--3c04d06924be39bdc7a962dc.md) | 113 | `result-track:3c04d06924be39bdc7a962dcad885658eada042c1d050ceaf1d801a38c834e78` |
| 7 | `theorem` | [of_algebraMap_eq'](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/of-algebramap-eq--a71e23fe2e828d49d927e8dd.md) | 118 | `result-track:a71e23fe2e828d49d927e8ddfa9f734d327660766e7578b4479f6287d15d8151` |
| 8 | `theorem` | [algebraMap_eq](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/algebramap-eq--628e57348f4ca715725fdd0c.md) | 126 | `result-track:628e57348f4ca715725fdd0cb102d630fcc9c29d70a5088f2ba1bdbc7bf7200c` |
| 9 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/algebramap-apply--a478ce3623c5d52223336fee.md) | 130 | `result-track:a478ce3623c5d52223336feed0c8858e1ee39d434f4444c1df73cf5594af7f4b` |
| 10 | `theorem` | [Algebra.ext](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/algebra-ext--2e076ab10ba534ac62ea8a21.md) | 134 | `result-track:2e076ab10ba534ac62ea8a218c45292e323b0037b296f6ac17876ad867195b4c` |
| 11 | `def` | [toAlgHom](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/toalghom--93043e29f73e8e98b6ac3d22.md) | 141 | `declaration-track:93043e29f73e8e98b6ac3d22ac85926196be216f887ef2cffcb9e99aac3a290d` |
| 12 | `theorem` | [toAlgHom_apply](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/toalghom-apply--ae9f231ec6fbaa778febdb8d.md) | 144 | `result-track:ae9f231ec6fbaa778febdb8d0465f1744e0139ef4ecfe41026c228f2521edde4` |
| 13 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-toalghom--9d0cc83b71ef9e54e4891e22.md) | 147 | `result-track:9d0cc83b71ef9e54e4891e22da68b51b8d558aa8dcd23dcf1dd112762b683944` |
| 14 | `theorem` | [coe_toAlgHom'](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-toalghom--a59c71aae8f239891dbdc02b.md) | 151 | `result-track:a59c71aae8f239891dbdc02b8a32ceec1b39a8f925789d24c7236054faea82fe` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.Lsmul.Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.AlgHom.map_algebraMap](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/root-grwtsk-algebra-lsmul-variant8dfbac0f3ad8c692afacde19851351428e88bc3--775e0ac77f4903b91c6332ea.md) | 156 | `result-track:775e0ac77f4903b91c6332ea9e7f161facea628f4f539ac70cf78b454deffd6e` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.Lsmul.Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.AlgHom.comp_algebraMap_of_tower](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/root-grwtsk-algebra-lsmul-variant8dfbac0f3ad8c692afacde19851351428e88bc3--215e85e9394c2f54bd16f738.md) | 163 | `result-track:215e85e9394c2f54bd16f738f3ae6c9adad65ad1ff320b1ed4d9538c13916ccc` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/instance--c7a6e7db408b4b6163792670.md) | 168 | `declaration-track:c7a6e7db408b4b61637926700b804e6fe212cfab61badc5b9f2752f8aeacfca7` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/instance--9e4c46d38e37949274f0cedd.md) | 172 | `declaration-track:9e4c46d38e37949274f0cedd93ea9ac34d1bd177aa6ad2eaef6aad71a776d23f` |
| 19 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars--ac44d6dd1916da2891363b65.md) | 195 | `declaration-track:ac44d6dd1916da2891363b65a5652b0ad4b96e31a962116577091e5b7b579c5c` |
| 20 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars-apply--9d2d7364fdd4c605e5d55ed1.md) | 201 | `result-track:9d2d7364fdd4c605e5d55ed1fba2b4cce341961f43bcd2d877839aecb3fdff6d` |
| 21 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-restrictscalars--39e7fc0bbae1a987498af1c8.md) | 204 | `result-track:39e7fc0bbae1a987498af1c8236e3ace8efa16e6b5fd22de602928c1e2253342` |
| 22 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-restrictscalars--4c3f0775b89db922b317ed3c.md) | 207 | `result-track:4c3f0775b89db922b317ed3c29c0e896ff7be88ee5e4c345216da2a3082a9b08` |
| 23 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars-injective--001fd229a8bd1f77ac94e88b.md) | 209 | `result-track:001fd229a8bd1f77ac94e88b974168d301d789a766422a3fd87b7d11ac4e93a0` |
| 24 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars--bdc329360551be0bdab8812f.md) | 218 | `declaration-track:bdc329360551be0bdab8812f3f280d0c2e2e60331b75eaff4ea2ff7e0d25bd17` |
| 25 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars-apply--667bff9b843647b83fe9a9e8.md) | 224 | `result-track:667bff9b843647b83fe9a9e8f7238fc7bab8fb158f66f087ae32b22ad78a344a` |
| 26 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-restrictscalars--9a1c3c277f607ef40f671b8f.md) | 227 | `result-track:9a1c3c277f607ef40f671b8f985eeb34686e667d8c380493fad2db6c3edc0dc7` |
| 27 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-restrictscalars--a950aa5053943699567a50bb.md) | 230 | `result-track:a950aa5053943699567a50bb1c9e167bbcab1588a011805805d325f3fa979b64` |
| 28 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars-injective--0225937b105b244e7bf26dc7.md) | 232 | `result-track:0225937b105b244e7bf26dc7c660de5e12bca6ec717be580c8e67ff0c2784e09` |
| 29 | `theorem` | [restrictScalars_span](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/restrictscalars-span--e4eb18d82c35b86d4f1978bc.md) | 248 | `result-track:e4eb18d82c35b86d4f1978bcc4aa017d401df9604ee4fd91317011776c935893` |
| 30 | `theorem` | [coe_span_eq_span_of_surjective](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/coe-span-eq-span-of-surjective--f7deb3983cd12efd82ab9d55.md) | 255 | `result-track:f7deb3983cd12efd82ab9d55388c23a1be1fc5e2217cbfadcf676cb5d03852ad` |
| 31 | `theorem` | [smul_mem_span_smul_of_mem](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/smul-mem-span-smul-of-mem--eafd11ed5b26fa8d7e00df3f.md) | 274 | `result-track:eafd11ed5b26fa8d7e00df3f6fa2b70c1ea18a071a4b8f4e10fc9d643be28d23` |
| 32 | `theorem` | [span_smul_of_span_eq_top](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/span-smul-of-span-eq-top--aaca192148eae66d39201d00.md) | 281 | `result-track:aaca192148eae66d39201d0034e9cacf993e11cec0d3988143452f1c13d0d517` |
| 33 | `theorem` | [smul_mem_span_smul'](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/smul-mem-span-smul--90a1414768bb26e4358cff63.md) | 294 | `result-track:90a1414768bb26e4358cff6351e2b12b66001f2aa0520f6061ff7c3417c498aa` |
| 34 | `theorem` | [smul_mem_span_smul](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/smul-mem-span-smul--f1d4d74332dfa46da9e0e5c8.md) | 298 | `result-track:f1d4d74332dfa46da9e0e5c83bfcbc8f83d0a0c292b9fb61a1577e7ae5692c7f` |
| 35 | `theorem` | [span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/span-algebramap-image--3afba10d6c9475743704c151.md) | 311 | `result-track:3afba10d6c9475743704c151feeb05e55b2717be2089d0b2cf625d57eb2afe27` |
| 36 | `theorem` | [span_algebraMap_image_of_tower](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/span-algebramap-image-of-tower--e55b806e70bbd5c0abe902a5.md) | 315 | `result-track:e55b806e70bbd5c0abe902a52f23fc7f47f918a95794820b96b1e4eb5ea74a7b` |
| 37 | `theorem` | [map_mem_span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/map-mem-span-algebramap-image--5e4d6e38fc70fa4c59057004.md) | 321 | `result-track:5e4d6e38fc70fa4c5905700427aa3dc8c5a9858353087b5eb0343092ba846b5e` |
| 38 | `theorem` | [lsmul_injective](../../../../mathematics/Algebra/Tower/Variant3ecbf285119d77146ab363ed234a5d330ab0a72c925aebc5cc1fc22b1b397731.lean/declarations/lsmul-injective--4b8fc14f5338ee5d1eddfc96.md) | 341 | `result-track:4b8fc14f5338ee5d1eddfc96d3247429a248e8cd90a60161110b8b9c8dc816ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
