# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ProductMeasure.Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79215f8240d02ec79682931184a2179091e4727f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79215f8240d02ec79682931184a2179091e4727f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.Traj` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isProjectiveMeasureFamily_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/isprojectivemeasurefamily-pi--20c02eba74b9a49c703aa1a9.md) | 69 | `result-track:20c02eba74b9a49c703aa1a99a53b21a46d1996fa04523d44fe64f2b5d269813` |
| 2 | `def` | [piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/picontent--0f51ba7229d82904f67c95a6.md) | 81 | `declaration-track:0f51ba7229d82904f67c95a617ce844a16e248935797fdd80eaab7931adfad7e` |
| 3 | `lemma` | [piContent_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/picontent-cylinder--82ef470fdb8dc88248c99650.md) | 84 | `result-track:82ef470fdb8dc88248c99650fdb81016bc788906521e90f59432a18076682ceb` |
| 4 | `theorem` | [piContent_eq_measure_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/picontent-eq-measure-pi--4d9823fba7d47341c43afef5.md) | 88 | `result-track:4d9823fba7d47341c43afef5a25ec56ff1632b6de95c73a6710efd944c78cbb6` |
| 5 | `def` | [infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepinat--48e165ae5e57c813d7f4513e.md) | 117 | `declaration-track:48e165ae5e57c813d7f4513ec60b3d1a4aee248ce6586844c8020888c5f49f37` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/instance--9948e4c2d065f705c4845558.md) | 120 | `declaration-track:9948e4c2d065f705c48455589f40d5496adf4227fde513792b5da74e91b308a8` |
| 7 | `lemma` | [pi_prod_map_IocProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/pi-prod-map-iocprodioc--7f19f5942965ff8399da30ac.md) | 126 | `result-track:7f19f5942965ff8399da30ac059ffa1a4339d1e5d79759a340bd756635c7f130` |
| 8 | `lemma` | [pi_prod_map_IicProdIoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/pi-prod-map-iicprodioc--de768cc3d652edf3bc1077cb.md) | 142 | `result-track:de768cc3d652edf3bc1077cb01317b88e9cbe8a2d72f70624946b96e7a3da1b6` |
| 9 | `lemma` | [map_piSingleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/map-pisingleton--19fbbe632bb4e711e17a5bad.md) | 161 | `result-track:19fbbe632bb4e711e17a5bad6f5990df5909ca2403a2a39b4c04e6053a189a21` |
| 10 | `theorem` | [partialTraj_const_restrict₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/partialtraj-const-restrict--d080df6748bce2e25face503.md) | 177 | `result-track:d080df6748bce2e25face503c42cabeaf7b3a5e651a560d4d36ac8a8e938a564` |
| 11 | `theorem` | [partialTraj_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/partialtraj-const--fefab2834c5d883b9a44140f.md) | 206 | `result-track:fefab2834c5d883b9a44140fa471fc6d04e50bbe9cbaf2943638ccdf2904ba5b` |
| 12 | `theorem` | [isProjectiveLimit_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/isprojectivelimit-infinitepinat--63ece78afc152661499a0128.md) | 213 | `result-track:63ece78afc152661499a01281e14dd40a27d364843099c1583f06630151a484a` |
| 13 | `lemma` | [infinitePiNat_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepinat-map-restrict--c3fda6f2d1433ae2ed172bb9.md) | 224 | `result-track:c3fda6f2d1433ae2ed172bb9ff4a3208a303368eb42557c40c17e5436b2bdb02` |
| 14 | `theorem` | [piContent_eq_infinitePiNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/picontent-eq-infinitepinat--110c2886c936a9ce90b27dba.md) | 228 | `result-track:110c2886c936a9ce90b27dba20c9e616ee67b21e80e850861bba16f0142861d8` |
| 15 | `lemma` | [Measure.infinitePiNat_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/measure-infinitepinat-map-picongrleft--8a4ffac0477d2c6e0aad21b0.md) | 251 | `result-track:8a4ffac0477d2c6e0aad21b069bb2681957469fe0db882e3d0e61a61cf19642f` |
| 16 | `theorem` | [piContent_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/picontent-tendsto-zero--b67c3df6fff1e3c4dad2251e.md) | 268 | `result-track:b67c3df6fff1e3c4dad2251e5257d797f70ba86f5a7f1cacb2ca3089f56fb668` |
| 17 | `theorem` | [isSigmaSubadditive_piContent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/issigmasubadditive-picontent--8ae7964dfc82befcf3a16348.md) | 343 | `result-track:8ae7964dfc82befcf3a16348ec1c391d01e88897a04b15add5d538334e0b77be` |
| 18 | `def` | [infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi--6a60fc6d5bf5817bd544236f.md) | 355 | `declaration-track:6a60fc6d5bf5817bd544236fb58051cc2c152cb70b0f55d917dd967f0e2fd9a4` |
| 19 | `theorem` | [isProjectiveLimit_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/isprojectivelimit-infinitepi--c884c11e64ef6ebfd20c66ad.md) | 361 | `result-track:c884c11e64ef6ebfd20c66ad4298db09f2d3476fa14a3dc7ac73ac2a8b478886` |
| 20 | `theorem` | [infinitePi_map_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi-map-restrict--47f159bf85aae0f19a8c972c.md) | 372 | `result-track:47f159bf85aae0f19a8c972c580c2962c9fa4d52b5e82c89b9f0e6fe708a11c2` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/instance--87da9dd37b6ab6f5f2af789f.md) | 376 | `declaration-track:87da9dd37b6ab6f5f2af789f3c87de858dd82fe2d0971b6529f9d4d902574cbd` |
| 22 | `theorem` | [eq_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/eq-infinitepi--55595f61bf69e4ba76d7a5d4.md) | 383 | `result-track:55595f61bf69e4ba76d7a5d4324c6f499995aa04e87e095fb1159648b3e987ad` |
| 23 | `lemma` | [infinitePi_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi-pi--0674d058937259d679690d16.md) | 398 | `result-track:0674d058937259d679690d1605a9b1d16f20b5f0417fab9a8acd25765e7c1f9f` |
| 24 | `theorem` | [infinitePi_map_piCongrLeft](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi-map-picongrleft--09b4edcfb46de76fdecdd34c.md) | 411 | `result-track:09b4edcfb46de76fdecdd34c427eb29120fd09c70f8c562d26ac5556bcb1d104` |
| 25 | `theorem` | [infinitePi_eq_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi-eq-pi--0b648000965607c5f0cccc87.md) | 423 | `result-track:0b648000965607c5f0cccc87d2420e3a81c87db626b537a043f58b98e7b65b2f` |
| 26 | `lemma` | [infinitePi_cylinder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/infinitepi-cylinder--29abbd73b55efb9ea3911130.md) | 428 | `result-track:29abbd73b55efb9ea39111307e3b474fa805a852a08ef4b315ed6075d320fbe5` |
| 27 | `theorem` | [integral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/integral-restrict-infinitepi--c69eb45a1c107b3f6e3fb5d7.md) | 436 | `result-track:c69eb45a1c107b3f6e3fb5d74b621fe47cb88439a064b5cf43361ed59a4fb5c4` |
| 28 | `theorem` | [lintegral_restrict_infinitePi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/lintegral-restrict-infinitepi--a7fafae601a09c2c23adda92.md) | 444 | `result-track:a7fafae601a09c2c23adda9215889d42190f221e7314ba40883109471888cf60` |
| 29 | `theorem` | [integral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/integral-infinitepi-of-pifinset--37cf2183172823b54264fc7a.md) | 451 | `result-track:37cf2183172823b54264fc7a3a5904f2cc51e52b561b5a68eb00e065efb8e8e5` |
| 30 | `theorem` | [lintegral_infinitePi_of_piFinset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/declarations/lintegral-infinitepi-of-pifinset--3cf3c77cf4427e75f0c0d42a.md) | 463 | `result-track:3cf3c77cf4427e75f0c0d42af6efa6f88c3cb4c04bcb678f2ab10f9c856acff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
