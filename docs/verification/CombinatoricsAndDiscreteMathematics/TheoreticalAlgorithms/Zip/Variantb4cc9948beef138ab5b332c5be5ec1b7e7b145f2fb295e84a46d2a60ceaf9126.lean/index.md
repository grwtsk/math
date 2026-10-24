# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c123c9ef9b73b1bdf8a29b4bed5dc792aecd831",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c123c9ef9b73b1bdf8a29b4bed5dc792aecd831`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Forall2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zip_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zip-swap--cca163020650182775ca1249.md) | 33 | `result-track:cca163020650182775ca1249d74018038ee490d61b021dfdff88e195ab3b7a78` |
| 2 | `theorem` | [forall_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/forall-zipwith--7a9dcaed3ed13cabf313dd67.md) | 39 | `result-track:7a9dcaed3ed13cabf313dd671bb9f73720432ea2be2b03500b9230fa27cb7718` |
| 3 | `theorem` | [unzip_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/unzip-swap--9dc186e5472ab5960a47565f.md) | 47 | `result-track:9dc186e5472ab5960a47565ff6c8e51e9a26708e0a001a8472eb7cd6258482ed` |
| 4 | `theorem` | [zipWith_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith-congr--12dc1a42776898f59077351f.md) | 52 | `result-track:12dc1a42776898f59077351f8489bb23db7d17f81d35c9b0dc219e4ac5bf0601` |
| 5 | `theorem` | [zipWith_zipWith_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith-zipwith-left--bd4dd97104b277a8a0863261.md) | 58 | `result-track:bd4dd97104b277a8a0863261e32dffed58b47d61ba36e5685ccfaf8ac9d869d3` |
| 6 | `theorem` | [zipWith_zipWith_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith-zipwith-right--4226a5774b51c2636dec397a.md) | 66 | `result-track:4226a5774b51c2636dec397a620cb31558af6df47ec35cce78f326668e78a074` |
| 7 | `theorem` | [zipWith3_same_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith3-same-left--ef6c4a922317f2352527f0a8.md) | 75 | `result-track:ef6c4a922317f2352527f0a89080e649983aa109969d14c358f9604815018dbe` |
| 8 | `theorem` | [zipWith3_same_mid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith3-same-mid--f5a5f0532c138889f665f4df.md) | 82 | `result-track:f5a5f0532c138889f665f4df18efd4ee34fb20a2c7f8b894afbd264d5aa4ca4e` |
| 9 | `theorem` | [zipWith3_same_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/zipwith3-same-right--01f61c5d52c3fe22e717255b.md) | 89 | `result-track:01f61c5d52c3fe22e717255b9900d710fa17557a748ae1be621c178b2064cbd5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/instance--e4b740736223f6113ae8d29a.md) | 95 | `declaration-track:e4b740736223f6113ae8d29a0ef902608c9ffe956d158dd0d54f1eeeff6d62b6` |
| 11 | `theorem` | [length_revzip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/length-revzip--670c4628d478a91d8121b680.md) | 99 | `result-track:670c4628d478a91d8121b68010f4fefcf4d2b0604e831f48e1342c49a1370fba` |
| 12 | `theorem` | [unzip_revzip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/unzip-revzip--121ea90217c4fe7193b04672.md) | 103 | `result-track:121ea90217c4fe7193b04672131902fd41014c7e5491bf61a6bda62438236683` |
| 13 | `theorem` | [revzip_map_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/revzip-map-fst--b3c1d7e13cb073012bfa4469.md) | 107 | `result-track:b3c1d7e13cb073012bfa4469320cf4dd8a4d06a7a9736f8dcf6fa46798ee1d28` |
| 14 | `theorem` | [revzip_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/revzip-map-snd--7534461c19dba6ab95bfa7a4.md) | 111 | `result-track:7534461c19dba6ab95bfa7a420d10704364b756bba11317842be6456080a1e87` |
| 15 | `theorem` | [reverse_revzip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/reverse-revzip--85c2f06bbe02b91d25fbe120.md) | 114 | `result-track:85c2f06bbe02b91d25fbe1200d4a4975ac9ad054bd2b5fe67fc84c1d4c8fbf52` |
| 16 | `theorem` | [revzip_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/revzip-swap--c8f745e12f6d734b7d7c6e47.md) | 118 | `result-track:c8f745e12f6d734b7d7c6e477e8ac9669b4dbb87a0507875e130b52f70546b17` |
| 17 | `theorem` | [mem_zip_inits_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantb4cc9948beef138ab5b332c5be5ec1b7e7b145f2fb295e84a46d2a60ceaf9126.lean/declarations/mem-zip-inits-tails--199517b508c9723f41523be6.md) | 124 | `result-track:199517b508c9723f41523be6674314e1388cbb4400a911311eba5b645ad21a8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
