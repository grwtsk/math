# Verification target: GRWTSK.Analysis.MeasureTheory.Periodic.Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f88e4f81eff4a22bb313a8a35a02a852844311",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f88e4f81eff4a22bb313a8a35a02a852844311`.

Source path: `GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCircle.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/addcircle-measurablespace--e8f80cd2b2a71846a9456cf2.md) | 42 | `declaration-track:e8f80cd2b2a71846a9456cf248615ef9d9e9fa025238ef61130e6120b510b8df` |
| 2 | `instance` | [AddCircle.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/addcircle-borelspace--66d9c34bb09b3b666a0d5c52.md) | 46 | `declaration-track:66d9c34bb09b3b666a0d5c527307810963757fc5aa0655587f0b4b17d96c1750` |
| 3 | `theorem` | [AddCircle.measurable_mk'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/addcircle-measurable-mk--b418d772bcc054da6319ff71.md) | 51 | `result-track:b418d772bcc054da6319ff71d5ed19dc550580662b882cb8b21e1aca4fc90a4d` |
| 4 | `theorem` | [isAddFundamentalDomain_Ioc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/isaddfundamentaldomain-ioc--04c57643e04b1d56075a2ab6.md) | 56 | `result-track:04c57643e04b1d56075a2ab6bc7a021c8aa1fd302e4ecad5438e1a25de0f42eb` |
| 5 | `theorem` | [isAddFundamentalDomain_Ioc'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/isaddfundamentaldomain-ioc--b1e45105e22b98585e17ee6c.md) | 66 | `result-track:b1e45105e22b98585e17ee6cfdeb3d2eb0e4ff902fe0b044510627485b536a67` |
| 6 | `instance` | [measureSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurespace--50c22e509ebffacc174da98b.md) | 81 | `declaration-track:50c22e509ebffacc174da98b6474c4e01d35283d76a9f0a33fa3d2d8b8d364e5` |
| 7 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measure-univ--e5a09ad9dd2b823204e80e2a.md) | 86 | `result-track:e5a09ad9dd2b823204e80e2a1b4af7817f69953962eaa4544b25f698250af7df` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/instance--9f5e04ae79669a8b97bf5365.md) | 92 | `declaration-track:9f5e04ae79669a8b97bf536516646fceaf6c8e26dddbc9f3a71b438b4ab9ff42` |
| 9 | `instance` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/isfinitemeasure--29dab8040122a941a3430512.md) | 95 | `declaration-track:29dab8040122a941a3430512c68204e3977fe0d27cea81f183299cc999e15207` |
| 10 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurepreserving-mk--ec80d10d2e01fa8329ae8d66.md) | 103 | `result-track:ec80d10d2e01fa8329ae8d665bc35cf7354c742d2f216c0e96dd60b50c022f45` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/volume-closedball--25ffb0dd22d4e31c817adce9.md) | 113 | `result-track:25ffb0dd22d4e31c817adce9d32ac53af80d08e8fa060007f5d6ff4a89720e74` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/instance--4a905b05adb0c987ca6767ae.md) | 134 | `declaration-track:4a905b05adb0c987ca6767aed5a0265f893e85a21b2e66a86f924218c17e74c8` |
| 13 | `def` | [measurableEquivIoc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurableequivioc--cc16e0414e8e145b0454bb81.md) | 144 | `declaration-track:cc16e0414e8e145b0454bb8176461c73a518ca59782aeb7ddec71e1259101808` |
| 14 | `def` | [measurableEquivIco](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurableequivico--9e31b3a531933cf8587d0474.md) | 154 | `declaration-track:9e31b3a531933cf8587d04744536032787d8f9d2333d669eced392f396234bfb` |
| 15 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/lintegral-preimage--9e57d63a6c208bdc24b10111.md) | 164 | `result-track:9e57d63a6c208bdc24b10111fad050a6241457b8c3e0f5cd63b74a57a5b30c95` |
| 16 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/integral-preimage--78e99c877f5d215245e6f886.md) | 186 | `result-track:78e99c877f5d215245e6f886c45f1b95a669b65dcbbd3962745cdf2b2e0a29a8` |
| 17 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-preimage--0812a12229a7a26d9337f214.md) | 202 | `result-track:0812a12229a7a26d9337f214ad279fbe81861f97ad4c06e8045662a59f6560de` |
| 18 | `instance` | [measureSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurespace--0077c6bd482a212717bd2a25.md) | 214 | `declaration-track:0077c6bd482a212717bd2a258ca5d579ec6c91a2efbf485c3b03cd1763e70eb3` |
| 19 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measure-univ--a5b172ce732bf18da4ab7f3b.md) | 219 | `result-track:a5b172ce732bf18da4ab7f3bfb09edfb856852b8b9e435be32878684f0603dfb` |
| 20 | `instance` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/isfinitemeasure--703a78304316d87235dbaa1c.md) | 222 | `declaration-track:703a78304316d87235dbaa1cecc916f5231a04da8b02e0b4285ea305da8724af` |
| 21 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/measurepreserving-mk--33eea71d8c5177326f43bcfb.md) | 230 | `result-track:33eea71d8c5177326f43bcfbe82d316778951dc2040fd0f9c7ea850053246942` |
| 22 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/lintegral-preimage--d7f3bc84f34cc04135c311c3.md) | 238 | `result-track:d7f3bc84f34cc04135c311c36d613add71b5edd12564e77f8e0668501a6095fb` |
| 23 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/integral-preimage--54d5ada6051b87d6eb99dd71.md) | 247 | `result-track:54d5ada6051b87d6eb99dd71b0df38cbb48f66b42e48babaf8f39850e13afae6` |
| 24 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-preimage--55ab5b2caead6abc7d0e33c3.md) | 254 | `result-track:55ab5b2caead6abc7d0e33c332be8f21aa7edfded9fcbebb785aa5d3ab43c4eb` |
| 25 | `theorem` | [intervalIntegral_add_eq_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-add-eq-of-pos--197a3502553b17782e33b96d.md) | 270 | `result-track:197a3502553b17782e33b96ddbe8e17b285e3ec26b5133eea1474ac2c25a3ffa` |
| 26 | `theorem` | [intervalIntegral_add_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-add-eq--f69db46403a0f3b4d886c8cd.md) | 281 | `result-track:f69db46403a0f3b4d886c8cdb08acfd2ef08252ef555844c8d5db6d5de1d2e8e` |
| 27 | `theorem` | [intervalIntegral_add_eq_add](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-add-eq-add--6211605a9d273e311dd7d4ff.md) | 293 | `result-track:6211605a9d273e311dd7d4ff5fb16f242794ee32e1ce68e18965f4f2edee5413` |
| 28 | `theorem` | [intervalIntegral_add_zsmul_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/intervalintegral-add-zsmul-eq--44ce0d6f81c73ddd35b7855a.md) | 301 | `result-track:44ce0d6f81c73ddd35b7855a5d979e035ce1558e81204f1883d7705010882bce` |
| 29 | `theorem` | [sInf_add_zsmul_le_integral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/sinf-add-zsmul-le-integral-of-pos--b19c88b90b7eb75ef1254872.md) | 334 | `result-track:b19c88b90b7eb75ef1254872fddb2bac6c7c8610155a323392d267c03f4e9f0e` |
| 30 | `theorem` | [integral_le_sSup_add_zsmul_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/integral-le-ssup-add-zsmul-of-pos--4538f6885306668f116e10c0.md) | 350 | `result-track:4538f6885306668f116e10c06db525d8b2e1bebd0f9fe5dd8eee77f1c1bb9292` |
| 31 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/tendsto-attop-intervalintegral-of-pos--647587c049d848c033326f8d.md) | 365 | `result-track:647587c049d848c033326f8dfa9a3700e65937c5d9dab013d4d6cdab4e17ca5b` |
| 32 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/tendsto-atbot-intervalintegral-of-pos--376087890c5f113a29933ea7.md) | 375 | `result-track:376087890c5f113a29933ea7ba10f774c0cceccbed61fd254e10f4981f53b950` |
| 33 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/tendsto-attop-intervalintegral-of-pos--c45c2eec062c47d64305e1f8.md) | 385 | `result-track:c45c2eec062c47d64305e1f8b09bc8757d9d87bcb461009d666a2d5b71528473` |
| 34 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/declarations/tendsto-atbot-intervalintegral-of-pos--4b8a156ddd91bd1d02aafbaa.md) | 392 | `result-track:4b8a156ddd91bd1d02aafbaa94402b4d0456c8456e6ff7e182e08b792f1cac27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
