# Verification target: GRWTSK.Analysis.Complex.LoopIndexOperations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e32609ad214dfde1f519df64990feb83187836d5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LoopIndexOperations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e32609ad214dfde1f519df64990feb83187836d5`.

Source path: `GRWTSK/Analysis/Complex/LoopIndexOperations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LoopIndexOperations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ExponentialLoopIndex`](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialMap](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/exponentialmap--942e4c9a402512f8029f7b26.md) | 25 | `declaration-track:942e4c9a402512f8029f7b26b65852cb42b48322cf28dd883ee038657de62a2b` |
| 2 | `theorem` | [exponentialMap_closed](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/exponentialmap-closed--4c84adba93cd3824b096b989.md) | 29 | `result-track:4c84adba93cd3824b096b9892ae2203214b5d3a46f1e48410b2681826abcebc7` |
| 3 | `theorem` | [winding_exponentialMap](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/winding-exponentialmap--14aea772d7f80746458ad5f6.md) | 38 | `result-track:14aea772d7f80746458ad5f67fd235a77703461eb2ee341a6ab666902d8bf8e3` |
| 4 | `def` | [turnLift](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnlift--2fb4e5546fc57d74380bd210.md) | 45 | `declaration-track:2fb4e5546fc57d74380bd21058dad3a268ed9113c3dea2135596b9ed279d4669` |
| 5 | `theorem` | [turnLift_jump](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnlift-jump--8c69ee0ad5b2f9fdf9ffd28a.md) | 49 | `result-track:8c69ee0ad5b2f9fdf9ffd28ab5bc38e12dfc054b31af19fd9f45f08a406ed816` |
| 6 | `def` | [turnLoop](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnloop--363fb37af389302749ee9078.md) | 52 | `declaration-track:363fb37af389302749ee9078233ff527199f517fd17ca75fe8e3892994ab2e4a` |
| 7 | `theorem` | [turnLoop_closed](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnloop-closed--6ff76e48aacc5f525a037567.md) | 54 | `result-track:6ff76e48aacc5f525a037567ee3642c724cfa0896f4245c2bb99a8dac3da7740` |
| 8 | `theorem` | [winding_turnLoop](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/winding-turnloop--0ace8358260c2ffaf85ab38b.md) | 57 | `result-track:0ace8358260c2ffaf85ab38b44c5b6d987697deaae1e7a7b832759ebe9781ac0` |
| 9 | `theorem` | [turnLoop_zero](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnloop-zero--41a845dac2bf06c3a8ac241b.md) | 60 | `result-track:41a845dac2bf06c3a8ac241be0708f1fe66f0180f73285d6e0dde9e6a573c59f` |
| 10 | `theorem` | [turnLoop_one](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/turnloop-one--0ae9a21c4f751c7cf81bf84c.md) | 63 | `result-track:0ae9a21c4f751c7cf81bf84c23ab71a8912557b56977e0c90e846ba0f67946e0` |
| 11 | `theorem` | [endpoint_principal_logs_lose_turns](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/endpoint-principal-logs-lose-turns--407001b7d7e9bfb0088c99f6.md) | 67 | `result-track:407001b7d7e9bfb0088c99f6c296a643428fb52ca1aba4f435359f7433ed5cc0` |
| 12 | `theorem` | [no_closed_log_of_nonzero_turn](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/no-closed-log-of-nonzero-turn--de71c850f2f9fe0c42c10db3.md) | 71 | `result-track:de71c850f2f9fe0c42c10db3c0a4f08d2e3c60c3e7f05ed6923c4c15b358c18e` |
| 13 | `theorem` | [no_homotopy_between_distinct_turns](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/no-homotopy-between-distinct-turns--835eb6b2ab9e67cec3144db1.md) | 80 | `result-track:835eb6b2ab9e67cec3144db1c58d0e65f9662bd214e6c1c0441b73b2c2072838` |
| 14 | `def` | [reverseTime](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/reversetime--70b08421dbbca6fe02ccdc85.md) | 87 | `declaration-track:70b08421dbbca6fe02ccdc85c66702ea033443cc994efcf4d9ba1793a8a3fb76` |
| 15 | `theorem` | [reverseTime_zero](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/reversetime-zero--9f93364ac247b3ab5e245336.md) | 91 | `result-track:9f93364ac247b3ab5e2453362a06f61f1b244255b39287605448f9ccc544b638` |
| 16 | `theorem` | [reverseTime_one](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/reversetime-one--f973a382c93bf84ee8cd3286.md) | 92 | `result-track:f973a382c93bf84ee8cd32868c42d8ca7e4133a5ca41d1f001b0f6ae4b28dcff` |
| 17 | `def` | [reverseLoop](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/reverseloop--4c100fbb4d5b3b449f9716b2.md) | 94 | `declaration-track:4c100fbb4d5b3b449f9716b2c2315e001a055c42f9d7c196436066e6058d6f7d` |
| 18 | `theorem` | [reverseLoop_closed](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/reverseloop-closed--be8b16b40840fbca6d82f426.md) | 96 | `result-track:be8b16b40840fbca6d82f426bd316d616e32256dc3acf54472c2e300ea638801` |
| 19 | `theorem` | [winding_reverse](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/winding-reverse--8752f404cc1f5484a7fa8739.md) | 99 | `result-track:8752f404cc1f5484a7fa8739e6f37a3c0a2ac2bf3a6619b1acc989305234b0e9` |
| 20 | `theorem` | [winding_reparam](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/winding-reparam--b54502922726759a1f9303ba.md) | 110 | `result-track:b54502922726759a1f9303ba953db0e8ae9e5d1eb0a9204c1fa47a9b263f120b` |
| 21 | `def` | [productLoop](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/productloop--05761a104771650ac029f783.md) | 119 | `declaration-track:05761a104771650ac029f783c2eb12511eb2afbb4c72b3666ff902b334640af2` |
| 22 | `theorem` | [productLoop_closed](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/productloop-closed--31b9f68a39bc38a45c65df4b.md) | 124 | `result-track:31b9f68a39bc38a45c65df4b0f9bb4cbd2d40a4f90506c89e48f4b1fd10c372d` |
| 23 | `theorem` | [winding_product](../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/declarations/winding-product--6227892f8a105f23d48105da.md) | 132 | `result-track:6227892f8a105f23d48105da8d2e062962bb66b3b32e25ed161ee49c541e9276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
