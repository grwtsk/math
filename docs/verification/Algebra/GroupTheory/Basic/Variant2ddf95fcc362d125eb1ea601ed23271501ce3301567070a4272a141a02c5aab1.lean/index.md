# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "202ea47694ca50d38bdc053f60ef720ce660e516",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `202ea47694ca50d38bdc053f60ef720ce660e516`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Reduced` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity--c24feffb4b5d7fa85b64eac6.md) | 51 | `declaration-track:c24feffb4b5d7fa85b64eac6c2ba8d9e62bedf6176e4e4628b35b83bcca2f8be` |
| 2 | `theorem` | [mem_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mem-rootsofunity--bb2af904be80fd1f9e7570b9.md) | 58 | `result-track:bb2af904be80fd1f9e7570b9b47d25467f1d2c15008efba1a2cd197fd89a54b7` |
| 3 | `theorem` | [mem_rootsOfUnity'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mem-rootsofunity--41c8c6f950556bf9cab4286e.md) | 62 | `result-track:41c8c6f950556bf9cab4286e5000abb5b330f64036ef141a88a06102d7752349` |
| 4 | `theorem` | [rootsOfUnity_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-one--b74b6e1dfd3214991b8dc006.md) | 66 | `result-track:b74b6e1dfd3214991b8dc006a70440138ca875f00eb1fef2e438a59673689c69` |
| 5 | `lemma` | [rootsOfUnity_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-zero--c895a88185a1941ed12dbea3.md) | 71 | `result-track:c895a88185a1941ed12dbea3ce5a8b13cbe9127d3e77c32be2e8bc43dfff85f7` |
| 6 | `theorem` | [rootsOfUnity.coe_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-coe-injective--beaf3a2f3f50b42e4f637c4b.md) | 75 | `result-track:beaf3a2f3f50b42e4f637c4b53fa958561ceaa0696babb6772b3f4c6b7a91297` |
| 7 | `def` | [rootsOfUnity.mkOfPowEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-mkofpoweq--f8286c811998d3153d27d386.md) | 82 | `declaration-track:f8286c811998d3153d27d386ab718fb24089f31779a9e7599735e401bd1d7da3` |
| 8 | `theorem` | [rootsOfUnity.coe_mkOfPowEq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-coe-mkofpoweq--87ddda9f60fec692fbca4bdf.md) | 86 | `result-track:87ddda9f60fec692fbca4bdf7f1164bd7cc7df4ac8aa08653745582d68164986` |
| 9 | `theorem` | [rootsOfUnity_le_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-le-of-dvd--bb1055fd18049211c521e24a.md) | 90 | `result-track:bb1055fd18049211c521e24a7ac411c3612212cc63ebe48f3e78fe16ff80f66e` |
| 10 | `theorem` | [map_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/map-rootsofunity--f9516ffded201935773caaa9.md) | 95 | `result-track:f9516ffded201935773caaa97a3a0e042557c4f64c31486f1085c54f51f5e172` |
| 11 | `theorem` | [rootsOfUnity.coe_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-coe-pow--38ed1943d5baa25d64502075.md) | 100 | `result-track:38ed1943d5baa25d64502075fd9249234971e064b9426c16bfb63af90f60077f` |
| 12 | `def` | [rootsOfUnityUnitsMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunityunitsmulequiv--bf909078773df2e4bb38b269.md) | 106 | `declaration-track:bf909078773df2e4bb38b269205034741c262e4f9072b92c4de78247621d92bc` |
| 13 | `def` | [restrictRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/restrictrootsofunity--569269bbd67c91745e9c1428.md) | 121 | `declaration-track:569269bbd67c91745e9c142868ff611dcb5435a470801bd0f6aa5297b4f5b26a` |
| 14 | `theorem` | [restrictRootsOfUnity_coe_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/restrictrootsofunity-coe-apply--ba2a8ba23023ce4b52e64fa3.md) | 131 | `result-track:ba2a8ba23023ce4b52e64fa38e13da5cd2a9064980bbef467a9e2a0a8dc16987` |
| 15 | `def` | [MulEquiv.restrictRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mulequiv-restrictrootsofunity--0fc5c0180e774b1ed8cd82ac.md) | 136 | `declaration-track:0fc5c0180e774b1ed8cd82acac36cdd6bf15cac74848e2ce089cb3a673284239` |
| 16 | `theorem` | [MulEquiv.restrictRootsOfUnity_coe_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mulequiv-restrictrootsofunity-coe-apply--7c7e41f1ea1d1e9405bdcbcd.md) | 145 | `result-track:7c7e41f1ea1d1e9405bdcbcd3c95f9718df61c08485d51fe0daeb895734238d3` |
| 17 | `theorem` | [MulEquiv.restrictRootsOfUnity_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mulequiv-restrictrootsofunity-symm--94ccf68ee701a3f564a79e47.md) | 150 | `result-track:94ccf68ee701a3f564a79e47187a259640077312c6d220eef5af507d00fc7cb2` |
| 18 | `theorem` | [mem_rootsOfUnity_iff_mem_nthRoots](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mem-rootsofunity-iff-mem-nthroots--282c53341eeabfa8974e654b.md) | 161 | `result-track:282c53341eeabfa8974e654b53171109770dee335d47b0990684c865f90f57c8` |
| 19 | `def` | [rootsOfUnityEquivNthRoots](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunityequivnthroots--229f483433472f05b2c424f3.md) | 173 | `declaration-track:229f483433472f05b2c424f34f0ff90736bdb5008fe404e747784e09b1dd6c44` |
| 20 | `theorem` | [rootsOfUnityEquivNthRoots_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunityequivnthroots-apply--af7cdc339e951546e9f13224.md) | 187 | `result-track:af7cdc339e951546e9f13224a6db713b11d42fd53fae337d3aa864a370344c24` |
| 21 | `theorem` | [rootsOfUnityEquivNthRoots_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunityequivnthroots-symm-apply--ca64629c9ee2b8f11fb40378.md) | 192 | `result-track:ca64629c9ee2b8f11fb40378a9f04235d3fa0291ac2559c8550e61a56739a2d0` |
| 22 | `instance` | [rootsOfUnity.fintype](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-fintype--f54793fbcd25540f3f9fdef5.md) | 198 | `declaration-track:f54793fbcd25540f3f9fdef55deac244204d04f73a3e610f2cb8e966542154c7` |
| 23 | `instance` | [rootsOfUnity.isCyclic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/rootsofunity-iscyclic--1eff73c893c3ec3b1fe3ef1b.md) | 202 | `declaration-track:1eff73c893c3ec3b1fe3ef1b536ffce079476c68c8242245fb05efd9b6a2d1ff` |
| 24 | `theorem` | [card_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/card-rootsofunity--2544a98f9cfc12d04a1165cd.md) | 205 | `result-track:2544a98f9cfc12d04a1165cd64d88d8fb141e4cf4dfbaf589a0173317c9db695` |
| 25 | `theorem` | [map_rootsOfUnity_eq_pow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/map-rootsofunity-eq-pow-self--ac45064c6a4caa66e6e0ba11.md) | 216 | `result-track:ac45064c6a4caa66e6e0ba111e5efe827963a0c21ea26cddbe8c101ed16c59ed` |
| 26 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mem-rootsofunity-prime-pow-mul-iff--1a132208bfbcb5beb1514442.md) | 232 | `result-track:1a132208bfbcb5beb1514442072c44a01371e23e37f7f6bb6095f69299cca297` |
| 27 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/mem-rootsofunity-prime-pow-mul-iff--18c289bae557bd8a093ba473.md) | 238 | `result-track:18c289bae557bd8a093ba4738bd404ef3082913941339bfebb038aa58c5f61fa` |
| 28 | `def` | [monoidHomMulEquivRootsOfUnityOfGenerator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/monoidhommulequivrootsofunityofgenerator--7b330547de04af6e61c0255d.md) | 254 | `declaration-track:7b330547de04af6e61c0255d7db22eb603065513fdce7be91a99108f3b6baf33` |
| 29 | `lemma` | [monoidHom_mulEquiv_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2ddf95fcc362d125eb1ea601ed23271501ce3301567070a4272a141a02c5aab1.lean/declarations/monoidhom-mulequiv-rootsofunity--fe589e801f6b59da2465c6f1.md) | 273 | `result-track:fe589e801f6b59da2465c6f1692f317392514289834d1779ccddf022eac43c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
