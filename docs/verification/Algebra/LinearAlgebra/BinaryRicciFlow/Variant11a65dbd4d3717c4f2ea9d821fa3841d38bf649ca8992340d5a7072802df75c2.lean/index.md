# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryRicciFlow.Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0f8cd2e72761119f89039974ed77bd015997012",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0f8cd2e72761119f89039974ed77bd015997012`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/bit--87561e6fafb6718e9043e920.md) | 23 | `declaration-track:87561e6fafb6718e9043e920b8e5380490d264fb5320567d209b44c31b344590` |
| 2 | `structure` | [BitWord](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/bitword--b116188948e1138adbba00f8.md) | 25 | `declaration-track:b116188948e1138adbba00f8d958beba1f29c09ad1bd8d2434e61de5aefee81b` |
| 3 | `abbrev` | [PaddedBitState](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/paddedbitstate--fe714a1dcce5737a0669bfc9.md) | 30 | `declaration-track:fe714a1dcce5737a0669bfc9f1ac5c33e7291481713ab4036bab13326c0274c6` |
| 4 | `def` | [BitWord.toPadded](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/bitword-topadded--54069d94ed11ad1057e75dbc.md) | 33 | `declaration-track:54069d94ed11ad1057e75dbcf4ad5e47919f032fa0dd1fec96bad0a412d2bb3b` |
| 5 | `def` | [zeroBitWord](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/zerobitword--dc1e2d9afbdaead76377020d.md) | 42 | `declaration-track:dc1e2d9afbdaead76377020d412574652ffc9537ad59e5bf1273980b7a891ff8` |
| 6 | `theorem` | [zeroBitWord_toPadded_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/zerobitword-topadded-apply--0611f545f78a00bb45a147d9.md) | 48 | `result-track:0611f545f78a00bb45a147d9ab914dcadc20f0757580db16437e1c1ac92d854a` |
| 7 | `theorem` | [zeroBitWord_toPadded_eq](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/zerobitword-topadded-eq--8c4fce4347389fd84bf7496c.md) | 57 | `result-track:8c4fce4347389fd84bf7496c65e8911eed20b2ef50e37b9624a8e206451aa664` |
| 8 | `def` | [bitReal](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/bitreal--d047797407dcc29ddef1893a.md) | 63 | `declaration-track:d047797407dcc29ddef1893abc5d1daf887d9fe36d63a7965ed32aedc7875571` |
| 9 | `structure` | [GammaWeight](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/gammaweight--384d8233815082867d98be42.md) | 67 | `declaration-track:384d8233815082867d98be42d083fe5285df3e905940f431e31cf456813f5fcb` |
| 10 | `def` | [geometricWeight](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/geometricweight--286c939d35ccac6f59ca3717.md) | 71 | `declaration-track:286c939d35ccac6f59ca371782eae6fdf3b7e7b049fcefae3a7cc07caabd8064` |
| 11 | `def` | [dyadicWeight](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/dyadicweight--389881cf94c5e45044b77465.md) | 77 | `declaration-track:389881cf94c5e45044b7746546879453a15acebc411371a2d7c0ebd0348259f6` |
| 12 | `def` | [triadicWeight](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/triadicweight--b2e13ee8129fba276a6268ce.md) | 80 | `declaration-track:b2e13ee8129fba276a6268cefd3eb1ad0bbba3bc39749ad3aecebb28bc81580a` |
| 13 | `def` | [supportBound](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/supportbound--3c367dca2f346c4fe009ee82.md) | 83 | `declaration-track:3c367dca2f346c4fe009ee820a71e0cbd9ca8eba93670c6191453c0f260490f3` |
| 14 | `theorem` | [supportBound_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/supportbound-spec--c3d4f532da89572ecab81f29.md) | 87 | `result-track:c3d4f532da89572ecab81f29c3fdb012e8ae2dece5d8b7dee286676a65a1094b` |
| 15 | `def` | [dGamma](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/dgamma--5a85017d073ac8673ec7be91.md) | 93 | `declaration-track:5a85017d073ac8673ec7be91d5144194527be2df1a237a597fbdd4f01109f847` |
| 16 | `theorem` | [dGamma_self](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/dgamma-self--efa0cdd89a9ff64e1ad6941f.md) | 100 | `result-track:efa0cdd89a9ff64e1ad6941fa7e473c7f773b0d197f803d36d1c957ff8bdac4f` |
| 17 | `def` | [kernel](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/kernel--a25fe773dc72ac73ace099b0.md) | 107 | `declaration-track:a25fe773dc72ac73ace099b04eeb4a4254acb8e1bf0f037583b5c2019b662b85` |
| 18 | `theorem` | [kernel_self](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/kernel-self--38d99030a8702987510a9340.md) | 114 | `result-track:38d99030a8702987510a9340ce3817077cd0135c6398af2a0c37a331cc7954e8` |
| 19 | `def` | [graphLaplacian](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/graphlaplacian--9fcbe7eca5d3e728a7ea6b35.md) | 122 | `declaration-track:9fcbe7eca5d3e728a7ea6b35862b542cfd473c885dc0a5ded9ebe980ba9dfb7b` |
| 20 | `theorem` | [graphLaplacian_const](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/graphlaplacian-const--18a72e8d8edbc2a8dfe478ae.md) | 133 | `result-track:18a72e8d8edbc2a8dfe478ae270a3eb98cf62c2561da950b9e5f506e1c87576d` |
| 21 | `abbrev` | [Fiber](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/fiber--0f8b142f24a0c44fc1830357.md) | 143 | `declaration-track:0f8b142f24a0c44fc18303579a589e036f0f4526c1f6108bb25e75cbd4d9e5c1` |
| 22 | `def` | [vsub](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/vsub--e6e4731b6901bd5b9f301ac0.md) | 147 | `declaration-track:e6e4731b6901bd5b9f301ac0baba031c0484c2193cecdd3b1c8abc3a7814477c` |
| 23 | `theorem` | [vsub_self](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/vsub-self--36ac64d06d7a95ac962e701f.md) | 153 | `result-track:36ac64d06d7a95ac962e701fd484f3d45fa1327b8fa0402ee4e7ab3c1e3e64e5` |
| 24 | `structure` | [DiscreteConnection](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/discreteconnection--fecff6267bdd7e6ee6a4a272.md) | 164 | `declaration-track:fecff6267bdd7e6ee6a4a272f83161db586591df988dc120a74cade7d2a994c7` |
| 25 | `def` | [covariantDifference](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/covariantdifference--7ca4caaebe5b39f87fb0aa11.md) | 169 | `declaration-track:7ca4caaebe5b39f87fb0aa11497f98f59996f32b2c49755b2d8f7f192cae0db0` |
| 26 | `def` | [triangleCurvature](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/trianglecurvature--90aa0ae37ad4c10e7192135a.md) | 178 | `declaration-track:90aa0ae37ad4c10e7192135af6b18c6b501cdcab9f7acc23e38f1f006152e224` |
| 27 | `structure` | [DiscreteTorsionDatum](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/discretetorsiondatum--060e19357b71d1cb3a8a3a53.md) | 189 | `declaration-track:060e19357b71d1cb3a8a3a53c3cb11e189c18b18961087ca0eec07ad4d96b29c` |
| 28 | `structure` | [DiscreteRicciTensor](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/discretericcitensor--174c40e03cdff1a389f81992.md) | 199 | `declaration-track:174c40e03cdff1a389f8199206d99e0686240e6c91e076b56b4406aa0c60f183` |
| 29 | `structure` | [DiscreteRicciFlow](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/discretericciflow--510835d41d69b156941af252.md) | 206 | `declaration-track:510835d41d69b156941af25298d33e890d8a40986926bc42eda4877801689ccf` |
| 30 | `def` | [carrierBitToBit](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/carrierbittobit--2b7aa16edadd38cdd4f652a0.md) | 216 | `declaration-track:2b7aa16edadd38cdd4f652a0e083ef44a2c7300b3558ca950b1ef7c15ba4f768` |
| 31 | `theorem` | [carrierBitToBit_zero](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/carrierbittobit-zero--e394c2e8b0bedb40080acdb7.md) | 221 | `result-track:e394c2e8b0bedb40080acdb773e3bb7ad0b0ca77d6e8d2c78ac32b9f2c597846` |
| 32 | `theorem` | [carrierBitToBit_one](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/carrierbittobit-one--3abe16a2267c19eed0efab38.md) | 226 | `result-track:3abe16a2267c19eed0efab3860132d0a1b2de89f071dbc4ab8c5a2fbe5121337` |
| 33 | `def` | [binaryMatrixToBitWord](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/binarymatrixtobitword--5a494ab2aa1ddcbf21190ccf.md) | 231 | `declaration-track:5a494ab2aa1ddcbf21190ccfc54f6fe68a4f712f063f20ff5535a97a445fc149` |
| 34 | `theorem` | [binaryMatrixToBitWord_len](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/binarymatrixtobitword-len--87e13a9edb65621bef91e023.md) | 251 | `result-track:87e13a9edb65621bef91e0232b6841a5a10ece90b5549b4bd9bd9e07e2149cd6` |
| 35 | `def` | [binaryMatrixToPadded](../../../../../mathematics/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/declarations/binarymatrixtopadded--4178f3520e52a319ee3565b1.md) | 259 | `declaration-track:4178f3520e52a319ee3565b15d18df4e17c3e8fda5c0571950bfaa7db7e53df3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
