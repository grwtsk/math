# Verification target: GRWTSK.Algebra.Basic.Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177d7c2590394d970722a27314bef608ef7086b0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177d7c2590394d970722a27314bef608ef7086b0`.

Source path: `GRWTSK/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean.json)

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
| 1 | `theorem` | [RingHom.isIntegralElem_map](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-map--acae79045bc3bc083e76fe2e.md) | 38 | `result-track:acae79045bc3bc083e76fe2e443ac9416df61923af8864769d664eb7d79233f7` |
| 2 | `theorem` | [isIntegral_algebraMap](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-algebramap--6094810aef72955cc01fa0c8.md) | 41 | `result-track:6094810aef72955cc01fa0c8b5514f8a824c19849078ddf201feb43dbf56d55a` |
| 3 | `lemma` | [RingHom.IsIntegralElem.map](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-map--fec87b486e7b87b11747a088.md) | 45 | `result-track:fec87b486e7b87b11747a0885c487ddc9354c13d0f73e764416a3e879aceec9a` |
| 4 | `lemma` | [RingHom.IsIntegralElem.of_map](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-of-map--37ebb80fc9a09e4bd60e7f7a.md) | 51 | `result-track:37ebb80fc9a09e4bd60e7f7a8899bcfabf08c04b1a3b12c55e2508972cbe1c44` |
| 5 | `lemma` | [RingHom.IsIntegralElem.map_iff](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-map-iff--3fde3cb2ac1764f3d6cf06c3.md) | 58 | `result-track:3fde3cb2ac1764f3d6cf06c3eec25ca4557e986e280097bb6d2ebcb04edc94ba` |
| 6 | `lemma` | [RingHom.IsIntegralElem.of_comp](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-of-comp--db7f575ead98cf2d76b832f0.md) | 71 | `result-track:db7f575ead98cf2d76b832f086e5b886ca672268b7e2e525f3b33919c1130ec7` |
| 7 | `theorem` | [IsIntegral.map](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-map--8870de4b4d134bd7acf56772.md) | 76 | `result-track:8870de4b4d134bd7acf56772f49ed4d03f1438dbafd40a2f64607700f08319ea` |
| 8 | `theorem` | [isIntegral_algHom_iff](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-alghom-iff--425a4192eaa8cc17c99dad86.md) | 87 | `result-track:425a4192eaa8cc17c99dad8625d0bd0c4b587f81b11b7c9130c03cad0077cc9e` |
| 9 | `theorem` | [Submodule.span_range_natDegree_eq_adjoin](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/submodule-span-range-natdegree-eq-adjoin--291a534d472b08b438246bfb.md) | 94 | `result-track:291a534d472b08b438246bfb7572383bee770880b484bfed321ad7df5c35fa54` |
| 10 | `theorem` | [IsIntegral.fg_adjoin_singleton](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-fg-adjoin-singleton--d0143ed22aa11aee80810593.md) | 112 | `result-track:d0143ed22aa11aee80810593f3f28e3d0088f2d66a126bb670cb0719ac61eae8` |
| 11 | `theorem` | [RingHom.isIntegralElem_zero](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-zero--543175c6bd2bda2e74944921.md) | 121 | `result-track:543175c6bd2bda2e749449219023e30353ec51fdd0667900dbafcda027b4001f` |
| 12 | `theorem` | [isIntegral_zero](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-zero--4e32870353fab4353698ee13.md) | 124 | `result-track:4e32870353fab4353698ee13520bd6dbf005fb443abe3a3a2e4181fe7406772c` |
| 13 | `theorem` | [RingHom.isIntegralElem_one](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringhom-isintegralelem-one--47f9deddbe6f980e14e26c08.md) | 127 | `result-track:47f9deddbe6f980e14e26c08cb04b0412c97ec22c9f8529280bc076040f43a5d` |
| 14 | `theorem` | [isIntegral_one](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-one--8c8717d1b30098ec79320b82.md) | 130 | `result-track:8c8717d1b30098ec79320b82461ccfde47fa5ef17cca2e4efcfd8175b0c50205` |
| 15 | `theorem` | [IsIntegral.of_pow](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-of-pow--43d61493fd7ff72ffeb3f278.md) | 133 | `result-track:43d61493fd7ff72ffeb3f278a92ae2eee45889379c4030c94af2ab1eba9e70e5` |
| 16 | `theorem` | [IsIntegral.of_aeval_monic](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-of-aeval-monic--0895e7f3bd264a9c2f85de91.md) | 138 | `result-track:0895e7f3bd264a9c2f85de91824927113728720977916155178ebc05fba63886` |
| 17 | `theorem` | [IsIntegral.map_of_comp_eq](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-map-of-comp-eq--2ed6b1abbf5741d691fe624b.md) | 151 | `result-track:2ed6b1abbf5741d691fe624bf65c23b831deb87bb762501b98ab970f742534b8` |
| 18 | `theorem` | [isIntegral_algEquiv](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-algequiv--c812a169e88d3a8033d2ff70.md) | 160 | `result-track:c812a169e88d3a8033d2ff70d9a60ae7f8a1a1f886bbb7ef9e4e9bc7ff886a8d` |
| 19 | `theorem` | [IsIntegral.tower_top](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-tower-top--adebec2058f37d8eafdb65a4.md) | 166 | `result-track:adebec2058f37d8eafdb65a48f98320e3c9102b7aeeaba4be2a84a4729a6c750` |
| 20 | `theorem` | [RingEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/ringequiv-isintegral-iff--27108cb64601e8fe69534d0c.md) | 174 | `result-track:27108cb64601e8fe69534d0c91f5c815e305149eeefdd86381ebfabaf3883c3e` |
| 21 | `theorem` | [map_isIntegral_int](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/map-isintegral-int--600c99974736df740721f220.md) | 191 | `result-track:600c99974736df740721f22046811dc349f001b1f6c6a99f3d0086e7f2902688` |
| 22 | `theorem` | [IsIntegral.of_subring](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-of-subring--17e37a6785f436f46b7f7072.md) | 196 | `result-track:17e37a6785f436f46b7f7072177c268e0ccb7eea15e3ad27eccf2fb9d96e5b29` |
| 23 | `theorem` | [IsIntegral.algebraMap](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-algebramap--52ba2e9a5891c30b339b5537.md) | 199 | `result-track:52ba2e9a5891c30b339b553765fec9180baf47156087e47e88ede4fa34fe74b7` |
| 24 | `theorem` | [isIntegral_algebraMap_iff](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-algebramap-iff--01b76e77d5b0b32b20df081f.md) | 205 | `result-track:01b76e77d5b0b32b20df081f779f7db8dceb44eb6654ee2f12f0fbfe04800e3a` |
| 25 | `theorem` | [isIntegral_iff_isIntegral_closure_finite](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-iff-isintegral-closure-finite--a55ae295cf428786a54512eb.md) | 209 | `result-track:a55ae295cf428786a54512ebe032310e23b8faade1580e6c8cd23dcdf0912458` |
| 26 | `theorem` | [fg_adjoin_of_finite](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/fg-adjoin-of-finite--0d025b771159735baf38a3a1.md) | 219 | `result-track:0d025b771159735baf38a3a17fe7514ffd19321ffc4fb2584d75210d53a34936` |
| 27 | `theorem` | [Algebra.finite_adjoin_of_finite_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/algebra-finite-adjoin-of-finite-of-isintegral--8331930ddc020bc6a1754918.md) | 231 | `result-track:8331930ddc020bc6a1754918b8f316a3cc2bbe600a1eb5da3f41b8b99e057278` |
| 28 | `theorem` | [Algebra.finite_adjoin_simple_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/algebra-finite-adjoin-simple-of-isintegral--cab7fd16df230ddb76580b8e.md) | 235 | `result-track:cab7fd16df230ddb76580b8ef3eef8e8ce9b4494a35c00841df5206b042b11f0` |
| 29 | `theorem` | [isNoetherian_adjoin_finset](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isnoetherian-adjoin-finset--b68c7bfc8fee0887da3aa356.md) | 239 | `result-track:b68c7bfc8fee0887da3aa356421dd3eff9c4ff40c47a63d7b57c657a87832853` |
| 30 | `theorem` | [IsIntegral.pair](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-pair--a1b01b7cc6304bc0f76e3647.md) | 251 | `result-track:a1b01b7cc6304bc0f76e3647797bfb0107d6b832c37ffdb4d22a45781844e265` |
| 31 | `theorem` | [IsIntegral.pair_iff](../../../../mathematics/Algebra/Basic/Variant2436cd12c9940ab49e59cee24097f2209221dee89cc949ac10cbca60284c3438.lean/declarations/isintegral-pair-iff--0d48c074a5bf15c850a897f5.md) | 261 | `result-track:0d48c074a5bf15c850a897f5efb704a2ff870b30006b7d351ae284c59ad8cb63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
