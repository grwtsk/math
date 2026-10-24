# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WalshFourier.Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e5a0d8820779909b4d22e0afcbf954e8cfc6a7e",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e5a0d8820779909b4d22e0afcbf954e8cfc6a7e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.Fourier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalshFourier.Frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-frequency--8c5d1cfb32a8dff523ac2596.md) | 14 | `declaration-track:8c5d1cfb32a8dff523ac259689f67c4dd7b69e9a02b6c087a1c5a6ebe06f6991` |
| 2 | `abbrev` | [WalshFourier.Sample](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-sample--c9b40e82ce4bee997fb36ab2.md) | 18 | `declaration-track:c9b40e82ce4bee997fb36ab2f5e9daecf8ced98f3a026d766a4395546fb2a7e9` |
| 3 | `abbrev` | [WalshFourier.Function](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-function--cb116f8040e9cc7ab2aca0b9.md) | 22 | `declaration-track:cb116f8040e9cc7ab2aca0b95ed06baa1bf49f371447ff7c34e2f8555f70cadc` |
| 4 | `abbrev` | [WalshFourier.CoordinateValue](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-coordinatevalue--a0acd105c2252681daaa2685.md) | 26 | `declaration-track:a0acd105c2252681daaa26854173ce7739dd55c6eba01971afe0e96ee5e5726d` |
| 5 | `def` | [WalshFourier.zeroFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-zerofrequency--39413254358823ce86035630.md) | 30 | `declaration-track:39413254358823ce86035630e3b9433a92aa0f6fb3216ba4d896d646229d08db` |
| 6 | `def` | [WalshFourier.fullFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-fullfrequency--5463692174ccdd0e5845168f.md) | 34 | `declaration-track:5463692174ccdd0e5845168f2d87b051dba34112875c88894abb0f769d418417` |
| 7 | `def` | [WalshFourier.support](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-support--6df5dfe549e2f908755d2cfc.md) | 38 | `declaration-track:6df5dfe549e2f908755d2cfce5fa8063d5f5f81ca3788c7165b4ddae1ce83aed` |
| 8 | `def` | [WalshFourier.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-degree--2b3114dc04c1634f8eec2a53.md) | 43 | `declaration-track:2b3114dc04c1634f8eec2a53971e59e9c4a76e0aaf6d8b60e47d149f83699dab` |
| 9 | `def` | [WalshFourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-character--50d6994b82267c00ba8564b4.md) | 51 | `declaration-track:50d6994b82267c00ba8564b4509469514b9ed280907b1cb6d83eb70863e706cc` |
| 10 | `def` | [WalshFourier.characterFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-characterfunction--ea612055c696e8a3e6bc283b.md) | 58 | `declaration-track:ea612055c696e8a3e6bc283b0954631b461411bcd87f7ad7211bdbe19f02f6b1` |
| 11 | `def` | [WalshFourier.innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-innerproduct--7fb6d2693e353207222e5df6.md) | 68 | `declaration-track:7fb6d2693e353207222e5df6b555ed1fe24a513105505ba40644328251e795bf` |
| 12 | `def` | [WalshFourier.projectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projectionnumerator--f15015806b48603e99758947.md) | 80 | `declaration-track:f15015806b48603e997589478b771e46577f4422de2a5e555a960dfc687c5c90` |
| 13 | `def` | [WalshFourier.projection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection--e4089e666d520830f44fde2a.md) | 91 | `declaration-track:e4089e666d520830f44fde2ae9935cf031ce5174487156eceaabbe5ff4846086` |
| 14 | `theorem` | [WalshFourier.projection_eq_coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection-eq-coefficient--5eb183d13319335ff4e22659.md) | 102 | `result-track:5eb183d13319335ff4e22659e9cf1f48642242ddf824cfd8ed5d40fd35525b65` |
| 15 | `theorem` | [WalshFourier.projection_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection-numerator--ab5213e3564fa4df1477af16.md) | 108 | `result-track:ab5213e3564fa4df1477af16bf8fb85479de2d6d51324fd0253906f3ba7192dd` |
| 16 | `theorem` | [WalshFourier.projection_exponent](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection-exponent--673e47e2293d07162ce01d22.md) | 114 | `result-track:673e47e2293d07162ce01d22cd794d63ddd67fe86d0da54a4749ebd148979c70` |
| 17 | `theorem` | [WalshFourier.projection_denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection-denominator--fdef655fb1d58029f7956c30.md) | 119 | `result-track:fdef655fb1d58029f7956c30a25d794c7c4c2087897d56e1aebffc2cb1cdb918` |
| 18 | `structure` | [WalshFourier.SpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-spectralcoordinate--1e2615927ced2a1aa325225f.md) | 129 | `declaration-track:1e2615927ced2a1aa325225fb80ab91f4fab809535f8dbbe2f3072ce59b29465` |
| 19 | `def` | [WalshFourier.SpectralCoordinate.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-spectralcoordinate-degree--529a879cd68d5a69789643aa.md) | 134 | `declaration-track:529a879cd68d5a69789643aa9e4a023c951d6b100fcd2820282e0b1b00c369d0` |
| 20 | `def` | [WalshFourier.SpectralCoordinate.axis](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-spectralcoordinate-axis--b9259b152238898721566d20.md) | 139 | `declaration-track:b9259b152238898721566d2042e4fbb9e23500e9ae4a076fa6c6795a332124ff` |
| 21 | `def` | [WalshFourier.coordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-coordinate--8692a35594b63c76e1134f5e.md) | 145 | `declaration-track:8692a35594b63c76e1134f5ebc51f68211d6192b8df6e0bd76f2becd2ddb4c19` |
| 22 | `theorem` | [WalshFourier.coordinate_frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-coordinate-frequency--e5961d2b56368513906c2f45.md) | 152 | `result-track:e5961d2b56368513906c2f45a0b4841d09fd89373a07d796c9030f0ee4246594` |
| 23 | `theorem` | [WalshFourier.coordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-coordinate-value--b906c5091c921c16034f2000.md) | 157 | `result-track:b906c5091c921c16034f20008f03dbf21a7297823a936c3533e4b16bb4177239` |
| 24 | `theorem` | [WalshFourier.coordinate_degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-coordinate-degree--44a51ebcd78e638c66833c37.md) | 163 | `result-track:44a51ebcd78e638c66833c37702a9930c3b0ca2f762491adf65dbb8aec4461e7` |
| 25 | `def` | [WalshFourier.spectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-spectrum--174b0b25785d7eef4c31c6ef.md) | 175 | `declaration-track:174b0b25785d7eef4c31c6efeed5ba81ec195c8a552295b811834a2a560f8755` |
| 26 | `structure` | [WalshFourier.IndexedSpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-indexedspectralcoordinate--8a0150e7e099b0235490b05b.md) | 185 | `declaration-track:8a0150e7e099b0235490b05b7df12888dd077d97595a88d6e16bc019ad7af667` |
| 27 | `def` | [WalshFourier.frequencyOfIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-frequencyofindex--d4e978025f14b6a30b3acdc0.md) | 191 | `declaration-track:d4e978025f14b6a30b3acdc043cdd4406f6ad2e73704703fc9e5ebd5e2cfecfe` |
| 28 | `def` | [WalshFourier.indexedCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-indexedcoordinate--b9f67c9b4c639741266d908b.md) | 197 | `declaration-track:b9f67c9b4c639741266d908b4ef330b4cf5a94cbd52e99441adb4031cafeb8b8` |
| 29 | `theorem` | [WalshFourier.indexedCoordinate_index](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-indexedcoordinate-index--445a30725efc73630eb954b9.md) | 204 | `result-track:445a30725efc73630eb954b9fbf6c57c46ba9fe8b3e24a69e9bcf2bc46d1b538` |
| 30 | `theorem` | [WalshFourier.indexedCoordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-indexedcoordinate-value--34fe76972ec744df71dc1d28.md) | 209 | `result-track:34fe76972ec744df71dc1d28d495ebf04201f69c4472465661a5b094d848d5ba` |
| 31 | `def` | [WalshFourier.indexedSpectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-indexedspectrum--5b8bb0afba20b04ecf0092fe.md) | 216 | `declaration-track:5b8bb0afba20b04ecf0092fec0c15fda46a8c5069dfb196f41eb5ef60a7a46c1` |
| 32 | `def` | [WalshFourier.evaluationVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-evaluationvector--a7e661f6f16fbe16a9fb6404.md) | 223 | `declaration-track:a7e661f6f16fbe16a9fb6404dc8a82afccc06f9598367517cbbcc9786c90274b` |
| 33 | `def` | [WalshFourier.characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-charactervector--8229c99c74a0709edadf8230.md) | 229 | `declaration-track:8229c99c74a0709edadf8230e80c2c73ac681ec2da08c8c4c38cb371a9ab56ed` |
| 34 | `def` | [WalshFourier.walshMatrix](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-walshmatrix--cac4fc64a45a6227c94cd56e.md) | 239 | `declaration-track:cac4fc64a45a6227c94cd56e6c6a1c9e820475e36c8a06112e914aa51aefcf52` |
| 35 | `theorem` | [WalshFourier.walshMatrix_row_eq_characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-walshmatrix-row-eq-charactervector--9f0cbb8ca427169d4e9a5f01.md) | 247 | `result-track:9f0cbb8ca427169d4e9a5f01b3e865ced0e615fa052c5e0756d4c6ab5e9fa770` |
| 36 | `theorem` | [WalshFourier.projection_is_normalized_innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-projection-is-normalized-innerproduct--46873aad6c5f8f4054463f1d.md) | 258 | `result-track:46873aad6c5f8f4054463f1dcb618a317d7854337559e6a5c68e46ac9f6990e2` |
| 37 | `def` | [WalshFourier.averageCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-averagecoordinate--c36afbb4ffbc22a39ee07146.md) | 271 | `declaration-track:c36afbb4ffbc22a39ee07146020c312ee556195508484d733570216ab58ff359` |
| 38 | `def` | [WalshFourier.fullParityCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-fullparitycoordinate--3eb116b90b839f7a3d8a794d.md) | 280 | `declaration-track:3eb116b90b839f7a3d8a794de735f202a4f77b63d79f8629bd9faed97b815f0c` |
| 39 | `def` | [WalshFourier.IsActive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-isactive--cc1dbd7e68e7236c93314fb9.md) | 289 | `declaration-track:cc1dbd7e68e7236c93314fb9bd5764efc26203d0e980f58c4402855da4fb4cb5` |
| 40 | `def` | [WalshFourier.IsActiveIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-isactiveindex--daa34f1cba6b57618549dd53.md) | 296 | `declaration-track:daa34f1cba6b57618549dd531b3bc5d36ff73de74c20041eb8ae6caf8b34d161` |
| 41 | `structure` | [WalshFourier.WalshTerm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-walshterm--298507e4b04cf827900b3708.md) | 307 | `declaration-track:298507e4b04cf827900b370887d1c58e8ab6fc2db7376129fefe6347c7b69e60` |
| 42 | `def` | [WalshFourier.termOfCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-termofcoordinate--19253b8449390bff96989057.md) | 312 | `declaration-track:19253b8449390bff969890578afed88b25c0b2dd2575bc13b4a8b87cdfd890cc` |
| 43 | `def` | [WalshFourier.polynomial](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant61f74bd1aeb259faf21eb550142635c1d0af91440b17defd667b17c66edc813c.lean/declarations/walshfourier-polynomial--8a2b183c5c8599266520dc0d.md) | 319 | `declaration-track:8a2b183c5c8599266520dc0d9045bf92e2e05f82db4b92da6aa63fa11166efd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
