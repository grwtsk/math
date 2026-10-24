# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WalshFourier.Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78ff04d3add41dd025467e18c75e4cb23ef5a2ed",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78ff04d3add41dd025467e18c75e4cb23ef5a2ed`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Fourier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalshFourier.Frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-frequency--3bc1f6d8ebcb2b4f6b74bf60.md) | 14 | `declaration-track:3bc1f6d8ebcb2b4f6b74bf60e082e44657a204bc5e502d1713f1ff332ee2bf5d` |
| 2 | `abbrev` | [WalshFourier.Sample](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-sample--927ca9ed8fd07a4014e97715.md) | 18 | `declaration-track:927ca9ed8fd07a4014e97715d7d79fc1251ec9930f13ea1d01d52e59f37c7d46` |
| 3 | `abbrev` | [WalshFourier.Function](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-function--11abe67364b54d5626d02b7d.md) | 22 | `declaration-track:11abe67364b54d5626d02b7d6780cb169e399e656616ef74d7dd913ddb0c1cb0` |
| 4 | `abbrev` | [WalshFourier.CoordinateValue](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-coordinatevalue--9905f4a5eda1aa318f8254b2.md) | 26 | `declaration-track:9905f4a5eda1aa318f8254b2080fdb62f2bb3149520c72d3d31a10be207b6afa` |
| 5 | `def` | [WalshFourier.zeroFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-zerofrequency--f233325722017875ec5f2ae0.md) | 30 | `declaration-track:f233325722017875ec5f2ae08a125f49c1c6eff37e1bfd38e762063926b4c2d3` |
| 6 | `def` | [WalshFourier.fullFrequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-fullfrequency--8495a59b7a5288874eb53071.md) | 34 | `declaration-track:8495a59b7a5288874eb530714dd08a890a1f45ee14d8c8dd3f0cbb091bc79123` |
| 7 | `def` | [WalshFourier.support](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-support--932b8f2c16f15d27dbec7d8c.md) | 38 | `declaration-track:932b8f2c16f15d27dbec7d8c646ac3a5a170ba077d68f8a02d6541ad0780430b` |
| 8 | `def` | [WalshFourier.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-degree--18314c7dc9d6048c129f85d2.md) | 43 | `declaration-track:18314c7dc9d6048c129f85d2fb3a788e4afdcc4edfefce9ba7b790c7343deb14` |
| 9 | `def` | [WalshFourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-character--6a0e5e12e2a00c275c0f0807.md) | 51 | `declaration-track:6a0e5e12e2a00c275c0f0807bcd0f8caf09f377ab238dd5f997fc2c286d49f21` |
| 10 | `def` | [WalshFourier.characterFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-characterfunction--408001c149d5388f722895de.md) | 58 | `declaration-track:408001c149d5388f722895de644a35357107a047643d7a874a1dd3b3673ea005` |
| 11 | `def` | [WalshFourier.innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-innerproduct--7e91e7d4c440755e527a1b14.md) | 68 | `declaration-track:7e91e7d4c440755e527a1b14e38d308d6827187d34659cf22c056417029d9b17` |
| 12 | `def` | [WalshFourier.projectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projectionnumerator--0bb5cfc716606b0bcce8a407.md) | 80 | `declaration-track:0bb5cfc716606b0bcce8a407ef98083e3b6a8abdaa380b77c9aca544d257fe3b` |
| 13 | `def` | [WalshFourier.projection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection--44c778b7694bffed9a94ffc6.md) | 91 | `declaration-track:44c778b7694bffed9a94ffc607270c45b1d05c2eb02201cb8606a9844450469e` |
| 14 | `theorem` | [WalshFourier.projection_eq_coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection-eq-coefficient--6e0f566761943aff425140df.md) | 102 | `result-track:6e0f566761943aff425140dfb0ba6fb9b99152e39628964705d0095c1567eabc` |
| 15 | `theorem` | [WalshFourier.projection_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection-numerator--893ef03cfda48563a74da980.md) | 108 | `result-track:893ef03cfda48563a74da98015f0c025b5ffaf041b808ba3b2d9820c32ebf2fe` |
| 16 | `theorem` | [WalshFourier.projection_exponent](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection-exponent--53baf58967b086658a20b761.md) | 114 | `result-track:53baf58967b086658a20b7616bf01f10befede03b1af58961324178ae779049e` |
| 17 | `theorem` | [WalshFourier.projection_denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection-denominator--066f074b42cedaca38c211bc.md) | 119 | `result-track:066f074b42cedaca38c211bc9999dcaaf8af888d1a48ef3ce4f8ce671aa2319b` |
| 18 | `structure` | [WalshFourier.SpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-spectralcoordinate--8e3ed0280443e397f1a1ab3f.md) | 129 | `declaration-track:8e3ed0280443e397f1a1ab3fa96b9b1e382f3b1ef50c402d558303c72af13681` |
| 19 | `def` | [WalshFourier.SpectralCoordinate.degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-spectralcoordinate-degree--77366ae97d77e231db73a1d2.md) | 134 | `declaration-track:77366ae97d77e231db73a1d28f4b4266cbe7a91760785cf4315a5575777aa1cb` |
| 20 | `def` | [WalshFourier.SpectralCoordinate.axis](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-spectralcoordinate-axis--9f3783592099c966f25633ef.md) | 139 | `declaration-track:9f3783592099c966f25633ef7eaab642fff0fb9550b3386ec240638a029d35a7` |
| 21 | `def` | [WalshFourier.coordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-coordinate--836f60bd68dc1b6cf5cffc59.md) | 145 | `declaration-track:836f60bd68dc1b6cf5cffc59eca4ddafc522ba933ec93313845655e636674ae6` |
| 22 | `theorem` | [WalshFourier.coordinate_frequency](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-coordinate-frequency--92bb10bece4ed12b77ca4068.md) | 152 | `result-track:92bb10bece4ed12b77ca40686e907861617e247624b32d2238ed43eddf429526` |
| 23 | `theorem` | [WalshFourier.coordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-coordinate-value--d9550749622fbb880489f9bb.md) | 157 | `result-track:d9550749622fbb880489f9bb10490b2de262cba4abe8d817f6dcbec112010ff9` |
| 24 | `theorem` | [WalshFourier.coordinate_degree](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-coordinate-degree--993fddb9d998505319383b8b.md) | 163 | `result-track:993fddb9d998505319383b8b24f9ce6cdb8f45d0e0cdf8d3045d13e2977366ab` |
| 25 | `def` | [WalshFourier.spectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-spectrum--27b03060f251a2bd2ee6548f.md) | 175 | `declaration-track:27b03060f251a2bd2ee6548f67b365151d1bcddb5f02b0ab9e6300c600c5ee20` |
| 26 | `structure` | [WalshFourier.IndexedSpectralCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-indexedspectralcoordinate--6938e257b7e40dc7dbc25507.md) | 185 | `declaration-track:6938e257b7e40dc7dbc255078d39e13074d27483bfa4d9ed034ced14d02b8028` |
| 27 | `def` | [WalshFourier.frequencyOfIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-frequencyofindex--46acdabe22a20a382ceaeb82.md) | 191 | `declaration-track:46acdabe22a20a382ceaeb82dbb80101531ae59d3d43cf0beec6100727c2e950` |
| 28 | `def` | [WalshFourier.indexedCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-indexedcoordinate--50c166caa60e449fc656fbd9.md) | 197 | `declaration-track:50c166caa60e449fc656fbd9281ef650bb0d0ea43038c0f17da9639665903210` |
| 29 | `theorem` | [WalshFourier.indexedCoordinate_index](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-indexedcoordinate-index--3c9945f46bec766a5723b38b.md) | 204 | `result-track:3c9945f46bec766a5723b38b795ba9f245f146453be765d9cd04286b3bca4cc7` |
| 30 | `theorem` | [WalshFourier.indexedCoordinate_value](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-indexedcoordinate-value--e81deb036cdbfba367f2417c.md) | 209 | `result-track:e81deb036cdbfba367f2417c19cef57fe485ebde6a11114774a7793846800818` |
| 31 | `def` | [WalshFourier.indexedSpectrum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-indexedspectrum--e7d5b3c84c009a0b2787b33f.md) | 216 | `declaration-track:e7d5b3c84c009a0b2787b33f120cde0930c19ae977b6c4634a97f3db0d146229` |
| 32 | `def` | [WalshFourier.evaluationVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-evaluationvector--0a202396e49e9c73d418fa20.md) | 223 | `declaration-track:0a202396e49e9c73d418fa207a2aefac13f2e11dfe490ba10939ae6775267a3c` |
| 33 | `def` | [WalshFourier.characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-charactervector--371d528544325829ae8f1b90.md) | 229 | `declaration-track:371d528544325829ae8f1b90ad82f5cc94c576131772ce71275ab70fa0ebc230` |
| 34 | `def` | [WalshFourier.walshMatrix](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-walshmatrix--5661f2110236a27c94e3914b.md) | 239 | `declaration-track:5661f2110236a27c94e3914b0cb9d7ee87bc06af650a5c97041c0210aa2b4508` |
| 35 | `theorem` | [WalshFourier.walshMatrix_row_eq_characterVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-walshmatrix-row-eq-charactervector--5f4c4f33136fed3d95fabf14.md) | 247 | `result-track:5f4c4f33136fed3d95fabf1482aa51f4fd5f3b1000e61e779a1d4c2d44e5a652` |
| 36 | `theorem` | [WalshFourier.projection_is_normalized_innerProduct](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-projection-is-normalized-innerproduct--ff4276e4a864a06ef35130f0.md) | 258 | `result-track:ff4276e4a864a06ef35130f03a9b1a2515c4204d341b2318ea608267b8de1872` |
| 37 | `def` | [WalshFourier.averageCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-averagecoordinate--acee2d45da0e1e8b5dddc1dd.md) | 271 | `declaration-track:acee2d45da0e1e8b5dddc1ddad0cbe5f4318a904421613499dda07748122ce53` |
| 38 | `def` | [WalshFourier.fullParityCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-fullparitycoordinate--6285b76b6fc0f1943c2db0f1.md) | 280 | `declaration-track:6285b76b6fc0f1943c2db0f1e230625f07537b88972f5aa9f420928becd6553b` |
| 39 | `def` | [WalshFourier.IsActive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-isactive--1ce4f1345b634c593e1517b2.md) | 289 | `declaration-track:1ce4f1345b634c593e1517b20719f13059c578d4bbae8eee950135676712e076` |
| 40 | `def` | [WalshFourier.IsActiveIndex](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-isactiveindex--a4cd0ff1b7e813c6ebcfa5a0.md) | 296 | `declaration-track:a4cd0ff1b7e813c6ebcfa5a012b4ae05f542a7f7b9f64deca0f1b106b5d83ada` |
| 41 | `structure` | [WalshFourier.WalshTerm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-walshterm--c6675c120c13c1a4a8d8f6d4.md) | 307 | `declaration-track:c6675c120c13c1a4a8d8f6d4853d7620ec8c9e8eb1f67baffdf3d2631178dc5c` |
| 42 | `def` | [WalshFourier.termOfCoordinate](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-termofcoordinate--997eef1fa154d81a816d95ad.md) | 312 | `declaration-track:997eef1fa154d81a816d95ad0bf62860906f626df0df4a6bfc6b4e889a9e22e4` |
| 43 | `def` | [WalshFourier.polynomial](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variant6ca3c8505d4e7d61aad2ea07065113a0ad62059dd1348a60bf9e1b53fc9be9f5.lean/declarations/walshfourier-polynomial--9fa214746a32e420c2aed69d.md) | 319 | `declaration-track:9fa214746a32e420c2aed69dee49c8658ca5135f08f4408cf16059f76daf29bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
