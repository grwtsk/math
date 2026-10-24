# Verification target: GRWTSK.Algebra.LinearAlgebra.IsValuedIn.Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4f7e07fe5052bfb1d4e27345a06833fa900fdd5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsValuedIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/isvaluedin--8cc9a281be7e9c75d48a5f12.md) | 44 | `declaration-track:8cc9a281be7e9c75d48a5f12e13e550f8b0e77ae616864d20069f9d6cd14d2d2` |
| 2 | `abbrev` | [IsCrystallographic](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/iscrystallographic--d44c22d7d680adc6f094b402.md) | 51 | `declaration-track:d44c22d7d680adc6f094b402ac8d0b1cc38029873df7a9a5d2c29bc5e72c9726` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/instance--528a367a35e50ead4bb9a5a3.md) | 53 | `declaration-track:528a367a35e50ead4bb9a5a31360ee7f426b6e908e6da0760fbbfb1f4e6b932c` |
| 4 | `lemma` | [isValuedIn_iff_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/isvaluedin-iff-mem-range--4a936d80fa70d1b8d3f94a72.md) | 59 | `result-track:4a936d80fa70d1b8d3f94a7267fd0e631ff975a242e90e8c4100d38a48e4ba88` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/instance--a26ee6114ad05ba7f6f4a69e.md) | 63 | `declaration-track:a26ee6114ad05ba7f6f4a69edf4f371a6eb9ed71285b50d1f9598fa6281f4d89` |
| 6 | `def` | [pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin--458c6d72288ac1ca7bd0caff.md) | 72 | `declaration-track:458c6d72288ac1ca7bd0caff9af73bff57c2309541d72e5c8a6c2b36d9057370` |
| 7 | `lemma` | [algebraMap_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/algebramap-pairingin--d3cd3a27b4d55dcaa8610522.md) | 76 | `result-track:d3cd3a27b4d55dcaa86105227fefd2d46418576819f6d347fa020ada1bbaf6eb` |
| 8 | `lemma` | [pairingIn_same](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin-same--40449ca9b09c76fd013f50c4.md) | 81 | `result-track:40449ca9b09c76fd013f50c4993e827e1f05ed72dfd3279f428c0c519765ef5a` |
| 9 | `lemma` | [pairingIn_reflection_perm](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin-reflection-perm--770a7eb6dca26bf786dcc9e8.md) | 85 | `result-track:770a7eb6dca26bf786dcc9e8f3225a3cbb9069dceb48a5420e2a8f932cd6c9c2` |
| 10 | `lemma` | [pairingIn_reflection_perm_self_left](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin-reflection-perm-self-left--684611c3835518da6b375d4d.md) | 91 | `result-track:684611c3835518da6b375d4db0678def5b1a5d2e43647d907753ac76961cd13d` |
| 11 | `lemma` | [pairingIn_reflection_perm_self_right](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin-reflection-perm-self-right--fe2aefc00cdc1dc5b8326998.md) | 96 | `result-track:fe2aefc00cdc1dc5b8326998c0f40af7bbc3a970bb5c660082a30e96804a9ea0` |
| 12 | `lemma` | [IsValuedIn.trans](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/isvaluedin-trans--0839f13ac17780cb460224a8.md) | 100 | `result-track:0839f13ac17780cb460224a809c5b0378af359962b4938fcb857f53e3c57bc48` |
| 13 | `lemma` | [coroot'_apply_apply_mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/coroot-apply-apply-mem-of-mem-span--82941eca24ab52f8041d9d82.md) | 107 | `result-track:82941eca24ab52f8041d9d820374a9fc858ed305dceac6aaa37f7e696ba0a443` |
| 14 | `lemma` | [root'_apply_apply_mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/root-apply-apply-mem-of-mem-span--e6c00be20e40018c78ca5487.md) | 119 | `result-track:e6c00be20e40018c78ca5487a10d7bf369a5946b0772ed63c1720970d34c51bb` |
| 15 | `abbrev` | [rootSpan](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan--5b3a1839fa54ee208a01ea9c.md) | 125 | `declaration-track:5b3a1839fa54ee208a01ea9cb76cec8634a78b32fa675f29dbae552e5cff1fa3` |
| 16 | `abbrev` | [corootSpan](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan--4abb7ca71ae57478d26c7820.md) | 128 | `declaration-track:4abb7ca71ae57478d26c7820aa7f0cee96f74f9b9de2465ef6085d3bbe6051fd` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/instance--a1d0b465e920ef1a89ed0249.md) | 130 | `declaration-track:a1d0b465e920ef1a89ed02491fb417af8119aead6edd5fdfbd5d1eb96400919c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/instance--00f615e9444e2a1048ec27df.md) | 134 | `declaration-track:00f615e9444e2a1048ec27df71c06c6d336ac9c64b8cfcd6ba77271717250478` |
| 19 | `abbrev` | [rootSpanMem](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspanmem--5f7b7c903753c9ef6b5a1960.md) | 139 | `declaration-track:5f7b7c903753c9ef6b5a1960fadeb9e6c830f39b62fb36c7afc524e7721668c2` |
| 20 | `abbrev` | [corootSpanMem](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspanmem--2bf82549d37d9bcf274ddf76.md) | 143 | `declaration-track:2bf82549d37d9bcf274ddf7696f856343da0fa67b7889ea88c2137c4ae51e223` |
| 21 | `lemma` | [rootSpanMem_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspanmem-reflection-perm-self--bd9d7875f788bd371100392c.md) | 147 | `result-track:bd9d7875f788bd371100392c3895b8ad817b13bace6b6db92741a3ffd30aec66` |
| 22 | `lemma` | [corootSpanMem_reflection_perm_self](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspanmem-reflection-perm-self--9652c88b9d3111f262c48bd6.md) | 152 | `result-track:9652c88b9d3111f262c48bd6970681fe4456d63dd8d7cf049c745fc70cc3c968` |
| 23 | `def` | [root'In](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/root-in--8f278919df3b27b244cc2f2c.md) | 157 | `declaration-track:8f278919df3b27b244cc2f2c5ddd70adc757187f6fc221e3838dcd793b15de50` |
| 24 | `lemma` | [algebraMap_root'In_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/algebramap-root-in-apply--61ab0f34da1cfde0e3c1a622.md) | 164 | `result-track:61ab0f34da1cfde0e3c1a622b765de4025a5cfc5a8aaf650453de665230fe092` |
| 25 | `lemma` | [root'In_corootSpanMem_eq_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/root-in-corootspanmem-eq-pairingin--5eef63937c7b255981118006.md) | 171 | `result-track:5eef63937c7b25598111800601817bed8f4b756de982b6d8cd20028a059a135b` |
| 26 | `def` | [coroot'In](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/coroot-in--a54d20ae8b92d280b39bc7a1.md) | 177 | `declaration-track:a54d20ae8b92d280b39bc7a13cd78e0b23c09e97a0ed6157054d64dcc965cbcb` |
| 27 | `lemma` | [algebraMap_coroot'In_apply](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/algebramap-coroot-in-apply--4806eff946d8d5e3917169d2.md) | 182 | `result-track:4806eff946d8d5e3917169d293595e3a5783a038e8b4fcf97b36b5e5b556f400` |
| 28 | `lemma` | [coroot'In_rootSpanMem_eq_pairingIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/coroot-in-rootspanmem-eq-pairingin--268505fb180c0aca3faeffb3.md) | 188 | `result-track:268505fb180c0aca3faeffb35528d227ecc3cbc51111ddd30237eb02fa4d37fd` |
| 29 | `lemma` | [rootSpan_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan-ne-bot--e2cd7c14d2992f1cea9ff499.md) | 194 | `result-track:e2cd7c14d2992f1cea9ff49905c801835562cbd328ad6b443ccf4a29ff8f025f` |
| 30 | `lemma` | [corootSpan_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan-ne-bot--3759043037ce63be4d966ca5.md) | 198 | `result-track:3759043037ce63be4d966ca5060122c662f0fa147a3c4beec5a85114b7c8dd61` |
| 31 | `lemma` | [rootSpan_mem_invtSubmodule_reflection](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan-mem-invtsubmodule-reflection--2df833e5b3785762a87be84e.md) | 201 | `result-track:2df833e5b3785762a87be84e3ad44ad548a1951d356203f8694178502861adcd` |
| 32 | `lemma` | [corootSpan_mem_invtSubmodule_coreflection](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan-mem-invtsubmodule-coreflection--c09f96a260acfb0159bfcd82.md) | 216 | `result-track:c09f96a260acfb0159bfcd82a7a037a9b1d889018dd2e68e76d8c0ec6cb8f798` |
| 33 | `lemma` | [rootSpan_dualAnnihilator_map_eq_iInf_ker_root'](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan-dualannihilator-map-eq-iinf-ker-root--3cfe0ed8eb0368859d15b228.md) | 220 | `result-track:3cfe0ed8eb0368859d15b228b367e099c7d59c7e81dd1d6ab99d05b9bc8f2616` |
| 34 | `lemma` | [corootSpan_dualAnnihilator_map_eq_iInf_ker_coroot'](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan-dualannihilator-map-eq-iinf-ker-coroot--89cc2d9402788bb1eb709772.md) | 229 | `result-track:89cc2d9402788bb1eb709772ab77c9a5b3c3d43d99f7190e7f86b60fe37aa5bf` |
| 35 | `lemma` | [rootSpan_dualAnnihilator_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan-dualannihilator-map-eq--f1e37d83bf18464fa926cd45.md) | 233 | `result-track:f1e37d83bf18464fa926cd45a5a1266849f26a7a5d6bd77137664f5e2808c9e7` |
| 36 | `lemma` | [corootSpan_dualAnnihilator_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan-dualannihilator-map-eq--c390eab54664d1c6c45cd39c.md) | 238 | `result-track:c390eab54664d1c6c45cd39ca6d595f3a8956ebd9a784431e907c4a0cd77ccb8` |
| 37 | `lemma` | [iInf_ker_root'_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/iinf-ker-root-eq--81d0910f20cfddfe174fd028.md) | 243 | `result-track:81d0910f20cfddfe174fd0282ac6e451f60f2c30910ac431594f4cef3be882ab` |
| 38 | `lemma` | [iInf_ker_coroot'_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/iinf-ker-coroot-eq--d27fbf6b9b2fb75c18218503.md) | 247 | `result-track:d27fbf6b9b2fb75c18218503429c1e6f33b9b1d27e9b4aaf5c31cbfe4a23a0a8` |
| 39 | `lemma` | [rootSpan_map_toDualLeft](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/rootspan-map-todualleft--a2b2fcb20181cf78ac825c0e.md) | 251 | `result-track:a2b2fcb20181cf78ac825c0e43915b9d1671f095b36e150be1a46a54d5c4ead2` |
| 40 | `lemma` | [corootSpan_map_toDualRight](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/corootspan-map-todualright--83e7843fa00952b1f3cdb99e.md) | 255 | `result-track:83e7843fa00952b1f3cdb99ef45c2b0dbeff411eaccaadb56fa2dc7b3964556b` |
| 41 | `lemma` | [span_root'_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/span-root-eq-top--76138d086dcb8ce7a688bce2.md) | 259 | `result-track:76138d086dcb8ce7a688bce29197eed864fd70cb34e3786e068bb89a167eabff` |
| 42 | `lemma` | [span_coroot'_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/span-coroot-eq-top--bfdbb9e075802741e6c2d1a6.md) | 263 | `result-track:bfdbb9e075802741e6c2d1a6c130997a4800ec2b6f5b4ff7acdbe59b487c3baa` |
| 43 | `lemma` | [pairingIn_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/pairingin-eq-zero-iff--c907dd67bc43009cad75610a.md) | 267 | `result-track:c907dd67bc43009cad75610a85bd305460f6d6fdfc14f740d5c7da1542496bff` |
| 44 | `def` | [coxeterWeightIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/coxeterweightin--4497c3cf8dcede8bee29329c.md) | 278 | `declaration-track:4497c3cf8dcede8bee29329c80fcb4f3cb895523998f21d11012f386601edb03` |
| 45 | `lemma` | [algebraMap_coxeterWeightIn](../../../../../mathematics/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/declarations/algebramap-coxeterweightin--74d7dce8dd366b2b18fbb958.md) | 281 | `result-track:74d7dce8dd366b2b18fbb95842b38321d99df7abb578a2b966fb6b06b789511c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
