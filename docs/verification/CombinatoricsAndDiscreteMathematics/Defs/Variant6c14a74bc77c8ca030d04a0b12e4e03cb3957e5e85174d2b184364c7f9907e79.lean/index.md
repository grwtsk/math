# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ca07f5b50bf0638608dadc8f25b73d981cf442",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ca07f5b50bf0638608dadc8f25b73d981cf442`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset--b541d9d4107b8c5d49d9b088.md) | 69 | `declaration-track:b541d9d4107b8c5d49d9b088ac7cb2eb3482ed954f4043ce70d0bf14deaf02f4` |
| 2 | `theorem` | [isLinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-iff--8f637bb50d6c27e670af46c9.md) | 73 | `result-track:8f637bb50d6c27e670af46c9c7eb77308bffa6b046f66212c8e2ef5648013eb9` |
| 3 | `theorem` | [IsLinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-singleton--b2cd9d518337abe6014e0a91.md) | 78 | `result-track:b2cd9d518337abe6014e0a9199ba57f3892f10c3c8a55be2fbb201fb8c84f3a8` |
| 4 | `theorem` | [IsLinearSet.closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-closure-finset--7c431e181e184bc9f7c4fe69.md) | 81 | `result-track:7c431e181e184bc9f7c4fe69c16cf48e1fcf677c83fcb70be10182cdcb709bfe` |
| 5 | `theorem` | [IsLinearSet.closure_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-closure-of-finite--f49d74018c079581840e1089.md) | 84 | `result-track:f49d74018c079581840e1089b0ba27d838a6bc103d95940c4ae38a5bf555be55` |
| 6 | `theorem` | [isLinearSet_iff_exists_fg_eq_vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-iff-exists-fg-eq-vadd--bd74a8bb81ab35ff3f77eb22.md) | 88 | `result-track:bd74a8bb81ab35ff3f77eb222d63b314cfa20ffaa8943e24a269c637945dba08` |
| 7 | `theorem` | [IsLinearSet.of_fg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-of-fg--0801d016aa235fcc0dae1cdc.md) | 93 | `result-track:0801d016aa235fcc0dae1cdc8d8df425db460723433facec0e0dec29416b4753` |
| 8 | `theorem` | [IsLinearSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-univ--83bd125a57e62e95805d1862.md) | 98 | `result-track:83bd125a57e62e95805d1862d3262bde43b67dca71411ed466b9175b5dc47e6a` |
| 9 | `theorem` | [IsLinearSet.vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-vadd--840530ee1c3408aa41d5bd73.md) | 101 | `result-track:840530ee1c3408aa41d5bd737617897f58a922aa6c91a10903201b166613615d` |
| 10 | `theorem` | [IsLinearSet.add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-add--75d555b20b27e79608073220.md) | 105 | `result-track:75d555b20b27e796080732200475831a46dc9c49937a47eddaadb2dba5a09f78` |
| 11 | `theorem` | [IsLinearSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-image--aff0788988003a50d9e88152.md) | 110 | `result-track:aff0788988003a50d9e88152f0336eabb88e615b1f53fe0771a6a8f8eec80205` |
| 12 | `def` | [IsSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset--3b79e44452305e5f3181e432.md) | 116 | `declaration-track:3b79e44452305e5f3181e4329f73b6b6c5cf8df03393db100a54130e5c41438d` |
| 13 | `theorem` | [isSemilinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-iff--8e8944b74e7d25e7c451deae.md) | 120 | `result-track:8e8944b74e7d25e7c451deaeb9235e6f1526c1c2f48c878186faaee1c6872cf5` |
| 14 | `theorem` | [IsLinearSet.isSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-issemilinearset--d1574db8d61d96045162e05b.md) | 124 | `result-track:d1574db8d61d96045162e05b92e860a64fc47d1005386b3d2be26baa6b07498e` |
| 15 | `theorem` | [IsSemilinearSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-empty--9569d9d0fe8885501d98413b.md) | 128 | `result-track:9569d9d0fe8885501d98413b51a054c02f6ef6d168240c5e47df8eed70a780c8` |
| 16 | `theorem` | [IsSemilinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-singleton--2a5c25c008a3d8c6647a7515.md) | 132 | `result-track:2a5c25c008a3d8c6647a7515d39f220f8afad2cd0caf4f3212e9326318f97277` |
| 17 | `theorem` | [IsSemilinearSet.closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-closure-finset--afac69a72abfe48f9f7fe223.md) | 135 | `result-track:afac69a72abfe48f9f7fe2236e0932a4c29ea62a0e82bb0406e682a2dcf4b56d` |
| 18 | `theorem` | [IsSemilinearSet.closure_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-closure-of-finite--84f70ff3fc7f2fdeed1dec92.md) | 139 | `result-track:84f70ff3fc7f2fdeed1dec9275ae74a56b4d61426b2e3e191c40e15b52b47ed9` |
| 19 | `theorem` | [IsSemilinearSet.of_fg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-of-fg--ce7eeb754678028f2bff075c.md) | 143 | `result-track:ce7eeb754678028f2bff075c7b6e66ece1cefd2f99dd5240a246e3b21fcf2dd4` |
| 20 | `theorem` | [IsSemilinearSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-univ--340b13c2e675025f53c73672.md) | 148 | `result-track:340b13c2e675025f53c73672cbf7ee6b014e91748bcca8c02108e6c31fb1a5b5` |
| 21 | `theorem` | [IsSemilinearSet.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-union--a670c4aa3fd60347e6c83306.md) | 152 | `result-track:a670c4aa3fd60347e6c83306756ba834e5734bb2746fb9bb83b69fb276b02b58` |
| 22 | `theorem` | [IsSemilinearSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-sunion--a9eb6aa7ac25c8e55e3836a0.md) | 161 | `result-track:a9eb6aa7ac25c8e55e3836a0b507cbb23ac940e5ced886ab733056d83a81ddf5` |
| 23 | `theorem` | [IsSemilinearSet.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-iunion--b1ace94a74eb84e088105895.md) | 169 | `result-track:b1ace94a74eb84e088105895c7f2d6cd6225ff873745630b75e0d5f57b603c2b` |
| 24 | `theorem` | [IsSemilinearSet.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-biunion--2e9e64b86fffa9eac1c1d037.md) | 175 | `result-track:2e9e64b86fffa9eac1c1d03753d4f81a5b542136553c1de394834b8ed64ef837` |
| 25 | `theorem` | [IsSemilinearSet.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-biunion-finset--d7256ca584e47161024e6ecd.md) | 181 | `result-track:d7256ca584e47161024e6ecd334a5433d7810b36eef15b5cf0a776cb62d5bcee` |
| 26 | `theorem` | [IsSemilinearSet.of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-of-finite--dbe6fa65d3260e251da83366.md) | 185 | `result-track:dbe6fa65d3260e251da83366d70b65834e0a781ee190d4587a2c135f6dfbc670` |
| 27 | `theorem` | [IsSemilinearSet.vadd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-vadd--c9b3e78503a2d615f9258e4e.md) | 190 | `result-track:c9b3e78503a2d615f9258e4e902072f12d259364ece6fddf3244140f131afefc` |
| 28 | `theorem` | [IsSemilinearSet.add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-add--76538fdaa94fae5ca44c0f8b.md) | 196 | `result-track:76538fdaa94fae5ca44c0f8b5c0807f19786bf852310445ec2f82749be982ecf` |
| 29 | `theorem` | [IsSemilinearSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-image--35aac334ae4f79b5e9b31158.md) | 205 | `result-track:35aac334ae4f79b5e9b31158de8037887d69f14ada7c389fb589749f2368b8bb` |
| 30 | `theorem` | [isSemilinearSet_image_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-image-iff--db75ee1d8fb5b549719f99ec.md) | 210 | `result-track:db75ee1d8fb5b549719f99ec897f7ba4ccdba3d967d63a3e4bde174c01f25b3c` |
| 31 | `theorem` | [IsSemilinearSet.proj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-proj--f49695548109c99a0f447db3.md) | 219 | `result-track:f49695548109c99a0f447db3c9c4625bce7ffa21dcd4959576e26f78a7af0869` |
| 32 | `theorem` | [IsSemilinearSet.proj'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-proj--54a04de02344cefb7cef7b75.md) | 231 | `result-track:54a04de02344cefb7cef7b755ce73d032d5b8c2baf1c907abd3ca3be31fab471` |
| 33 | `lemma` | [IsLinearSet.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-closure--a1587840812ea090a4d7a1e4.md) | 235 | `result-track:a1587840812ea090a4d7a1e49c0ec3a6bf0e8ff2cea6419ffc980267c4916f7a` |
| 34 | `theorem` | [IsSemilinearSet.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-closure--ff4e6e0b195bd4e4ed54ef54.md) | 265 | `result-track:ff4e6e0b195bd4e4ed54ef54dc0d49283a7708c1a29373bbb56c53d09716de01` |
| 35 | `def` | [IsProperLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/isproperlinearset--7099c9c757e864f38fac78ea.md) | 275 | `declaration-track:7099c9c757e864f38fac78ea226246d5a90345574cc7cb58edc32d84be5fb581` |
| 36 | `theorem` | [isProperLinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/isproperlinearset-iff--b726ae2b9fc6a4aecfa2487d.md) | 279 | `result-track:b726ae2b9fc6a4aecfa2487d30609e723052352dc6f97cd75096b906a722cdef` |
| 37 | `theorem` | [IsProperLinearSet.isLinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/isproperlinearset-islinearset--d62742817bd43d2c115efcd0.md) | 285 | `result-track:d62742817bd43d2c115efcd064dfbfbd28d592430efdcf673c4b67f6f7b09cb7` |
| 38 | `theorem` | [IsProperLinearSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/isproperlinearset-singleton--300de86d16405c33627d6371.md) | 290 | `result-track:300de86d16405c33627d6371356e930a8a30246d5e04a80fc872fafd00543bad` |
| 39 | `def` | [IsProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset--6f29849307515e690ae215b6.md) | 294 | `declaration-track:6f29849307515e690ae215b6b61137aa38d0fac8499104be18323c64000c7967` |
| 40 | `theorem` | [isProperSemilinearSet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-iff--80c3d1a4edac8b11f2ea5bff.md) | 299 | `result-track:80c3d1a4edac8b11f2ea5bff79b459d738b7c9826a0bc3011dbe6df8613dc020` |
| 41 | `theorem` | [IsProperSemilinearSet.isSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-issemilinearset--5bad24eda1d0ab529230d0c1.md) | 303 | `result-track:5bad24eda1d0ab529230d0c18c15159408f77b086fa6f90709f8390b7dc0080c` |
| 42 | `theorem` | [IsProperLinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/isproperlinearset-ispropersemilinearset--500298c68c0a459538fce7ad.md) | 308 | `result-track:500298c68c0a459538fce7ad9c23a09d17c33f662835240663d95dd532552561` |
| 43 | `theorem` | [IsProperSemilinearSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-empty--3e73d3b9236dcd90bcc5c3fc.md) | 313 | `result-track:3e73d3b9236dcd90bcc5c3fc6a8aece592b87409f8cb55f111c2ad80e75689b5` |
| 44 | `theorem` | [IsProperSemilinearSet.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-union--5d49505105149cd1d780c2af.md) | 316 | `result-track:5d49505105149cd1d780c2af88a38033ccc91dc3d1bf855094acd7b85b5687ee` |
| 45 | `theorem` | [IsProperSemilinearSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-sunion--5727bd0a44be30863e023869.md) | 325 | `result-track:5727bd0a44be30863e02386924dfad36cfc9d55670509b35412692480e1c1030` |
| 46 | `theorem` | [IsProperSemilinearSet.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-biunion--c087d03b142f5e90eb02b015.md) | 333 | `result-track:c087d03b142f5e90eb02b0153ccfa6c76e9c4dc694256fc788dc0dd2d9bdee71` |
| 47 | `theorem` | [IsProperSemilinearSet.biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/ispropersemilinearset-biunion-finset--0f55a0c44b6778842dfb88fd.md) | 339 | `result-track:0f55a0c44b6778842dfb88fd3090013d3a9725e7f2fa13415228673ecf1c319a` |
| 48 | `lemma` | [IsLinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/islinearset-ispropersemilinearset--18e28e666a761774ae7afce6.md) | 343 | `result-track:18e28e666a761774ae7afce6568cd74b9b30a14ae325c19c7ed8aa9afa55d9f6` |
| 49 | `theorem` | [IsSemilinearSet.isProperSemilinearSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/issemilinearset-ispropersemilinearset--b2aec82f76e074847601954c.md) | 392 | `result-track:b2aec82f76e074847601954c5115a061fefeed73937ee196015a45f9254c3dc3` |
| 50 | `theorem` | [Nat.isSemilinearSet_iff_ultimately_periodic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant6c14a74bc77c8ca030d04a0b12e4e03cb3957e5e85174d2b184364c7f9907e79.lean/declarations/nat-issemilinearset-iff-ultimately-periodic--8a6eae5185c6ae9dd8718ef8.md) | 402 | `result-track:8a6eae5185c6ae9dd8718ef8dc7fba3ab97b092599b8a48db3fabc3e0ddd9948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
