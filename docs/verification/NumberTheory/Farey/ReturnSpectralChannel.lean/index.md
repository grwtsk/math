# Verification target: GRWTSK.NumberTheory.Farey.ReturnSpectralChannel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccb0637a5e4a93fe11af74b8904d3c9441142e5c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccb0637a5e4a93fe11af74b8904d3c9441142e5c`.

Source path: `GRWTSK/NumberTheory/Farey/ReturnSpectralChannel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ReturnSpectralChannel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.GroupSpectralChannel`](../../../../mathematics/NumberTheory/Farey/GroupSpectralChannel.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatR](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/matr--fe09cc7c4f6a247a0cf6c8f9.md) | 41 | `declaration-track:fe09cc7c4f6a247a0cf6c8f9eee9430b7fad870e9b6a8656244a7ef5eda029c7` |
| 2 | `def` | [returnWord](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnword--815b88e20a59404182d4b384.md) | 44 | `declaration-track:815b88e20a59404182d4b384af82640c48dbb9d5aad15f17591126074e442f22` |
| 3 | `theorem` | [farey_return_frame](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/farey-return-frame--64f7bae2bd4a2bf605231e48.md) | 47 | `result-track:64f7bae2bd4a2bf605231e487b9ab5715dc19b75de470dd791b6f5413ffe100e` |
| 4 | `theorem` | [returnWord_complex](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnword-complex--a8d2aa43bc95f41931ef41d6.md) | 53 | `result-track:a8d2aa43bc95f41931ef41d658d34714e8c4c1fea3cfc2b8a455882bc44b2989` |
| 5 | `def` | [returnMatrix](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnmatrix--161561ff0225727812cde77f.md) | 59 | `declaration-track:161561ff0225727812cde77ffc31202834fe42283f7c6b3b6f99e9f6e5f199a6` |
| 6 | `theorem` | [returnMatrix_eq](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnmatrix-eq--328b0a61c6a725698feb3fba.md) | 62 | `result-track:328b0a61c6a725698feb3fba8fa43fc18ebe65f906d3138c642fc3453992d9c3` |
| 7 | `theorem` | [returnMatrix_quadratic](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnmatrix-quadratic--854f74ae751fa34890b87d0d.md) | 69 | `result-track:854f74ae751fa34890b87d0de66bc0bf2c2fb0e151ac83f4940b31cd6721df43` |
| 8 | `theorem` | [sqrtFive_sq](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/sqrtfive-sq--18bc0bad856a8a8a4611efcd.md) | 77 | `result-track:18bc0bad856a8a8a4611efcd8676e1f10003770a078456582db7c4519ffc9645` |
| 9 | `theorem` | [sqrtFive_pos](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/sqrtfive-pos--ed15391ea2b361e7f619fc84.md) | 80 | `result-track:ed15391ea2b361e7f619fc849af83b2051fcde71f521fc63f090aac1ad867ba7` |
| 10 | `def` | [expandingEigenvalue](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingeigenvalue--c1604fab10930e126edd11b2.md) | 84 | `declaration-track:c1604fab10930e126edd11b2f3e618adffb3b56382835a008ace301e0f668c6c` |
| 11 | `def` | [contractingEigenvalue](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/contractingeigenvalue--966b2592d52f1c7655d4bf98.md) | 87 | `declaration-track:966b2592d52f1c7655d4bf98f27dde3996e126c7b9c6c9e2795c1391c45d51c6` |
| 12 | `theorem` | [return_eigenvalue_sum](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/return-eigenvalue-sum--af83b855db6f3c38e489bdaa.md) | 89 | `result-track:af83b855db6f3c38e489bdaa9948b6f8d518295eabedffe33dda7b69192f4658` |
| 13 | `theorem` | [return_eigenvalue_product](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/return-eigenvalue-product--85866717885e9a05fc8bd765.md) | 94 | `result-track:85866717885e9a05fc8bd765d5e973d4f23e4f55e16e1931f64297f43729a8b7` |
| 14 | `theorem` | [return_eigenvalues_distinct](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/return-eigenvalues-distinct--311b5efc52b76ddb8b00c3d7.md) | 99 | `result-track:311b5efc52b76ddb8b00c3d77c9b1af54e59f4d6b58b789157ea5c944335a5da` |
| 15 | `theorem` | [expandingEigenvalue_gt_one](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingeigenvalue-gt-one--f738b06488faadd0efe596e3.md) | 105 | `result-track:f738b06488faadd0efe596e3daff9178245e07e0702ec1bbbf73cbc6f8508f6b` |
| 16 | `def` | [returnProjector](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnprojector--a100be72ff67b9dd9201dbf7.md) | 112 | `declaration-track:a100be72ff67b9dd9201dbf78459bf68e145844f34e98a275452d55268b987d0` |
| 17 | `theorem` | [returnProjector_idempotent](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnprojector-idempotent--cfacdf54afed91fc1a0ed450.md) | 117 | `result-track:cfacdf54afed91fc1a0ed45083376e0d7af605f48e7858135c244d34144ac123` |
| 18 | `theorem` | [returnProjector_eigen](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnprojector-eigen--cdceb1d1e1d92df12db81353.md) | 128 | `result-track:cdceb1d1e1d92df12db813539cfd3481ef3e257274cb8decb385e4d359315666` |
| 19 | `theorem` | [returnProjector_commutes](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnprojector-commutes--12442b16a6f1bd5c15ae3479.md) | 143 | `result-track:12442b16a6f1bd5c15ae3479b6f6109178b98d2b51b03f181267745c636cb99c` |
| 20 | `theorem` | [returnProjector_proper](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/returnprojector-proper--77a3fadcfff15c77d105b833.md) | 155 | `result-track:77a3fadcfff15c77d105b833c053a6a167c347ba8f0eb264e79d8bdb1bee9927` |
| 21 | `def` | [expandingProjector](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector--28ac714e9afff89050835b35.md) | 171 | `declaration-track:28ac714e9afff89050835b35227b59998296b93f58ec03580ebbaeb457f0d4e0` |
| 22 | `theorem` | [expandingProjector_idempotent](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector-idempotent--15af80c95faf2f542df7cf38.md) | 174 | `result-track:15af80c95faf2f542df7cf38c1d79be5f81fdd6cc564ebf70ce9b2601b203a24` |
| 23 | `theorem` | [expandingProjector_proper](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector-proper--9cc791276c6f6b470832ec71.md) | 178 | `result-track:9cc791276c6f6b470832ec710a5dc364f274ee8b71605dec080eb47166d8fa70` |
| 24 | `theorem` | [expandingProjector_commutes](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector-commutes--e88ae359e1998932f5209e17.md) | 182 | `result-track:e88ae359e1998932f5209e176358a58d3aac292e188956f59f8856c8ce8e7358` |
| 25 | `theorem` | [expandingProjector_eigen](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector-eigen--e319975ef3c8b5baab36aee0.md) | 188 | `result-track:e319975ef3c8b5baab36aee04b3225e95346a449f5d12baa67ee5c64d5a37e11` |
| 26 | `theorem` | [expandingProjector_iterate](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/expandingprojector-iterate--d80150b67e43d0aa0044c0fc.md) | 197 | `result-track:d80150b67e43d0aa0044c0fc47dc90e7e4cb4486e720df82d9df582318000ab1` |
| 27 | `theorem` | [exists_proper_return_channel](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/declarations/exists-proper-return-channel--3d627a6b4fcdb60c8acd329b.md) | 222 | `result-track:3d627a6b4fcdb60c8acd329b4295ef8890fae26026f0233e0028dd1530f10684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
