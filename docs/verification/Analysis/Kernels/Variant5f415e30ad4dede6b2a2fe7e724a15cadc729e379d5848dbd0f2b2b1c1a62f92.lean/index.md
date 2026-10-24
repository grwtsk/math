# Verification target: GRWTSK.Analysis.Kernels.Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e238e1e26c1fd7077231d8b68c2bede27497d7d3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/index.md) · [Full source](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e238e1e26c1fd7077231d8b68c2bede27497d7d3`.

Source path: `GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGroupCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/cokernelcocone--7fae15012ede1e4f1000b151.md) | 46 | `declaration-track:7fae15012ede1e4f1000b15172771899627e127d55c5f870069b0acae16c0c8c` |
| 2 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/cokernellift--1a621b2082434285125236cd.md) | 65 | `declaration-track:1a621b2082434285125236cdfebf958c83f33c769730f482d41811fd8dc691c3` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--f0fe29fd38ed64de4e41ed40.md) | 78 | `declaration-track:f0fe29fd38ed64de4e41ed4049ea2ea022520ab0432ed7360deeb8f6163212d8` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/example--472f02311d03d45e6150489d.md) | 95 | `declaration-track:472f02311d03d45e6150489de46b54b0f84d5381adae7d32fd69e7952e8a8700` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--67c94d29f40820b0ab78b422.md) | 106 | `declaration-track:67c94d29f40820b0ab78b4223fb66a81aef6f0faa46070da4a78af3441b4e573` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--6153a0685f14f0a9f13a494c.md) | 108 | `declaration-track:6153a0685f14f0a9f13a494cf4a6bd92e88011c0d4eb9c66a5841e6ef427cf02` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--b2eff62dfb85981fde1544ce.md) | 110 | `declaration-track:b2eff62dfb85981fde1544ce13569b927f5909a5107ff27fe4aadf6bdc8beaca` |
| 8 | `def` | [fork](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/fork--f6ecda8d9697940ceb9f446a.md) | 113 | `declaration-track:f6ecda8d9697940ceb9f446ad37c9eb3b169d21ad5b5934f8c7a4303d40794aa` |
| 9 | `instance` | [hasLimit_parallelPair](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/haslimit-parallelpair--e3eaf83d412a7a7f3ee70270.md) | 126 | `declaration-track:e3eaf83d412a7a7f3ee702705920b13f141b21a9c17ac7cbc0a1781fbdcca054` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--ff36f6d2907b904293a18ac7.md) | 143 | `declaration-track:ff36f6d2907b904293a18ac71df6ae5ae9902a1b362e0b47998a96a1b886a9f5` |
| 11 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/cokernelcocone--c517f20366e361ba6225b4b4.md) | 155 | `declaration-track:c517f20366e361ba6225b4b433497a67cd55a8ffcb42cfca3a293790e7f1da94` |
| 12 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/cokernellift--7e9afdb3247b690b86f92555.md) | 173 | `declaration-track:7e9afdb3247b690b86f92555681ab58ad5d341f9e5a4a312136abadc85068cd8` |
| 13 | `def` | [isColimitCokernelCocone](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/iscolimitcokernelcocone--8fbf9cd17ee1b5540f72098f.md) | 185 | `declaration-track:8fbf9cd17ee1b5540f72098f419aab8b53c0d43b284e95a7048d0c2c805f74c9` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/instance--0aa8e19c42d304faf08d39d1.md) | 198 | `declaration-track:0aa8e19c42d304faf08d39d1b57aade5c754467c6611393a57c2ad7ce18a613e` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/example--6a398d0c3acbb9c852ea5883.md) | 205 | `declaration-track:6a398d0c3acbb9c852ea5883794d6fb4ca51e8c9a5e86dd3374243aef9749f72` |
| 16 | `def` | [explicitCokernel](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel--b3e5422341dad769f86c666b.md) | 211 | `declaration-track:b3e5422341dad769f86c666b331c54d21bef4d728a6a4cc759e8819b8a20d7ff` |
| 17 | `def` | [explicitCokernelDesc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc--40c7f68ef06bf3ebc00d35af.md) | 218 | `declaration-track:40c7f68ef06bf3ebc00d35afdb9b2cf0c39be76dd0125b0a3c8ef6c5fcc89650` |
| 18 | `def` | [explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel--2649b356cfbc25ddc7e84b76.md) | 226 | `declaration-track:2649b356cfbc25ddc7e84b76be94ea5e4defef01dca704ce275b0c58661eedf4` |
| 19 | `theorem` | [explicitCokernelπ_surjective](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-surjective--3fdc322ff8818166f8271c44.md) | 231 | `result-track:3fdc322ff8818166f8271c4449d583b590f4e35eb9925bf96155dbc12da3fbd1` |
| 20 | `theorem` | [comp_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/comp-explicitcokernel--211e7a1590c1906674f30f4e.md) | 238 | `result-track:211e7a1590c1906674f30f4ef94f2c5e625302cc411cebf5ebc34c19ca2118e6` |
| 21 | `theorem` | [explicitCokernelπ_apply_dom_eq_zero](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-apply-dom-eq-zero--1b42c2d9d0311a328fd6205c.md) | 249 | `result-track:1b42c2d9d0311a328fd6205c6a58a7aca9a1f76f807d08367553f81e6e09c893` |
| 22 | `theorem` | [explicitCokernelπ_desc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-desc--eeba671bb7842d9ed039c907.md) | 256 | `result-track:eeba671bb7842d9ed039c907f9d4ecde595515f89009659804f5200241bb085c` |
| 23 | `theorem` | [explicitCokernelπ_desc_apply](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-desc-apply--521809ac07d0ee823c00d9ce.md) | 263 | `result-track:521809ac07d0ee823c00d9cef066ab331dc70f2aa1ee734fc1fabeeffb583f3e` |
| 24 | `theorem` | [explicitCokernelDesc_unique](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-unique--d7b932a5f3628e3a9f03d3ab.md) | 269 | `result-track:d7b932a5f3628e3a9f03d3abc2eba9ed26673cc26eff9f416f2a207f95df4938` |
| 25 | `theorem` | [explicitCokernelDesc_comp_eq_desc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-comp-eq-desc--5134fcc39f734e65dc69b408.md) | 280 | `result-track:5134fcc39f734e65dc69b40821f4fbd7632c82bb60ba7ef5acbdacadf17707d3` |
| 26 | `theorem` | [explicitCokernelDesc_zero](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-zero--351fe3bb86f6a1c140463c90.md) | 293 | `result-track:351fe3bb86f6a1c140463c903878718fdd0726f3bd801fd6cd6c53d22341ccda` |
| 27 | `theorem` | [explicitCokernel_hom_ext](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-hom-ext--50b92668047db0133439f661.md) | 300 | `result-track:50b92668047db0133439f661e0c21ff57cf8c3e9158b58869587a40ed245da01` |
| 28 | `instance` | [explicitCokernelπ.epi](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-epi--53efae31c55dcf42084ceb64.md) | 312 | `declaration-track:53efae31c55dcf42084ceb6444ea30ec745fa1bd5715590ad590803e0e3a6fe8` |
| 29 | `theorem` | [isQuotient_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/isquotient-explicitcokernel--4d52aa349d9b82f0c2a81d2b.md) | 324 | `result-track:4d52aa349d9b82f0c2a81d2bc54e08edc70ba4d55e1c9106bc84d9e7e9944639` |
| 30 | `theorem` | [normNoninc_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/normnoninc-explicitcokernel--02f41538fcaab5b004252c5b.md) | 330 | `result-track:02f41538fcaab5b004252c5b2bb38b68a48194a7a24c3c6491a4ef5b0831e535` |
| 31 | `theorem` | [explicitCokernelDesc_norm_le_of_norm_le](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-norm-le-of-norm-le--3b646a13b42e011907a500e7.md) | 338 | `result-track:3b646a13b42e011907a500e74a5dbe3205b6c36a07808a4751f30227c4b6db07` |
| 32 | `theorem` | [explicitCokernelDesc_normNoninc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-normnoninc--c5a8dca6f5d6faab32d67a16.md) | 344 | `result-track:c5a8dca6f5d6faab32d67a16808006f8d9bed1225f1961e52a51486c4ba32243` |
| 33 | `theorem` | [explicitCokernelDesc_comp_eq_zero](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-comp-eq-zero--fa9ed5741db55824ae8d50f3.md) | 354 | `result-track:fa9ed5741db55824ae8d50f3f7b529f3e63c286f1203a10aa670126d9af767dc` |
| 34 | `theorem` | [explicitCokernelDesc_norm_le](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneldesc-norm-le--6e8dbd60c25b2dd3e1f62eb5.md) | 361 | `result-track:6e8dbd60c25b2dd3e1f62eb521243791fae13ffed347a3195bbc622583f3d060` |
| 35 | `def` | [explicitCokernelIso](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneliso--dc30868507005a1fd13bab77.md) | 369 | `declaration-track:dc30868507005a1fd13bab771123cd37350a16176fb414142a60b8eca20736f8` |
| 36 | `theorem` | [explicitCokernelIso_hom_π](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneliso-hom--055dc3a645276c18845e2e9d.md) | 376 | `result-track:055dc3a645276c18845e2e9d986108de8bc889f20f00fcd5dc694d5995e27b3d` |
| 37 | `theorem` | [explicitCokernelIso_inv_π](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneliso-inv--3024a87eea7f4405c9d9012b.md) | 383 | `result-track:3024a87eea7f4405c9d9012b92726eb3f6b4f9e7483e9a5e3d72dfceea22a830` |
| 38 | `theorem` | [explicitCokernelIso_hom_desc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokerneliso-hom-desc--a5b4f7917b0b8d7bf3611f35.md) | 390 | `result-track:a5b4f7917b0b8d7bf3611f35b67b61ae2fda32998ce871cc7c0e34069d3cde2d` |
| 39 | `def` | [explicitCokernel.map](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcokernel-map--1958a9af51880ef8cb1509c8.md) | 400 | `declaration-track:1958a9af51880ef8cb1509c8afad1c5d1f41e3681326f7f1e245b34991442357` |
| 40 | `theorem` | [ExplicitCoker.map_desc](../../../../mathematics/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/declarations/explicitcoker-map-desc--8a5307b19055d45501c62dcf.md) | 408 | `result-track:8a5307b19055d45501c62dcf1a60851974b3d4c650c728b018b3bdee1a39c049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
