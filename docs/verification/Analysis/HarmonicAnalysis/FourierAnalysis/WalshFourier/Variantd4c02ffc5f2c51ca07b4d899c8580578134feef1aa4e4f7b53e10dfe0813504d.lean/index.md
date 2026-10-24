# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WalshFourier.Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42dfb23621399c04122daeaf3d9b46034237b767",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42dfb23621399c04122daeaf3d9b46034237b767`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Fourier` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalshFourier.Frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-frequency--3adcb35d5f0aa3a149c3ffeb.md) | 6 | `declaration-track:3adcb35d5f0aa3a149c3ffebe1e2f74ab3156da706ab0414a032bfe154b2b2c3` |
| 2 | `abbrev` | [WalshFourier.Sample](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-sample--f03ce0f3281c68065340db74.md) | 10 | `declaration-track:f03ce0f3281c68065340db745a77cb32e186e0e144f71958c7aebd06f8215aaf` |
| 3 | `abbrev` | [WalshFourier.Function](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-function--6b74796b8933594a871cc592.md) | 14 | `declaration-track:6b74796b8933594a871cc5923780071e47c8f377308090582ff4b350ca75defa` |
| 4 | `abbrev` | [WalshFourier.CoordinateValue](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-coordinatevalue--e6dfc0f471dc0bd759c22964.md) | 18 | `declaration-track:e6dfc0f471dc0bd759c2296439d1658b0e50ec83529f929dbb3640dcc5ba62fa` |
| 5 | `def` | [WalshFourier.zeroFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-zerofrequency--b831c719e5613a917ec287cc.md) | 22 | `declaration-track:b831c719e5613a917ec287ccff7d1fce3833cee4a4e201c5af962eb8975b91a3` |
| 6 | `def` | [WalshFourier.fullFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-fullfrequency--243f6b816b4f039922a63aba.md) | 26 | `declaration-track:243f6b816b4f039922a63aba2b7e35fb5d60d041639c3250941388252721e684` |
| 7 | `def` | [WalshFourier.support](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-support--228450ce07b979cbe2dbd4f4.md) | 30 | `declaration-track:228450ce07b979cbe2dbd4f42e31c18af34c2d35516462fc4a6e3ee4f712dba9` |
| 8 | `def` | [WalshFourier.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-degree--988c3bc12381007e89534b40.md) | 35 | `declaration-track:988c3bc12381007e89534b40d0f9f1a32f8a2783c1cd83cd26ad041aeeade436` |
| 9 | `def` | [WalshFourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-character--53f6bce200dab2a672621e02.md) | 43 | `declaration-track:53f6bce200dab2a672621e021aba7a993bf8d4e64c61cf76d22752ba50e0bc92` |
| 10 | `def` | [WalshFourier.characterFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-characterfunction--74c3ee030d753144fe4c9b7d.md) | 50 | `declaration-track:74c3ee030d753144fe4c9b7d150ab8c5537457277e8a350c39eb27dc2a7631ac` |
| 11 | `def` | [WalshFourier.innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-innerproduct--b908735815f331090a37a435.md) | 60 | `declaration-track:b908735815f331090a37a43515a9b78642b2f43cf0ca9855457bc60c1a626e15` |
| 12 | `def` | [WalshFourier.projectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projectionnumerator--10c1fcdaec34da6e7d81c98d.md) | 72 | `declaration-track:10c1fcdaec34da6e7d81c98d88363b37d15a1b652afd7c30bb7bdac8959defdb` |
| 13 | `def` | [WalshFourier.projection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection--252fc21a98c4fdb5537cb958.md) | 83 | `declaration-track:252fc21a98c4fdb5537cb9580bf8be3bdfd15479c7dddf5931824c3da6f68e42` |
| 14 | `theorem` | [WalshFourier.projection_eq_coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection-eq-coefficient--9a769f4a0ef452b38f1f4457.md) | 94 | `result-track:9a769f4a0ef452b38f1f4457a10e59a57c70129ae50344c65b354141bf5a29b6` |
| 15 | `theorem` | [WalshFourier.projection_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection-numerator--dedf88104863103583ed28eb.md) | 100 | `result-track:dedf88104863103583ed28eb18c58f13dc254712415aec8818470ddc9d8d5d99` |
| 16 | `theorem` | [WalshFourier.projection_exponent](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection-exponent--32f625742693adf71c9b1aaf.md) | 106 | `result-track:32f625742693adf71c9b1aaf1c941c86ab54fdf013672146c44ea99f59e8752d` |
| 17 | `theorem` | [WalshFourier.projection_denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection-denominator--6f031fa5218e95f0096de0b4.md) | 111 | `result-track:6f031fa5218e95f0096de0b4c4f9bd9e452799c99748a768c059b31b79764482` |
| 18 | `structure` | [WalshFourier.SpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-spectralcoordinate--26effb15854888e0e19bb7d6.md) | 121 | `declaration-track:26effb15854888e0e19bb7d67ddb6611a0247085b09773d39b51f5fd0ff7a09b` |
| 19 | `def` | [WalshFourier.SpectralCoordinate.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-spectralcoordinate-degree--0546915975b806b40ef15fb1.md) | 126 | `declaration-track:0546915975b806b40ef15fb19315a162a808a767b6fb9d07ef8c06b2004ef618` |
| 20 | `def` | [WalshFourier.SpectralCoordinate.axis](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-spectralcoordinate-axis--de548c6e5aa4ae27527b072b.md) | 131 | `declaration-track:de548c6e5aa4ae27527b072b9e62e5e674be40f3429a8bdf9118ce8c8eae4eed` |
| 21 | `def` | [WalshFourier.coordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-coordinate--7800b53ac828183faafba4c5.md) | 137 | `declaration-track:7800b53ac828183faafba4c58fadc2e54d99af4ed221a613f3bd1a998463cdb6` |
| 22 | `theorem` | [WalshFourier.coordinate_frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-coordinate-frequency--89104135badd24e1c6e67c22.md) | 144 | `result-track:89104135badd24e1c6e67c22b139920a463277e6da39ffb117bef073ae8ca094` |
| 23 | `theorem` | [WalshFourier.coordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-coordinate-value--fc53358b3489549e3c4ef35e.md) | 149 | `result-track:fc53358b3489549e3c4ef35e6cb31f50496659e8fd483fc27ccd9864ac2bbf80` |
| 24 | `theorem` | [WalshFourier.coordinate_degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-coordinate-degree--bcc75d6371e4c9e41f94f9aa.md) | 155 | `result-track:bcc75d6371e4c9e41f94f9aa537c7553c8a259dec254bbe8888a144ab680f7c6` |
| 25 | `def` | [WalshFourier.spectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-spectrum--bcb37071c13be430d9ea157d.md) | 167 | `declaration-track:bcb37071c13be430d9ea157d28800d7c6c2b1543b81e14c923677495145b7092` |
| 26 | `structure` | [WalshFourier.IndexedSpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-indexedspectralcoordinate--e72ec78eee89c037b2981a7b.md) | 177 | `declaration-track:e72ec78eee89c037b2981a7ba07842302d1e22b6ee1acc1f6bdb48e82d9a4eca` |
| 27 | `def` | [WalshFourier.frequencyOfIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-frequencyofindex--2f3812a82f767b18f2762fde.md) | 183 | `declaration-track:2f3812a82f767b18f2762fde9ae7db7ea51ffa65b05a80455ed97b8469b508f5` |
| 28 | `def` | [WalshFourier.indexedCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-indexedcoordinate--bdd5abe2211f850f39794b3f.md) | 189 | `declaration-track:bdd5abe2211f850f39794b3f658c32953b7fbc3e1e46356765090741d16abed3` |
| 29 | `theorem` | [WalshFourier.indexedCoordinate_index](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-indexedcoordinate-index--dd1782247419f234fc159311.md) | 196 | `result-track:dd1782247419f234fc15931194c67522e0e70630ed3f8a2af8efee63bb613d70` |
| 30 | `theorem` | [WalshFourier.indexedCoordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-indexedcoordinate-value--5b31d360a4040685e940a742.md) | 201 | `result-track:5b31d360a4040685e940a7424ec7ef220ea124c924efa2cc97d2b5527cf4818e` |
| 31 | `def` | [WalshFourier.indexedSpectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-indexedspectrum--324d3c93dc663e075f5a3167.md) | 208 | `declaration-track:324d3c93dc663e075f5a3167b3801bec3fd75ae52aaa560da7d16752905fc2de` |
| 32 | `def` | [WalshFourier.evaluationVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-evaluationvector--4457b4d5762e4c59ee865e41.md) | 215 | `declaration-track:4457b4d5762e4c59ee865e4147644d64e7e69ad6f31d731135f18f6a1467d4af` |
| 33 | `def` | [WalshFourier.characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-charactervector--b16d59b67c70b55c3231556d.md) | 221 | `declaration-track:b16d59b67c70b55c3231556db719fea04d60b818e60d5d9a5148ce1bfb7c68e8` |
| 34 | `def` | [WalshFourier.walshMatrix](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-walshmatrix--fe0a6782727388f529a1c677.md) | 231 | `declaration-track:fe0a6782727388f529a1c677cccf1ce63eb881865490c1d1f06a40f6f603637e` |
| 35 | `theorem` | [WalshFourier.walshMatrix_row_eq_characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-walshmatrix-row-eq-charactervector--af9a2da430588bfea26d85f4.md) | 239 | `result-track:af9a2da430588bfea26d85f4e1edcc11da3d03030a4fe18ec495c1ac8d19542e` |
| 36 | `theorem` | [WalshFourier.projection_is_normalized_innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-projection-is-normalized-innerproduct--804b0e88eb6253f13a48e5a0.md) | 250 | `result-track:804b0e88eb6253f13a48e5a0db05da6adc8dc7e74807895bed058aa9c7a8f4f1` |
| 37 | `def` | [WalshFourier.averageCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-averagecoordinate--6f63e7886cc677650ae3ba57.md) | 263 | `declaration-track:6f63e7886cc677650ae3ba570224d3631190b084ba7c0acb3a780bb3ecde1e58` |
| 38 | `def` | [WalshFourier.fullParityCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-fullparitycoordinate--e7031faa905302d631d87498.md) | 272 | `declaration-track:e7031faa905302d631d8749868517588e72fd2b1ea6d630df2ad416f603960ee` |
| 39 | `def` | [WalshFourier.IsActive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-isactive--6db11a1e337bd5ab9e6a338b.md) | 281 | `declaration-track:6db11a1e337bd5ab9e6a338bd3e6946d8516f3661b1178c0f85847e10b2e28c9` |
| 40 | `def` | [WalshFourier.IsActiveIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-isactiveindex--a12194819eed0a261bfcafea.md) | 288 | `declaration-track:a12194819eed0a261bfcafeaa66c11d81f79762a8d647703e77e65930c1e4e40` |
| 41 | `structure` | [WalshFourier.WalshTerm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-walshterm--d68df681ae91042100f88b29.md) | 299 | `declaration-track:d68df681ae91042100f88b29787143813a626bb3c5a7307d9df5c8df52609a41` |
| 42 | `def` | [WalshFourier.termOfCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-termofcoordinate--598687ed9dd406b025538acd.md) | 304 | `declaration-track:598687ed9dd406b025538acdc9c7b536d38cdcf2879bc6c51c099be9326ad353` |
| 43 | `def` | [WalshFourier.polynomial](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/declarations/walshfourier-polynomial--0caf74277bf2c8946d46df91.md) | 311 | `declaration-track:0caf74277bf2c8946d46df9127fd29a6b5a74c0cfb5dd0a0a14f6e75decc1e12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
