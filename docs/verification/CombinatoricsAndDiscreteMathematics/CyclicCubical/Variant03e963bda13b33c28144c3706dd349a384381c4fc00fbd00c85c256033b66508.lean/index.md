# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCubical.Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de0c1b052e0bf9d9d5572d55fd6ec74c0a471ad2",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de0c1b052e0bf9d9d5572d55fd6ec74c0a471ad2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Suture` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/bitfield--66a549abe209de9f5d9ed59f.md) | 29 | `declaration-track:66a549abe209de9f5d9ed59f65b121e617833b25cae05d99ddb5010fb7ffc647` |
| 2 | `abbrev` | [FaceAddress](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/faceaddress--1ff5bda778611a9a05fee2f8.md) | 32 | `declaration-track:1ff5bda778611a9a05fee2f82bfbf66f0c7067d8de37d619227e3e54ca405021` |
| 3 | `def` | [freeCoordinates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/freecoordinates--058af711b3a0817fc367a873.md) | 37 | `declaration-track:058af711b3a0817fc367a8734d757ec2487509e468f5d3519617faa6c41b45ac` |
| 4 | `def` | [dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/dimension--168ab35b87ed846d49e737a0.md) | 41 | `declaration-track:168ab35b87ed846d49e737a056782de7ffcbed3ee992dc54d76fe60b5c920bf4` |
| 5 | `def` | [IsSubface](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/issubface--7a2068ff3dbf2e071ade5d9e.md) | 45 | `declaration-track:7a2068ff3dbf2e071ade5d9e4b70788774e3c31f34c702d401d07969c00d6d17` |
| 6 | `def` | [IsFacet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/isfacet--e1b1bc5a972ec666bf9b5657.md) | 49 | `declaration-track:e1b1bc5a972ec666bf9b565744b29dd24677b2b1434ffbcbf2dba721f0a6f9c8` |
| 7 | `def` | [Incident](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/incident--61318173ecac6abb7304e6ce.md) | 53 | `declaration-track:61318173ecac6abb7304e6ce8fb2a04aad31b2e2d896ee487054ef1bd8ed9b4e` |
| 8 | `abbrev` | [CubicalFace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cubicalface--99b2bc71613e5c629949bde0.md) | 59 | `declaration-track:99b2bc71613e5c629949bde0a843d3dd401904b4d83239702da0a848a44a7e82` |
| 9 | `def` | [faceCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/facecount--633bdb1a0fc653e51cca27fd.md) | 63 | `declaration-track:633bdb1a0fc653e51cca27fdfdbfc4d8738e762ea0121bfb91b05abbe8c160ee` |
| 10 | `abbrev` | [FaceEncoding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/faceencoding--073b63d424d545274926a38a.md) | 66 | `declaration-track:073b63d424d545274926a38ad2b4494db97700c9d7bd73a63b5a2b42a64c8b34` |
| 11 | `def` | [faceEncodingEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/faceencodingequiv--1453f7ebe0fcc019fa037463.md) | 70 | `declaration-track:1453f7ebe0fcc019fa037463555efd1e2b74a6f6f0aef98f09297868f16595d7` |
| 12 | `theorem` | [card_free_coordinate_sets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/card-free-coordinate-sets--5c133ef025ec7a64dd327917.md) | 129 | `result-track:5c133ef025ec7a64dd32791757f31517cbf3f05b52226764abc8fb76c1b389c2` |
| 13 | `theorem` | [card_fixed_assignments](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/card-fixed-assignments--6230e5d7326da6c1572b8f55.md) | 140 | `result-track:6230e5d7326da6c1572b8f5555f9f10c5fdee603875bb5413ce7b97902331186` |
| 14 | `theorem` | [card_faces_eq_faceCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/card-faces-eq-facecount--3750c5284d2392d194fd3a51.md) | 149 | `result-track:3750c5284d2392d194fd3a51c88d0f7794e209e5acca197a0cad47ec3bfa7d3f` |
| 15 | `theorem` | [sum_faceCount_eq_three_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/sum-facecount-eq-three-pow--304930e9dc8aae9cb2ad8d54.md) | 158 | `result-track:304930e9dc8aae9cb2ad8d54ae2b0cfa00d9eb835517d37a7b0311daa7bb0175` |
| 16 | `def` | [cyclicCoordinateEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cycliccoordinateequiv--9eadb05d5d2de3480f15138c.md) | 168 | `declaration-track:9eadb05d5d2de3480f15138c38456ab449d05fb0dbf2b02e241e1f340f1ed447` |
| 17 | `theorem` | [cyclicCoordinateEquiv_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cycliccoordinateequiv-zero--bb8519e9119eae9d2b023a54.md) | 174 | `result-track:bb8519e9119eae9d2b023a54402b7025cc071423d4fef5d169644d692d5eaa87` |
| 18 | `theorem` | [cyclicCoordinateEquiv_symm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cycliccoordinateequiv-symm-zero--fe637351813616ec3f4f53d8.md) | 178 | `result-track:fe637351813616ec3f4f53d82afcac46d356ae17c5a8b527369efecbf2ac4227` |
| 19 | `theorem` | [cyclicCoordinateEquiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cycliccoordinateequiv-symm--2e096c4a1dd42776b3981402.md) | 183 | `result-track:2e096c4a1dd42776b3981402ba9b6e3c5c094e8a520ecd88214ccb0b527a9da4` |
| 20 | `theorem` | [cyclicCoordinateEquiv_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cycliccoordinateequiv-add--625c6499958989e4fb5737d3.md) | 188 | `result-track:625c6499958989e4fb5737d35158ccc92dfae7bd582e882446235bac4449628b` |
| 21 | `def` | [rotateBitField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotatebitfield--2775e4401296dc68ddd5a709.md) | 195 | `declaration-track:2775e4401296dc68ddd5a7092e472ba02d0de846421bedc96113a4de3c3268e8` |
| 22 | `def` | [rotateFace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface--56ccea2b660a1d4719e8eeb8.md) | 199 | `declaration-track:56ccea2b660a1d4719e8eeb810999f3728e7ab8d83a008531eaac9f27107892f` |
| 23 | `theorem` | [rotateBitField_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotatebitfield-zero--692801db089324a2a60eae63.md) | 202 | `result-track:692801db089324a2a60eae631de3e21059731f9676ffeaef821f0b1bc3fc7c7f` |
| 24 | `theorem` | [rotateFace_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-zero--058fd2230e200f0d6c2457e1.md) | 207 | `result-track:058fd2230e200f0d6c2457e1027e11e6fb75aed589870278ad2519972992db81` |
| 25 | `theorem` | [rotateBitField_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotatebitfield-add--e8b47127f1e4dd1aeb6773bb.md) | 212 | `result-track:e8b47127f1e4dd1aeb6773bb36f041b6b872e9c6e4fdd373b82fe0ca14a790fc` |
| 26 | `theorem` | [rotateFace_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-add--7bddcd92fff8bf4331c4f852.md) | 218 | `result-track:7bddcd92fff8bf4331c4f85295a771d8af5503fd7c08593193c527dbd83a534b` |
| 27 | `theorem` | [rotateBitField_neg_rotateBitField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotatebitfield-neg-rotatebitfield--9c285c72fc0fdbcfff063561.md) | 223 | `result-track:9c285c72fc0fdbcfff063561ba016fc624f2e72347710482fe3d9986937217f7` |
| 28 | `theorem` | [rotateFace_neg_rotateFace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-neg-rotateface--2d867417c381c4d9ac8acace.md) | 229 | `result-track:2d867417c381c4d9ac8acaceae899c4732358b3e394a172a31ccb6a8c1780618` |
| 29 | `theorem` | [rotateFace_dimension](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-dimension--b5e7742a246a9061f0561e31.md) | 236 | `result-track:b5e7742a246a9061f0561e3102f3718606cf6762ac41a27b598492c14037bcd1` |
| 30 | `theorem` | [rotateFace_inclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-inclusion--adaad11eeba05bba45ce670e.md) | 256 | `result-track:adaad11eeba05bba45ce670e9c248632aba0d5b63e82cd74fbae38337c94bd81` |
| 31 | `theorem` | [rotateFace_boundaryRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-boundaryrelation--68d6f9920dce56aa84602d46.md) | 268 | `result-track:68d6f9920dce56aa84602d46959a9ac06e664d847a8c5bdcb93447ac776574b4` |
| 32 | `theorem` | [rotateFace_incidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-incidence--9117bc028c49ef5916014edf.md) | 275 | `result-track:9117bc028c49ef5916014edfd0888582343aec51b192e19e9a960b0f09d2bb29` |
| 33 | `theorem` | [rotateFace_commonIncidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotateface-commonincidence--a96876fde18cf1aa5c82687a.md) | 290 | `result-track:a96876fde18cf1aa5c82687a281e14562cb3026d04cf370612c66db4220a5151` |
| 34 | `abbrev` | [CubicalChain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cubicalchain--185f5d1bd00092eac14e40df.md) | 299 | `declaration-track:185f5d1bd00092eac14e40df9e851281ab63f60226373232288392a10f09fc86` |
| 35 | `def` | [rotate_chainMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotate-chainmap--931715fa5162e96ee5edc40c.md) | 302 | `declaration-track:931715fa5162e96ee5edc40c37687ef5f3bc933dfb80bf7dade2c7f256bceba1` |
| 36 | `def` | [cubicalBoundary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/cubicalboundary--7740297ec57bd08f3967e79c.md) | 307 | `declaration-track:7740297ec57bd08f3967e79cda6d6704345ca8f7ccae25783eb8f5af7c189275` |
| 37 | `theorem` | [boundary_rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/boundary-rotate--c9a2807b47d8900b12ecb0ba.md) | 315 | `result-track:c9a2807b47d8900b12ecb0ba11e865c91171b450b6e6542fcb9f835ae96b907e` |
| 38 | `def` | [rotationEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotationequivalent--7993c2d4a12fc2c991084590.md) | 343 | `declaration-track:7993c2d4a12fc2c991084590fdf1e0dcb6860b9dc0b5eec4f782b7b26285c4ea` |
| 39 | `def` | [toy1010](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/toy1010--ebe322e68f37036783aca749.md) | 346 | `declaration-track:ebe322e68f37036783aca749d7d26482a170f4d45fbf30394574cbe08362e91a` |
| 40 | `def` | [toy0101](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/toy0101--940f6e6f03fddaed7fa7ede7.md) | 352 | `declaration-track:940f6e6f03fddaed7fa7ede71a05a75b57037ea1cf078d30a31cf42af0922e03` |
| 41 | `theorem` | [toy_1010_rotates_to_0101](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/toy-1010-rotates-to-0101--1d8583a2ff8f10c812aff2b3.md) | 359 | `result-track:1d8583a2ff8f10c812aff2b38b9cd68a3cf55e93b9488b4ddbb4f9f2e354cba3` |
| 42 | `def` | [rotationOrbitCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotationorbitcount--712a0c592c05cb31c0a22427.md) | 366 | `declaration-track:712a0c592c05cb31c0a2242734766e0127038020556589e1960eb8f4e9eb76cf` |
| 43 | `def` | [rotationKFaceOrbitCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotationkfaceorbitcount--2dee679552f886b07d7772f4.md) | 371 | `declaration-track:2dee679552f886b07d7772f4786b05a4db353a1413cc31e6c4272471c143111e` |
| 44 | `theorem` | [rotationKFaceOrbitCount_burnside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant03e963bda13b33c28144c3706dd349a384381c4fc00fbd00c85c256033b66508.lean/declarations/rotationkfaceorbitcount-burnside--141bbff48d33abfe2268bad4.md) | 378 | `result-track:141bbff48d33abfe2268bad44ea1db53d4cacaf18d64b0ff40f8143adb22460d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
