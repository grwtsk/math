# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5396b8aa324ddd7f9dd007135949144004e82bf",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5396b8aa324ddd7f9dd007135949144004e82bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.SMul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/affinebasis--6865ee2d1b58d69432dd95d7.md) | 56 | `declaration-track:6865ee2d1b58d69432dd95d7f7dbc8f3e68c6426559f808a871ee4ca216c0572` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instance--4ecd58c22f41a4fef01f2dcc.md) | 71 | `declaration-track:4ecd58c22f41a4fef01f2dcc6aba6874c0ed42f2d9c68f4146e114f0f85173cc` |
| 3 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instfunlike--163e7454209cf4e88a743cb5.md) | 74 | `declaration-track:163e7454209cf4e88a743cb5f3f4e9a81fbf0a3757e4d4fb0245f42c29ceb0d6` |
| 4 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/ext--ba8822ce8b236d6fdc622c6c.md) | 79 | `result-track:ba8822ce8b236d6fdc622c6c267ee2e051dbf22e798d77088950c4e0c9255aaf` |
| 5 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/ind--20864d010237b1144d44664d.md) | 82 | `result-track:20864d010237b1144d44664df749a4b3301ab6ffcf6993c7908acca0357d049e` |
| 6 | `theorem` | [tot](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/tot--09b8be9de936ee5eaa66eb43.md) | 85 | `result-track:09b8be9de936ee5eaa66eb435e1f8268e768d38c9f6d4543f8eb179f8220b23b` |
| 7 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/nonempty--f8d755dd2bf54d32f578c541.md) | 89 | `result-track:f8d755dd2bf54d32f578c541de8316e9cef9a8f4c468c212ff01320c4ec32163` |
| 8 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/reindex--956dec50678ecca8e89bc959.md) | 94 | `declaration-track:956dec50678ecca8e89bc959ed69f812e3d9eae0af704bf7c2f0f52442985195` |
| 9 | `theorem` | [coe_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coe-reindex--0b46b4cd83ca8e8307d3e5c2.md) | 100 | `result-track:0b46b4cd83ca8e8307d3e5c238e212b2d103c089cfde409ed85319b61e161709` |
| 10 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/reindex-apply--0ed8c86493e0296d9c954931.md) | 104 | `result-track:0ed8c86493e0296d9c954931247f149123d8558dd9be6de97c4d4e78d92120f8` |
| 11 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/reindex-refl--fbe9b11e69ac32d280481726.md) | 108 | `result-track:fbe9b11e69ac32d28048172659cdb0587d5c2b07bc31585264f8c4f7987fa6f6` |
| 12 | `def` | [basisOf](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/basisof--a4f17c1d6fc753c0d3d610cf.md) | 116 | `declaration-track:a4f17c1d6fc753c0d3d610cfc65e81e1535556502609617335fbcfe7d33f292f` |
| 13 | `theorem` | [basisOf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/basisof-apply--13bc19e978e678bdceab10a7.md) | 129 | `result-track:13bc19e978e678bdceab10a7d12c74f6a098a895e028dddea083f4cc484e6090` |
| 14 | `theorem` | [basisOf_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/basisof-reindex--86aff1e2975e1a96fba09092.md) | 133 | `result-track:86aff1e2975e1a96fba090927dcc3feb6619293a6fef8448b42f6563f3783a85` |
| 15 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord--ed329abd3f006a81727a573a.md) | 140 | `declaration-track:ed329abd3f006a81727a573ad02355e31921ce8f26f6bcdc6c4dcbb21c919620` |
| 16 | `theorem` | [linear_eq_sumCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/linear-eq-sumcoords--dff638243e827ec12def840c.md) | 148 | `result-track:dff638243e827ec12def840c6004baebbe895fd646fec8629eb752d383c4dd5b` |
| 17 | `theorem` | [coord_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-reindex--a76cd1f1bf79749a56f7f568.md) | 152 | `result-track:a76cd1f1bf79749a56f7f568feb941c1c34bf2f7e58c09da94faeebdff4f4622` |
| 18 | `theorem` | [coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply-eq--1bfa378c904bb60c0aa7160c.md) | 157 | `result-track:1bfa378c904bb60c0aa7160c749c992594c0afa589ac9550857eb7404ff790a6` |
| 19 | `theorem` | [coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply-ne--fb126550b97bce8d77af7946.md) | 162 | `result-track:fb126550b97bce8d77af7946d923c475632b212dd21fb1120b93b48e168e33a7` |
| 20 | `theorem` | [coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply--556f849b2ce6a4ad129470da.md) | 166 | `result-track:556f849b2ce6a4ad129470da4dd6fb8280374dd81363dca7e7d420857f9b8377` |
| 21 | `theorem` | [coord_apply_combination_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply-combination-of-mem--e0f3cf42807ff915293e4caf.md) | 170 | `result-track:e0f3cf42807ff915293e4caf3efeb7a6556ef0fa260ed439b826878fb3b9fb4e` |
| 22 | `theorem` | [coord_apply_combination_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply-combination-of-notmem--4afd2aa36bdcf0531a10a5d5.md) | 177 | `result-track:4afd2aa36bdcf0531a10a5d5f133d3a5e8d791fa9fa2d80b490f0815b53ff867` |
| 23 | `theorem` | [sum_coord_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/sum-coord-apply-eq-one--1d2dd9508d0e657b13100bad.md) | 187 | `result-track:1d2dd9508d0e657b13100bad33b109971c1dffeb9019b0ac53d0f07f778836ed` |
| 24 | `theorem` | [affineCombination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/affinecombination-coord-eq-self--206a7a03688b48eb2de36b4a.md) | 196 | `result-track:206a7a03688b48eb2de36b4a144f9fcda8565908bc6959ea490cdcde221a8a3f` |
| 25 | `theorem` | [linear_combination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/linear-combination-coord-eq-self--ac7749fbd8240bbf6327cb37.md) | 209 | `result-track:ac7749fbd8240bbf6327cb37e1898a018f55bfba15d602d1ec1f5e4bcd9c68ed` |
| 26 | `theorem` | [ext_elem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/ext-elem--15f6c7d2d676f1ecbfdffd4f.md) | 214 | `result-track:15f6c7d2d676f1ecbfdffd4f248fb9483fd6c9834e617ac9a2aaf97383406152` |
| 27 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coe-coord-of-subsingleton-eq-one--3ba8606462f6829d8da64fc7.md) | 220 | `result-track:3ba8606462f6829d8da64fc781089f87fc9f8a3a0ca60b7463e3e6693e730f48` |
| 28 | `theorem` | [surjective_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/surjective-coord--634570d4e3fa1d46da4309be.md) | 234 | `result-track:634570d4e3fa1d46da4309beea4610c3d880351873b2b1b14941ac47580280ac` |
| 29 | `def` | [coords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coords--542a6be538301e7e95521df2.md) | 247 | `declaration-track:542a6be538301e7e95521df2471031873f35fab4047486220b622d9535090026` |
| 30 | `theorem` | [coords_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coords-apply--e4504b7350cdc54cf34aac0c.md) | 256 | `result-track:e4504b7350cdc54cf34aac0cce0dfc3f35df26522f457a0fa01f9a607c89c8a1` |
| 31 | `instance` | [instVAdd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instvadd--9c2f8487d5fbfc87aaf82697.md) | 259 | `declaration-track:9c2f8487d5fbfc87aaf82697e42fc8f08cabccc74dfa7a49d52fc05a875d464e` |
| 32 | `lemma` | [coe_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coe-vadd--547692590821d61ff1a85fca.md) | 266 | `result-track:547692590821d61ff1a85fca0e2ea191de91b8e845bcfacfec90e3f4117a7060` |
| 33 | `lemma` | [basisOf_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/basisof-vadd--58cc6e26039162b920baa5e4.md) | 268 | `result-track:58cc6e26039162b920baa5e44df023de462fe45c150a3fca25a0a1a7cfbe9260` |
| 34 | `instance` | [instAddAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instaddaction--4eba625435f0d9edddb30c02.md) | 272 | `declaration-track:4eba625435f0d9edddb30c02d2599421404f760f38562d1014c3c1e2468f6bad` |
| 35 | `lemma` | [coord_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-vadd--39a7d9918f06ea81258aa925.md) | 275 | `result-track:39a7d9918f06ea81258aa925f6d01440fa31280f7c97c5a1fbc982bcbc3b28a4` |
| 36 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instsmul--e83876bd7d11992d036dbe26.md) | 293 | `declaration-track:e83876bd7d11992d036dbe262b749cc0ee86c4329771346ed207992cc59313c5` |
| 37 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coe-smul--13039b5f79b23bb0ca42c5eb.md) | 301 | `result-track:13039b5f79b23bb0ca42c5eb9349e85b42a6f392056ab37596b665303a18620f` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instance--8b066628451623cc70edc1ea.md) | 305 | `declaration-track:8b066628451623cc70edc1eacac51569ca87ce44bb1a10c6ba1e51b283bac663` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instance--7b7f213eff8717d232f65124.md) | 310 | `declaration-track:7b7f213eff8717d232f65124c81d81d22bb6f0b8ce92263b1012f2828f61d8a6` |
| 40 | `lemma` | [basisOf_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/basisof-smul--02bfa250c9624269b50e4346.md) | 313 | `result-track:02bfa250c9624269b50e434659827808714c77f286128e0d4f7fec12ca73477f` |
| 41 | `lemma` | [reindex_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/reindex-smul--b043bd4f1974b81553d34709.md) | 316 | `result-track:b043bd4f1974b81553d34709d6e5d5b9749373c14763801574c9de36bb1f68e7` |
| 42 | `lemma` | [coord_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-smul--9055d1ae317e6dd72cf0c177.md) | 320 | `result-track:9055d1ae317e6dd72cf0c1772f77f698978d2bc40d6914de2676339e1533e6f4` |
| 43 | `instance` | [instMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/instmulaction--90fc1e22ca5c3af3f791c902.md) | 326 | `declaration-track:90fc1e22ca5c3af3f791c902b9a11c005b8acd903808afff5b2b35ddd429059b` |
| 44 | `theorem` | [coord_apply_centroid](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/coord-apply-centroid--ad33d1d4f47c2c6746b3811a.md) | 337 | `result-track:ad33d1d4f47c2c6746b3811af2061a21033a61a0dbcfacb33b62cfc95fcd8e62` |
| 45 | `theorem` | [exists_affine_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/exists-affine-subbasis--9d183c6e636356136385d7dc.md) | 343 | `result-track:9d183c6e636356136385d7dcc8fbea47d74b1b77176c81cc6b473e51cabee333` |
| 46 | `theorem` | [exists_affineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantd27ddf1c9e20b5078910dba4101f8f9b3d7106339e5b4dca06cf3fbe391e1512.lean/declarations/exists-affinebasis--892eae0c0017bde1d5da5948.md) | 351 | `result-track:892eae0c0017bde1d5da5948e4fb1efad33cac964f4d11c20926d59136974e84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
