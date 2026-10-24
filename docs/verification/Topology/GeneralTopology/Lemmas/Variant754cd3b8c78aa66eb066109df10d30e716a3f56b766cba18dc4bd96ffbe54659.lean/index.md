# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "012e5a662d82bdd8ba92625640ae63c8e257ffb3",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `012e5a662d82bdd8ba92625640ae63c8e257ffb3`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpen_Ico_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/isopen-ico-zero--6307f42faddc8f5fd72da321.md) | 56 | `result-track:6307f42faddc8f5fd72da321d77dcc311fcc8afeba27f3df48838387af321c12` |
| 2 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.continuous_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--79699c07e0124b0993221e62.md) | 61 | `result-track:79699c07e0124b0993221e6260300eee8341ee4537911fa16187af8cd2235755` |
| 3 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.ContinuousMap.realToNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--8ec6b9da4e6d9867f6d6f13a.md) | 66 | `declaration-track:8ec6b9da4e6d9867f6d6f13a26d227bc5acb633d370db1fd4a008f3e7928a784` |
| 4 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.ContinuousOn.ofReal_map_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--a5b5e9ac44f25ec6523b2282.md) | 69 | `result-track:a5b5e9ac44f25ec6523b2282dfeae604ddf1dcf4371166166a50ec1b9acfae23` |
| 5 | `theorem` | [tendsto_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-coe--e28677fe648f6e92d10f5383.md) | 75 | `result-track:e28677fe648f6e92d10f53834761d598bd4d536838120e6d04791947193cf625` |
| 6 | `theorem` | [tendsto_coe'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-coe--e41bd428889e68b219363918.md) | 79 | `result-track:e41bd428889e68b219363918ac4a214bac6a84e28ccd3b615dced8794a2e01bf` |
| 7 | `theorem` | [map_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/map-coe-attop--0db3dc323c1367c1561394c8.md) | 83 | `result-track:0db3dc323c1367c1561394c8a2d230a46f8d27a4f917ab982e601556d9444d13` |
| 8 | `theorem` | [comap_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/comap-coe-attop--52c70bd8b335f54084606b8f.md) | 86 | `result-track:52c70bd8b335f54084606b8f9fbfc36ea1284993a8804da369c82aa9d421244c` |
| 9 | `theorem` | [tendsto_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-coe-attop--11312586ffd1ab4efc31e4d3.md) | 89 | `result-track:11312586ffd1ab4efc31e4d309ea3e9e3e1fc700c3718d91ea790b2c23f530f1` |
| 10 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.tendsto_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--c6a008e6a1dc6f60aab503dc.md) | 93 | `result-track:c6a008e6a1dc6f60aab503dcae1452671d7ce15be344118b7f5584091bc3c30f` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.map_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--0cf25c9380b2d7fad9cf8251.md) | 98 | `result-track:0cf25c9380b2d7fad9cf8251062c33fd7da9f7b69d45e4a3bc8779959c972d74` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.tendsto_real_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--9a45d2b8474fd106f13859ac.md) | 101 | `result-track:9a45d2b8474fd106f13859acb600e3d976158579ac10c402e52853525771842f` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.comap_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--69f4cd03fe7bfbb6879fb754.md) | 105 | `result-track:69f4cd03fe7bfbb6879fb7543f03598ac011679acdcd379c708b6c23bd036e8d` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.tendsto_toNNReal_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--c8f6fb0cbcbf7a923011082d.md) | 112 | `result-track:c8f6fb0cbcbf7a923011082d1515ddc3fccb4bba3c29f5894f423ba353fb60a3` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.tendsto_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--4648b6113de7cea287f7ad0d.md) | 116 | `result-track:4648b6113de7cea287f7ad0d52a179d2c27178741fc0fa0a97c50e5467eab79c` |
| 16 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/nhds-zero--6ecaa52bf1f0a7adfdfb9abb.md) | 119 | `result-track:6ecaa52bf1f0a7adfdfb9abbc034a9eb5f19852e5e02d87b26f30433e9a3baa4` |
| 17 | `theorem` | [nhds_zero_basis](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/nhds-zero-basis--188eaac4a07fd5dc03dffb72.md) | 122 | `result-track:188eaac4a07fd5dc03dffb72a5ae73dc1f86fc87040b499df009721c0d761927` |
| 18 | `theorem` | [hasSum_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/hassum-coe--cb5af5383bbd9fa71975cbd4.md) | 127 | `result-track:cb5af5383bbd9fa71975cbd4491bf4493db5b226a8bb4b91623c50d1b90c97ba` |
| 19 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.HasSum.toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--8a873579cd291eb8f0880b62.md) | 130 | `result-track:8a873579cd291eb8f0880b628e003ac51dc20bbecb4f26e71622af2490bfdef0` |
| 20 | `theorem` | [hasSum_real_toNNReal_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/hassum-real-tonnreal-of-nonneg--b23746e71983c74845e4bc25.md) | 136 | `result-track:b23746e71983c74845e4bc259f17c3099a198adb5b4588182e2fdbc7fbf47e98` |
| 21 | `theorem` | [summable_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/summable-coe--5f85573f942f059a319e9b6f.md) | 141 | `result-track:5f85573f942f059a319e9b6ffe377a0d7a236e338980bbbc715f9f8d7bff0a3a` |
| 22 | `theorem` | [summable_mk](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/summable-mk--41cfb2aa98705f469f31a323.md) | 146 | `result-track:41cfb2aa98705f469f31a32350f9f46b9cd33b058f076454fcafe4d93d2f6172` |
| 23 | `theorem` | [coe_tsum](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/coe-tsum--829c7648502bd28591037b87.md) | 151 | `result-track:829c7648502bd28591037b8713d32d1fb42d7e2f25b0eaa9ad73b3d76e7fcae6` |
| 24 | `theorem` | [coe_tsum_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/coe-tsum-of-nonneg--e9fb45bc80ed289757f6d4cc.md) | 156 | `result-track:e9fb45bc80ed289757f6d4ccec961b14e6df9eaf1db3ac6d28e66439836f2ae5` |
| 25 | `theorem` | [tsum_mul_left](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tsum-mul-left--97b127e56397f20f0e659126.md) | 160 | `result-track:97b127e56397f20f0e659126fbe56d1757517944a16c137dfc9e3770a5a92491` |
| 26 | `theorem` | [tsum_mul_right](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tsum-mul-right--14d44301f21840c9d832e7e5.md) | 163 | `result-track:14d44301f21840c9d832e7e5d15116407fe041c95d88cbf14d4530cf20f35f16` |
| 27 | `theorem` | [summable_comp_injective](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/summable-comp-injective--844df9aca9951d9f8aca1936.md) | 166 | `result-track:844df9aca9951d9f8aca193683b65508a3d93449234d7488ee2ca3d55cff9593` |
| 28 | `theorem` | [summable_nat_add](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/summable-nat-add--e40a4b2231c0e54b8030920e.md) | 171 | `result-track:e40a4b2231c0e54b8030920ee6f9eda4a194e6a1c62922a08ac9888fd8b9b18a` |
| 29 | `theorem` | [summable_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/summable-nat-add-iff--4970b9295ae8b1ff1e93e6b2.md) | 174 | `result-track:4970b9295ae8b1ff1e93e6b261addc2cbf3855bd9296dbb8f6ae14920222146e` |
| 30 | `theorem` | [hasSum_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/hassum-nat-add-iff--03b71fdded23c3e134f1c149.md) | 179 | `result-track:03b71fdded23c3e134f1c1496dcad5962da26b398d73f44d18c564c442444b4d` |
| 31 | `theorem` | [sum_add_tsum_nat_add](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/sum-add-tsum-nat-add--42e78ac819a72248fd309121.md) | 183 | `result-track:42e78ac819a72248fd309121a413db38d62568dd118bbfc3499f8fe38b4d833d` |
| 32 | `theorem` | [iInf_real_pos_eq_iInf_nnreal_pos](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/iinf-real-pos-eq-iinf-nnreal-pos--a996186c445b2b87543f2d11.md) | 187 | `result-track:a996186c445b2b87543f2d111dc882567024bc11415e60afe5da9d1222a2d177` |
| 33 | `theorem` | [tendsto_cofinite_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-cofinite-zero-of-summable--144c91b7cfb270adb837a061.md) | 193 | `result-track:144c91b7cfb270adb837a0612f55a200a239a5d2a87c58ea45778cf8796c1d87` |
| 34 | `theorem` | [tendsto_atTop_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-attop-zero-of-summable--6c34675fc7ddf5dfd87e059d.md) | 198 | `result-track:6c34675fc7ddf5dfd87e059d4147eb576b1b5ec991dc43da7b6e55d382b7905d` |
| 35 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-tsum-compl-attop-zero--36aa7415ff0608031cf1caf3.md) | 204 | `result-track:36aa7415ff0608031cf1caf341f6111645f84f96f5c4a229ad541c506c69bd31` |
| 36 | `def` | [powOrderIso](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/poworderiso--3857def1bb2aef256be4d9c2.md) | 210 | `declaration-track:3857def1bb2aef256be4d9c2faeabb161a38dc3ec23a7842acf3aea345c328b2` |
| 37 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.tendsto_of_bddAbove_monotone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--f719d2efb4b74a4158eaa65c.md) | 219 | `result-track:f719d2efb4b74a4158eaa65cd44b612eecda1be3ceedcc77ab399564966b3479` |
| 38 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsOpenIcoZero.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.Real.tendsto_of_bddBelow_antitone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/root-grwtsk-topology-generaltopology-isopenicozero-variant9216c9fbf7458c--bdc03434644b17c4ec080d12.md) | 225 | `result-track:bdc03434644b17c4ec080d12caadc2d9e1fbc65c498379a6716e87ded38188a5` |
| 39 | `theorem` | [tendsto_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/tendsto-of-antitone--3265058d5c7b0a8b03857984.md) | 231 | `result-track:3265058d5c7b0a8b03857984b3d32f302a4e3bb7dae6b9543303f7083cd66765` |
| 40 | `lemma` | [iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/isup-pow-of-ne-zero--21e5b3445957b0d89535c982.md) | 245 | `result-track:21e5b3445957b0d89535c98234fe574f39f89030d52c840dc72f686caacdd0ad` |
| 41 | `lemma` | [iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/isup-pow--7da71c5473df048296c62034.md) | 248 | `result-track:7da71c5473df048296c62034f043d650dc3521b03e472e18ad49153648bb9522` |
| 42 | `def` | [powOrderIso](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/poworderiso--d1b057eebb4f14974b27b86f.md) | 262 | `declaration-track:d1b057eebb4f14974b27b86f1b54cb08068baa983debb50fdf1f60e9fddf767a` |
| 43 | `lemma` | [iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/isup-pow-of-ne-zero--4f2a4546844ca25a5ab67d0b.md) | 266 | `result-track:4f2a4546844ca25a5ab67d0b7643324f8d62cb93b1604c9a53a4e2ffa9a7173c` |
| 44 | `lemma` | [iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/isup-pow--38e37a50ae0e7dee7aa28151.md) | 270 | `result-track:38e37a50ae0e7dee7aa28151863d6a69855c594ef92a78750f1d45a1d1cf5278` |
| 45 | `lemma` | [Real.iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/real-isup-pow--8c3d46c78d818ccfab6c5a45.md) | 278 | `result-track:8c3d46c78d818ccfab6c5a459e61d6fa1873f6a7919e54da891328292fa090b6` |
| 46 | `lemma` | [Real.iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant754cd3b8c78aa66eb066109df10d30e716a3f56b766cba18dc4bd96ffbe54659.lean/declarations/real-isup-pow-of-ne-zero--2b4c7c8b83f6acf4ad0f1191.md) | 282 | `result-track:2b4c7c8b83f6acf4ad0f1191ae4ef218e87786c698214b0bebd71f0c66ae0fc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
