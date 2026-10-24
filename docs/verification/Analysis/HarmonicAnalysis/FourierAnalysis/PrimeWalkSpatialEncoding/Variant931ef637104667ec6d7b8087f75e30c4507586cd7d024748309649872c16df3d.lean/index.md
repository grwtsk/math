# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimeWalkSpatialEncoding.Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "348c88212555163e14c821f498bb6a38b799ec60",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `348c88212555163e14c821f498bb6a38b799ec60`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/spatialpoint--2df542174c6fa8f2f2e389f8.md) | 61 | `declaration-track:2df542174c6fa8f2f2e389f8327bcf912b514b8f5693052f2ed387643a503c1a` |
| 2 | `abbrev` | [ErrorTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/errortrajectory--fe4496a381a41b489b66eaee.md) | 64 | `declaration-track:fe4496a381a41b489b66eaeec26a77d6c35b92dfe618184a79b555c9d7c855da` |
| 3 | `abbrev` | [SpatialSignal](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/spatialsignal--e6a42e3a3de2badebed84df1.md) | 67 | `declaration-track:e6a42e3a3de2badebed84df1258e5782084464ea4a95fdbf1f4d1c48eb41f211` |
| 4 | `structure` | [UnitTube3](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/unittube3--32bb9181cea4b10fdce89924.md) | 70 | `declaration-track:32bb9181cea4b10fdce89924429df3317434b7a985d8e21eff2075b3a5b51db2` |
| 5 | `def` | [UnitTube3.axisSegment](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/unittube3-axissegment--c2b9c4e63383b2fa690bdd55.md) | 79 | `declaration-track:c2b9c4e63383b2fa690bdd55f785c082ed540ec67fdc458fe5bcc2ef4c9b3514` |
| 6 | `def` | [UnitTube3.carrier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/unittube3-carrier--3c27ba7bccbb08e779432581.md) | 87 | `declaration-track:3c27ba7bccbb08e779432581ebeca2483ede3a715f98f65a40e98f7e4f9ddf79` |
| 7 | `def` | [spatialFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/spatialfouriertransform--ab8abba24ec8eee8a0f8d3f1.md) | 92 | `declaration-track:ab8abba24ec8eee8a0f8d3f1c01b8a783810919bad5dd85be4a57775606b90e5` |
| 8 | `def` | [packetSum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/packetsum--b2224715dbe5ead5f6eb582c.md) | 98 | `declaration-track:b2224715dbe5ead5f6eb582cc4acf5457660e74201f4f055e92e6f65da05fcf9` |
| 9 | `def` | [reconstructionError](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/reconstructionerror--517f0face97d1dd1e5f04bbb.md) | 105 | `declaration-track:517f0face97d1dd1e5f04bbbec44bb7fe64ca210971d116f8143300ee810bce0` |
| 10 | `def` | [packetSquareFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/packetsquarefunction--0448b1c04a073a67f47862fc.md) | 113 | `declaration-track:0448b1c04a073a67f47862fc0821716cb1b322e8dd40e1d910332536a24145c7` |
| 11 | `structure` | [L2SpatialReadout](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/l2spatialreadout--5f17a8064ac2e4b6d398ae28.md) | 129 | `declaration-track:5f17a8064ac2e4b6d398ae287b7a1d8fd66f6e61b06bdbef2b1c7abb32dbeeaf` |
| 12 | `def` | [tubeMultiplicity](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/tubemultiplicity--984f3e65a7e782edd9616dff.md) | 145 | `declaration-track:984f3e65a7e782edd9616dfffbecbe3bd01b81cdff3c169ada5314d4c8f46750` |
| 13 | `def` | [multiplicitySuperlevelSet](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/multiplicitysuperlevelset--cf6398a47b73958901ae85f4.md) | 155 | `declaration-track:cf6398a47b73958901ae85f42bf7de7e351df4b236c411e9d941788aa82f66ef` |
| 14 | `structure` | [AssumedMultiplicityPowerLaw](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/assumedmultiplicitypowerlaw--83a4c04b0a937ef7acecf2ec.md) | 167 | `declaration-track:83a4c04b0a937ef7acecf2ecdf7c33374c3a2c79f744be01c15a69c84a53c159` |
| 15 | `constant` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/constant--619500e2e9bd8af238db24af.md) | 174 | `declaration-track:619500e2e9bd8af238db24af59fb9b77112ea207bf1d6cd7cf5aed1cf4a69d52` |
| 16 | `constant` | [*](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/anonymous--a224c4941ad5b0b8afc05725.md) | 181 | `declaration-track:a224c4941ad5b0b8afc057254e2c46f8bab76a5721927a6a168d3a97f8531159` |
| 17 | `structure` | [SpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/spatialencodedtrajectory--5a0bc590463cbec26f3c2f71.md) | 193 | `declaration-track:5a0bc590463cbec26f3c2f713b49171eb1db2919ae3602046116fb441566ac51` |
| 18 | `structure` | [SomeSpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/somespatialencodedtrajectory--e9e0fd8b354a9da623a4a5e6.md) | 254 | `declaration-track:e9e0fd8b354a9da623a4a5e6f070af3477f1ae0da4a1e06be0124302f2dcc5bd` |
| 19 | `def` | [HasSpatialEncoding](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/hasspatialencoding--9d3d20f2d9b82a2002f1c2aa.md) | 267 | `declaration-track:9d3d20f2d9b82a2002f1c2aa3746b395f14be188581459d16d9edd4f6c8e5845` |
| 20 | `theorem` | [spatial_reconstruction_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/spatial-reconstruction-apply--fc57bf729dc10c907e26a90a.md) | 279 | `result-track:fc57bf729dc10c907e26a90aa759c264a2f19379db39eb0bd15c44e3fe0259ce` |
| 21 | `theorem` | [temporal_reconstruction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/temporal-reconstruction--b1a6f185e30eadd075f26d54.md) | 290 | `result-track:b1a6f185e30eadd075f26d5445f88c8971728e87a8cc6b70f315b8f8aed8d8b4` |
| 22 | `theorem` | [temporal_residual_lpNorm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/temporal-residual-lpnorm-le--aaeee4fb6df94cfd428cd3e7.md) | 312 | `result-track:aaeee4fb6df94cfd428cd3e77ad646a24e870d7e2a3c86933b712a1236eaa5ae` |
| 23 | `theorem` | [squareSuperlevel_eq_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/squaresuperlevel-eq-grainshadingunion--0382df301d34948d900690c9.md) | 329 | `result-track:0382df301d34948d900690c98fae45a0bd06fa47680f0028a2a9ee0438f9e1d5` |
| 24 | `theorem` | [squareSuperlevel_subset_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/squaresuperlevel-subset-grainshadingunion--c1c8fd6fd3c51b8d1360ebeb.md) | 340 | `result-track:c1c8fd6fd3c51b8d1360ebeb7b4576a6367e95f92d749c2f2cd29de933885d70` |
| 25 | `theorem` | [fineShadingUnion_subset_squareSuperlevel](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/fineshadingunion-subset-squaresuperlevel--59d9a45ea86ab7658fe5c782.md) | 352 | `result-track:59d9a45ea86ab7658fe5c78233b62a3395fb5544af491bf96cb29fafbd9eedc5` |
| 26 | `theorem` | [grainShadingUnion_subset_squareSuperlevel](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/grainshadingunion-subset-squaresuperlevel--967dd8ec103c53a48067c650.md) | 363 | `result-track:967dd8ec103c53a48067c650181f535c95f64a8463bbba7ebc9a32817a8b7994` |
| 27 | `theorem` | [measure_squareSuperlevel_le_grain_sum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/measure-squaresuperlevel-le-grain-sum--8fbf0a99f829a29d222b88f6.md) | 374 | `result-track:8fbf0a99f829a29d222b88f68bcdb62e1f712b13b062e9575f7892167eb6c582` |
| 28 | `theorem` | [multiplicity_powerLaw_of_assumption](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant931ef637104667ec6d7b8087f75e30c4507586cd7d024748309649872c16df3d.lean/declarations/multiplicity-powerlaw-of-assumption--f86ab541b03dcc5f6268efba.md) | 400 | `result-track:f86ab541b03dcc5f6268efba63419a9c494e53b0adadec5bb9e0f84edeae33f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
