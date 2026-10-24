# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.S3.Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0f42d9539309f32ee0c582f667f91c7d869913c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0f42d9539309f32ee0c582f667f91c7d869913c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Upload.Dest` — import line 12; external provider; requires a separately pinned dependency.
- `Cache.Upload.Curl` — import line 13; external provider; requires a separately pinned dependency.
- `Cache.Upload.Rclone` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [s3UploadDestFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3uploaddestfrom--1cb544e0b276553afca658c5.md) | 45 | `declaration-track:1cb544e0b276553afca658c52951555c3c81e8147a67c6972ee1a2af4e6c747b` |
| 2 | `structure` | [S3Credentials](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3credentials--e73bece3e9c4dd04f89275fe.md) | 60 | `declaration-track:e73bece3e9c4dd04f89275fe852f30f7fa438500a44d2d0c1af20792fe659a52` |
| 3 | `def` | [s3AuthFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3authfrom--04a585b0369f878c76419b72.md) | 75 | `declaration-track:04a585b0369f878c76419b72f42ced505f04b064c1bdd6cfdd1b4da9650939c1` |
| 4 | `def` | [getS3Auth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/gets3auth--72fa43482ba50c1b6c993319.md) | 89 | `declaration-track:72fa43482ba50c1b6c993319d0b3764977d580493a83a7aa189358f51fe87bbd` |
| 5 | `def` | [s3RegionFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3regionfrom--399ed78877a10a076ffd6b86.md) | 102 | `declaration-track:399ed78877a10a076ffd6b86f77d89d491ebee770c706c780cc7bbaffed46b0e` |
| 6 | `def` | [getS3Region](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/gets3region--e2b7990431bf7d36b96ac917.md) | 110 | `declaration-track:e2b7990431bf7d36b96ac9172ea82d59352b1b6e6350e6a28e643880d8aa93e3` |
| 7 | `def` | [s3CurlArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3curlargs--715d312e3d00e3774f1d65d3.md) | 122 | `declaration-track:715d312e3d00e3774f1d65d381fa73f4af7ad65046b05bfc41e534644dc8dec6` |
| 8 | `def` | [s3EndpointSplit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3endpointsplit--ec990cdf0c230429c7055a93.md) | 135 | `declaration-track:ec990cdf0c230429c7055a93f4450a34b6b316a29a0c7a4c9bb885905bab93ea` |
| 9 | `def` | [rcloneEnv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/rcloneenv--f531fd2004ec7263e1c6b315.md) | 158 | `declaration-track:f531fd2004ec7263e1c6b31520fd5531ff5e20da6b0c777be410b8070d717056` |
| 10 | `inductive` | [S3UploadTool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3uploadtool--d123df47834b116cf5ace51e.md) | 169 | `declaration-track:d123df47834b116cf5ace51e4953dc0a0e091019b26bb6e4b1d090e3db070dcd` |
| 11 | `def` | [s3UploadToolFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3uploadtoolfrom--b43e4e2362496996479dc8c4.md) | 181 | `declaration-track:b43e4e2362496996479dc8c47674508e620d1dbaceae12c6866dacc0259af834` |
| 12 | `def` | [s3PutStaged](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/S3/Variantf3f4acdd545965ea1ae45cf50bf1a445560c1eada6824698fbe0d04af073d076.lean/declarations/s3putstaged--9e28d69b06edbf11be49b578.md) | 191 | `declaration-track:9e28d69b06edbf11be49b57869c72119a6227594e38d7da0988ed690002401ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
