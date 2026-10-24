# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a913c78fed9e52a810ad2bb2a6285caedae4db3c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a913c78fed9e52a810ad2bb2a6285caedae4db3c`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean.json)

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
| 1 | `def` | [zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers--3751333ffde63ac5784eff35.md) | 30 | `declaration-track:3751333ffde63ac5784eff35bc82a5c73009a2445347313094f270eb2ee961bf` |
| 2 | `theorem` | [mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/mem-zpowers--2b38416a6df0106c53d9ca16.md) | 37 | `result-track:2b38416a6df0106c53d9ca162caa78efbe5294932caf3c6cd3315d2a190168df` |
| 3 | `theorem` | [coe_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/coe-zpowers--a5c59d69f820c92c2af22e36.md) | 41 | `result-track:a5c59d69f820c92c2af22e36b8f312bfa30446413266e7b0d8dbe00f004860d2` |
| 4 | `instance` | [decidableMemZPowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/decidablememzpowers--4fde12b4644e608e8fc2f5e0.md) | 45 | `declaration-track:4fde12b4644e608e8fc2f5e0f0d653b19e46e4c4f0642a222246abf56baa643c` |
| 5 | `theorem` | [zpowers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-eq-closure--6c4c19a2949d17389988e45c.md) | 49 | `result-track:6c4c19a2949d17389988e45c54014294b96459002f35cf1ea437bdb4d35fe168` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/mem-zpowers-iff--41c47d8e32d2a95195cdfde5.md) | 54 | `result-track:41c47d8e32d2a95195cdfde5995b44263cd1a0e395b7fea82caaa70452969f33` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpow-mem-zpowers--cdbbb776ada2c24ef2387412.md) | 58 | `result-track:cdbbb776ada2c24ef23874123e84575f26b579778f83630d14657a46269d84d8` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/npow-mem-zpowers--fbdc8ff256b5387d83e55cc3.md) | 62 | `result-track:fbdc8ff256b5387d83e55cc39502c150bf1b106ac81c666d1b1040736fe486ed` |
| 9 | `theorem` | [forall_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/forall-zpowers--5040adb8991e5e7ee88b11d0.md) | 67 | `result-track:5040adb8991e5e7ee88b11d0044c99555bcf8a0794d824d2f096e2c5498963c0` |
| 10 | `theorem` | [exists_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/exists-zpowers--e916b334a3753878ff458dbe.md) | 72 | `result-track:e916b334a3753878ff458dbe1ac2a9b8c2c145dadb7f2c743e294b78069cd17d` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/forall-mem-zpowers--026dd8e723cd65badb42f449.md) | 76 | `result-track:026dd8e723cd65badb42f449586b5c914cc142ae685e7ed3566e87e4447b321e` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/exists-mem-zpowers--33929e21d5af18ff2fe9a7d8.md) | 80 | `result-track:33929e21d5af18ff2fe9a7d89ac210329573fdfc52e8aa582fa4e86960fdc8bb` |
| 13 | `theorem` | [MonoidHom.map_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/monoidhom-map-zpowers--1919701329d3f88704eb9941.md) | 86 | `result-track:1919701329d3f88704eb994111bd22057b17b63c4acdcf6c6ba76beccf1daaa3` |
| 14 | `theorem` | [Int.mem_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/int-mem-zmultiples-iff--3bdf98806037b30726a91ab0.md) | 90 | `result-track:3bdf98806037b30726a91ab0897958956f2864ecb71b5ff1c23e1e9b4b4d4def` |
| 15 | `lemma` | [Int.zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/int-zmultiples-one--33071ac6385ec657b2fcb8fe.md) | 94 | `result-track:33071ac6385ec657b2fcb8fe307b0bec90b5fb00e2fdb5155f3fcc02890e2bb9` |
| 16 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul--83ef012acf40fe405900f792.md) | 98 | `result-track:83ef012acf40fe405900f7926760870e685af064009e3bf31d919bc49e72ba06` |
| 17 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd--4c39ceb7c6d99a068f33b93c.md) | 103 | `result-track:4c39ceb7c6d99a068f33b93c9fd6a3f00fb8d5c9855c02bc470c11d319cf5171` |
| 18 | `instance` | [zpowers_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-ismulcommutative--ffc16d35e28265b93b8d97c9.md) | 115 | `declaration-track:ffc16d35e28265b93b8d97c95f671f1b5642c652beedd9d3263e65449e3423a9` |
| 19 | `theorem` | [zpowers_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-le--ce7f9de16e222f7f58d72dc5.md) | 119 | `result-track:ce7f9de16e222f7f58d72dc507474a17e6a9e7c2170cd063761d735d7bc187db` |
| 20 | `theorem` | [zpowers_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-eq-bot--22527a22833a8da31d52c5d0.md) | 126 | `result-track:22527a22833a8da31d52c5d0bb639c09c513a3b9207bc33b7774538e7f175814` |
| 21 | `theorem` | [zpowers_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-ne-bot--c05a3e6546ba529f1e5c6f99.md) | 129 | `result-track:c05a3e6546ba529f1e5c6f99694a32f2d900c0033b0b3cec545d8b12752113cd` |
| 22 | `theorem` | [zpowers_one_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-one-eq-bot--cb89e587abca85b84488ce56.md) | 133 | `result-track:cb89e587abca85b84488ce56dcb4063e9dd76efa8e4f01e0c322e4e5718067fc` |
| 23 | `theorem` | [zpowers_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-inv--cb31c9f2406e61735c31e5fd.md) | 137 | `result-track:cb31c9f2406e61735c31e5fdf3ff70db2a0f521edcc1510eb4c19e13bfc068ca` |
| 24 | `theorem` | [zpowers_mul_le_sup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/zpowers-mul-le-sup--181d8350a2e0d8517bceaefb.md) | 143 | `result-track:181d8350a2e0d8517bceaefbac5d8fba0b8800c0155f00a7d6699819f4bb76a3` |
| 25 | `theorem` | [Int.zmultiples_le_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/int-zmultiples-le-zmultiples-iff--5553585ed40d786cc78c210d.md) | 148 | `result-track:5553585ed40d786cc78c210d007497ad1db6023314c635e85625511a214faefa` |
| 26 | `theorem` | [Int.zmultiples_natAbs](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/int-zmultiples-natabs--266a437c194ae696f9cc6d3f.md) | 152 | `result-track:266a437c194ae696f9cc6d3f6c9053e20f6bbfa0cd19e51c69c6ea35ab7cd41c` |
| 27 | `lemma` | [Int.addSubgroupClosure_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf89ba7ae44ad3d36d581858dc6d1186bf5c0a3ddc8d293792cc3d50858d89a01.lean/declarations/int-addsubgroupclosure-one--c90d12eab65697058779e05c.md) | 156 | `result-track:c90d12eab65697058779e05c99980be3d93afd2b9272946696ad3fa605b804ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
