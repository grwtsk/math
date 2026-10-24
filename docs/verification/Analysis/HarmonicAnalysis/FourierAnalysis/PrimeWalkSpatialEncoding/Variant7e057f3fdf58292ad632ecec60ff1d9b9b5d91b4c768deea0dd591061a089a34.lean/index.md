# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimeWalkSpatialEncoding.Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d1c4ad28bb26b4e9c16fba5dd9227b888e7e15e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean.json)

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
| 1 | `abbrev` | [SpatialPoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/spatialpoint--b024272debd39cbb73f67f81.md) | 61 | `declaration-track:b024272debd39cbb73f67f81cf0b265bac9b0c5bbaa0aa3d6377b79267e1e6d1` |
| 2 | `abbrev` | [ErrorTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/errortrajectory--2f8211c7857dfa81b32e7341.md) | 64 | `declaration-track:2f8211c7857dfa81b32e73419d5956fed43ca7715a77268248ad4fbbb557b603` |
| 3 | `abbrev` | [SpatialSignal](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/spatialsignal--05b49ba959b8da1e0c8944d2.md) | 67 | `declaration-track:05b49ba959b8da1e0c8944d2f1e807d9a3acac23978ed510e18b6a6873a6e661` |
| 4 | `structure` | [UnitTube3](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/unittube3--c38dfbe822969a9f085cce31.md) | 70 | `declaration-track:c38dfbe822969a9f085cce31865da7d2597060f22bd84438d7b46692a5ae6f68` |
| 5 | `def` | [UnitTube3.axisSegment](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/unittube3-axissegment--18cc92807722edaf279ca326.md) | 79 | `declaration-track:18cc92807722edaf279ca326c3f3c38aa197ff2367eb10b567c1215ef067bfb5` |
| 6 | `def` | [UnitTube3.carrier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/unittube3-carrier--99ee8c3de168abd9d73141f4.md) | 87 | `declaration-track:99ee8c3de168abd9d73141f4715d464d387705ec93a222f0b2b1d0561a4144a2` |
| 7 | `def` | [spatialFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/spatialfouriertransform--8b095de143473f806cf6c60e.md) | 92 | `declaration-track:8b095de143473f806cf6c60e122061b165dd96f703a0ade19341e20a4e3623ca` |
| 8 | `def` | [packetSum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/packetsum--7dd32dae605aa07a3a0f1982.md) | 98 | `declaration-track:7dd32dae605aa07a3a0f1982637d594c320c91e3239fccc5bdc978179bfc6abf` |
| 9 | `def` | [reconstructionError](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/reconstructionerror--e9463bcd67b19882d59f4b51.md) | 105 | `declaration-track:e9463bcd67b19882d59f4b51645ba4fa1090a01950e5ed3ce171ee197965dbf5` |
| 10 | `def` | [packetSquareFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/packetsquarefunction--16cb411b52186451bf8db8e2.md) | 113 | `declaration-track:16cb411b52186451bf8db8e29bd52ddf84e48ecf6bf9256abf3cdf189c1a0439` |
| 11 | `structure` | [L2SpatialReadout](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/l2spatialreadout--1156f9fd66b0bb8d0f0e3f4e.md) | 129 | `declaration-track:1156f9fd66b0bb8d0f0e3f4e49595ecd66e3cdc21ae8d5de5b7353300fe422a6` |
| 12 | `def` | [tubeMultiplicity](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/tubemultiplicity--e43b339568baf4ba801776c2.md) | 145 | `declaration-track:e43b339568baf4ba801776c24d2e833be83aa3801628a4af65fe30fa9ab024a1` |
| 13 | `def` | [multiplicitySuperlevelSet](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/multiplicitysuperlevelset--b42816b6d1934d1ae3935e84.md) | 155 | `declaration-track:b42816b6d1934d1ae3935e847803e42e8fe9566999aafd34ae17f02e4894eec5` |
| 14 | `structure` | [AssumedMultiplicityPowerLaw](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/assumedmultiplicitypowerlaw--d540780bc045199407d17ffd.md) | 167 | `declaration-track:d540780bc045199407d17ffd997ad0cc3a7ffe1337cb1e183208399821f0cd29` |
| 15 | `constant` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/constant--7c8cd3af7994ade213238dbb.md) | 174 | `declaration-track:7c8cd3af7994ade213238dbb21a3f46054699909db22dcca3a885fa7f310daf1` |
| 16 | `constant` | [*](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/anonymous--d64a30a929dfe4b2f12854c4.md) | 181 | `declaration-track:d64a30a929dfe4b2f12854c405d11bbb729ef493b49115827df8c8daf172c14d` |
| 17 | `structure` | [SpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/spatialencodedtrajectory--0c56d56670389849c252faae.md) | 193 | `declaration-track:0c56d56670389849c252faae9b471971bdcafa9e76a7c5703a548f2ed2dd7b27` |
| 18 | `structure` | [SomeSpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/somespatialencodedtrajectory--283b6c8697de663eaccd04cd.md) | 254 | `declaration-track:283b6c8697de663eaccd04cdd086731d952617b93f759c4e7c43fa09f5289f0c` |
| 19 | `def` | [HasSpatialEncoding](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/hasspatialencoding--d2c6eb636e268ec1ddfd4800.md) | 267 | `declaration-track:d2c6eb636e268ec1ddfd4800fb418f3361e8bcb99a70c02ad3e9c7670cb64954` |
| 20 | `theorem` | [spatial_reconstruction_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/spatial-reconstruction-apply--20510a6c5e3636b1525fc28b.md) | 279 | `result-track:20510a6c5e3636b1525fc28b55ef4a6014cbfcab563b5fc76b90ba7f75c378fb` |
| 21 | `theorem` | [temporal_reconstruction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/temporal-reconstruction--255372a79c84150319a76dba.md) | 290 | `result-track:255372a79c84150319a76dbaa3cd2b60e2f280802f04252cd35b691160cf95e5` |
| 22 | `theorem` | [temporal_residual_lpNorm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/temporal-residual-lpnorm-le--6e8e9f0ef2ef5aa03fdae6f2.md) | 312 | `result-track:6e8e9f0ef2ef5aa03fdae6f2eafc40794e3863c8ef50d2e6f746099e87f36778` |
| 23 | `theorem` | [squareSuperlevel_eq_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/squaresuperlevel-eq-grainshadingunion--b35d0712fb9aa5a7156c0fb5.md) | 329 | `result-track:b35d0712fb9aa5a7156c0fb5e1d3896a77f6aa597dac6ab569c246de233a60d3` |
| 24 | `theorem` | [squareSuperlevel_subset_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/squaresuperlevel-subset-grainshadingunion--af591bdb11a30ae17f948441.md) | 340 | `result-track:af591bdb11a30ae17f948441aeb05da841860766916d48e8677aaabbd0e9927a` |
| 25 | `theorem` | [measure_squareSuperlevel_le_grain_sum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/measure-squaresuperlevel-le-grain-sum--64b3f761ba8087ce4846b96d.md) | 351 | `result-track:64b3f761ba8087ce4846b96d4069d12d0c664ef896192ae5cdfdb303138eee31` |
| 26 | `theorem` | [multiplicity_powerLaw_of_assumption](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant7e057f3fdf58292ad632ecec60ff1d9b9b5d91b4c768deea0dd591061a089a34.lean/declarations/multiplicity-powerlaw-of-assumption--9465b8d990edd8c590117234.md) | 377 | `result-track:9465b8d990edd8c5901172340afd612619a5c9b4e013230348346a5cf633d37c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
