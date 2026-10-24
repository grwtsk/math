# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9fc4944bc45bce178d458d6af14a2b90d83cab",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9fc4944bc45bce178d458d6af14a2b90d83cab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/bitmatrix--310188afa717ecf2c7a53787.md) | 39 | `declaration-track:310188afa717ecf2c7a53787f8cd75b3103b43468e3e90a3da7d0c4de8389d8d` |
| 2 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/map--80e0cbc0113fb85d8e98a82c.md) | 48 | `declaration-track:80e0cbc0113fb85d8e98a82c0b64571dbf5ef533b850ef6db68172bf49d202b6` |
| 3 | `def` | [zipWith](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/zipwith--511497bf43af87ed684adb5d.md) | 53 | `declaration-track:511497bf43af87ed684adb5de52da936f77c85e070e0657275185e74834c6c6c` |
| 4 | `def` | [and](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/and--07d0e2503c7c4365cb3418ed.md) | 61 | `declaration-track:07d0e2503c7c4365cb3418ed318afaf468984106c6087bd8f21ec5684a40f417` |
| 5 | `def` | [or](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/or--52602eae494ad461f29621a9.md) | 66 | `declaration-track:52602eae494ad461f29621a927256557c6e350d404f54639091d39c7f703d3a8` |
| 6 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/xor--7c05a388aa8a52c695fdf858.md) | 71 | `declaration-track:7c05a388aa8a52c695fdf85876b4446fbc66778e0aa4c1ef81f308b2203e7de6` |
| 7 | `def` | [not](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/not--0766c10be14a53bd2fd4b8e2.md) | 76 | `declaration-track:0766c10be14a53bd2fd4b8e216867cd9fbe89d75c0c7b1bd19009301614957c7` |
| 8 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/map-apply--796594d3d36f62a6e859d380.md) | 80 | `result-track:796594d3d36f62a6e859d380d1086a79ba3f588bc7472f0e7dee4fa4d3b23cc9` |
| 9 | `theorem` | [zipWith_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/zipwith-apply--43bf109eb306d0e163390800.md) | 89 | `result-track:43bf109eb306d0e163390800623dadc0acdf118e51646485467bfc09df885982` |
| 10 | `theorem` | [and_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/and-apply--d51327a3bd77dae83a411e7c.md) | 98 | `result-track:d51327a3bd77dae83a411e7cd13ee66eae9da158c8722fe461873626483e9b8d` |
| 11 | `theorem` | [or_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/or-apply--acfd3ddfcaef8f8b06b3b965.md) | 106 | `result-track:acfd3ddfcaef8f8b06b3b965c6bc0312e6ef99f0eda9089ef5be68a958bae7cc` |
| 12 | `theorem` | [xor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/xor-apply--1a07be4eaa8dc2d427cb542c.md) | 114 | `result-track:1a07be4eaa8dc2d427cb542ce339c67393815a0d036973427be60611ce4d4d2a` |
| 13 | `theorem` | [not_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/not-apply--c7afb8c79ec8628601e9e46e.md) | 122 | `result-track:c7afb8c79ec8628601e9e46ebeeac2f4fa4d7facbfcaebd4d46d15995032e8a9` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/ext--8f10fdc95dc7cd882388d2b5.md) | 131 | `result-track:8f10fdc95dc7cd882388d2b5acf6cf610a84cbca451977c917b147d0e296c22c` |
| 15 | `theorem` | [and_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/and-comm--5953c77894df56178f330ae3.md) | 138 | `result-track:5953c77894df56178f330ae3e168249d232de5d0731d75508590aa48c461ec87` |
| 16 | `theorem` | [and_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/and-assoc--37840ffd55bdc607a6f39254.md) | 146 | `result-track:37840ffd55bdc607a6f3925455b08cc4769b5f2a7daf0771b468780b711f21dc` |
| 17 | `theorem` | [or_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/or-comm--6855a82c1f2ee81a9bdb5ca9.md) | 155 | `result-track:6855a82c1f2ee81a9bdb5ca954d6eb24741607dfc6b24a685bc4c87c3d910633` |
| 18 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/xor-comm--0ff6884e64d30631b1220187.md) | 163 | `result-track:0ff6884e64d30631b12201879cc1055357101c9d446724eb3805f77cfeee3b71` |
| 19 | `theorem` | [not_not](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/not-not--921e84537bfad108e6a70be4.md) | 171 | `result-track:921e84537bfad108e6a70be4985af580b46c5ffcdbce21aa13ed61228b6d95ec` |
| 20 | `structure` | [BitMatrix.ArrayBacked](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/bitmatrix-arraybacked--c1e94e65706521170ce066c4.md) | 189 | `declaration-track:c1e94e65706521170ce066c47b35ddf78f47abc4a692575bff36e0bed17b0d3a` |
| 21 | `def` | [flatIdx](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/flatidx--ede67b528c7e11e4e5e9f018.md) | 203 | `declaration-track:ede67b528c7e11e4e5e9f0183dd5342970c32c83d4d6392c3000608d7f99bf57` |
| 22 | `def` | [ofArray?](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/ofarray--d3cbf56849a548b8395ec172.md) | 222 | `declaration-track:d3cbf56849a548b8395ec172026c72987b21a2ffd80ed6f31d7019631b92cfff` |
| 23 | `def` | [fill](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/fill--2a8c1fe9badd9a996a694b88.md) | 233 | `declaration-track:2a8c1fe9badd9a996a694b88cab1a21d0fd84fbc12639a4dcaed1df3aa9686a0` |
| 24 | `def` | [get](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/get--08ebdc6c120de1a25ee37793.md) | 246 | `declaration-track:08ebdc6c120de1a25ee37793063be5238fe5216138a4833092dc4487ae3f10a0` |
| 25 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/tomatrix--3d07b3971be4c16d8a7bbd28.md) | 256 | `declaration-track:3d07b3971be4c16d8a7bbd28b301a4226f6c83552a124cd2b68a32edaa9d8ccc` |
| 26 | `def` | [mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/mapinplace--7ce92936b2cffc7011f6c82a.md) | 268 | `declaration-track:7ce92936b2cffc7011f6c82a24034e20a585c8beb4184e5af3239de1b8458193` |
| 27 | `def` | [zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/zipwithinplace--f5623a6cf0b212059471c1d4.md) | 282 | `declaration-track:f5623a6cf0b212059471c1d4f2b5e1053d1464e4fdcd3e9c8b92e0d0fcfc47f9` |
| 28 | `def` | [andInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/andinplace--c1a0fc4c1860dae553d17657.md) | 296 | `declaration-track:c1a0fc4c1860dae553d1765757b48a2849398435add038898b65b2f3bae7ad6c` |
| 29 | `def` | [orInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/orinplace--15b0e318382a1519714f455f.md) | 302 | `declaration-track:15b0e318382a1519714f455fb5c55cb695bc9ac4e16b086b57029781fa370ed9` |
| 30 | `def` | [xorInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/xorinplace--7e0cf029fbe612ce57a743a4.md) | 308 | `declaration-track:7e0cf029fbe612ce57a743a4f1c4b680e1f6b3d36f938681b803ed30397fe279` |
| 31 | `def` | [notInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/notinplace--36d5845a4f3fbe238934321a.md) | 314 | `declaration-track:36d5845a4f3fbe238934321a2c86e04cf3cf5b6758417ca6ea79ae514254baad` |
| 32 | `theorem` | [get_mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/get-mapinplace--cb4a47d18564c12630ce719e.md) | 326 | `result-track:cb4a47d18564c12630ce719e055475b26140c12a604af5cb9724c59326b6af9e` |
| 33 | `theorem` | [get_zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/get-zipwithinplace--45eeeb4675494f2862fbebbd.md) | 337 | `result-track:45eeeb4675494f2862fbebbda75961a8b068c26e7fb3a400460383f42b0b4b20` |
| 34 | `theorem` | [mapInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/mapinplace-spec--01b50672555daa54ec8a0fb4.md) | 351 | `result-track:01b50672555daa54ec8a0fb4d5191cc3c9f729b5866ded911069323189af6f4b` |
| 35 | `theorem` | [zipWithInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/zipwithinplace-spec--392e44030fa1586ec22c9342.md) | 366 | `result-track:392e44030fa1586ec22c93424480b118213ac539e214cf76310f41cff642e6bd` |
| 36 | `theorem` | [andInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/andinplace-spec--0c64a62a13040116b063f88a.md) | 375 | `result-track:0c64a62a13040116b063f88aaedbeeee38dd1a7f13628acf05cfab8783e96cd3` |
| 37 | `theorem` | [orInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/orinplace-spec--d79ea9288b4ae210672666b9.md) | 382 | `result-track:d79ea9288b4ae210672666b9d49f4d605a9a2c75ad81530e2ea0485c7a1b4bab` |
| 38 | `theorem` | [xorInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/xorinplace-spec--4f28f93ec057a6d3cbd196fb.md) | 389 | `result-track:4f28f93ec057a6d3cbd196fb7e57c8872fc459ed13841c5a3bb592db507f27e9` |
| 39 | `theorem` | [notInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/notinplace-spec--09bad7bff7e420cb31a44360.md) | 396 | `result-track:09bad7bff7e420cb31a443600c743a9e273e87a3348f05d40a358a9f9b1f3a7a` |
| 40 | `def` | [Refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/refines--688a3dec765f9c2596f78b3a.md) | 416 | `declaration-track:688a3dec765f9c2596f78b3a36d9a19ff035e26872c720be8e0c38e0c927eca4` |
| 41 | `theorem` | [refines_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/refines-tomatrix--cfb70b26162450439afac564.md) | 428 | `result-track:cfb70b26162450439afac5645c85febc7f5bd997d53807392cc8566a807d1375` |
| 42 | `theorem` | [mapInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/mapinplace-refines--2af3a07005e9d5512d0c1eb3.md) | 436 | `result-track:2af3a07005e9d5512d0c1eb305549682f2c54cd43b18449e3257e535feb2b507` |
| 43 | `theorem` | [zipWithInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/zipwithinplace-refines--e503bbf1760524e62e2d56e6.md) | 450 | `result-track:e503bbf1760524e62e2d56e63fe7de90fdf43d24ee072b5b75e26ff377e14c81` |
| 44 | `theorem` | [andInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/andinplace-refines--0ef60f5af950a24c0e74699e.md) | 462 | `result-track:0ef60f5af950a24c0e74699e882663597c031562b736f3218fdf02dae081fa8f` |
| 45 | `theorem` | [andInPlace_comm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/andinplace-comm-tomatrix--5d270c024a60ddc26a3e01a5.md) | 487 | `result-track:5d270c024a60ddc26a3e01a5b092a069c957883a2f18e355342d2b4feb7373d1` |
| 46 | `theorem` | [andInPlace_assoc_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/andinplace-assoc-tomatrix--4d5349c5282541b20252261f.md) | 494 | `result-track:4d5349c5282541b20252261ff9572307067125ad9f18e760e5d37f4bdc2b5e9b` |
| 47 | `theorem` | [notInPlace_involutive_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante0af83fa4238890f364dddd5c0225ae43db4d182829f5776d5c60de1df7aa512.lean/declarations/notinplace-involutive-tomatrix--fb49e33f30839f6d075f93bf.md) | 502 | `result-track:fb49e33f30839f6d075f93bfd806a75df072734c4f02d14f9e092486a3ce81a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
