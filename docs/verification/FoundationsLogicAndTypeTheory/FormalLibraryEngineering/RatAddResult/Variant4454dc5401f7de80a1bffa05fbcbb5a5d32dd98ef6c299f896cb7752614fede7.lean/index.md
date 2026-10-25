# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatAddResult.Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed4e9fd379152a75d693c67e68912c000dd68559",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed4e9fd379152a75d693c67e68912c000dd68559`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [size_assignments_insertRatUnits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/size-assignments-insertratunits--bb6d62bd7a662e327152e309.md) | 30 | `result-track:bb6d62bd7a662e327152e309319d21f50016e1364833c6800548fc61bd69e659` |
| 2 | `theorem` | [insertRatUnits_postcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/insertratunits-postcondition--f279f716a3c9a23573d06244.md) | 36 | `result-track:f279f716a3c9a23573d06244c1eea5aa0b6d2a80653816ffc1a0a6c2a06d45a9` |
| 3 | `theorem` | [nodup_insertRatUnits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/nodup-insertratunits--95c502d0f0e3a279d9291b3b.md) | 54 | `result-track:95c502d0f0e3a279d9291b3b3d938a2c9f246840309398c529f6c82a7ceb3acf` |
| 4 | `theorem` | [clear_insertRat_base_case](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/clear-insertrat-base-case--fb28ecdcefc7c1b812efacf9.md) | 68 | `result-track:fb28ecdcefc7c1b812efacf9a85e74f890f57cb0f1119b5986932356e6d9b0dc` |
| 5 | `theorem` | [clear_insertRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/clear-insertrat--14d30450d36e08ee5387db4e.md) | 79 | `result-track:14d30450d36e08ee5387db4e01bc3f47022b36d0e889a62909f050c59b5a0693` |
| 6 | `theorem` | [formula_performRatCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/formula-performratcheck--7726e082ab4d5c744ad04f47.md) | 105 | `result-track:7726e082ab4d5c744ad04f47e9cb2a1118a9f521dd4869a3248acca391d9578e` |
| 7 | `theorem` | [performRatCheck_fold_formula_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/performratcheck-fold-formula-eq--69778ce91f14514782de1e82.md) | 127 | `result-track:69778ce91f14514782de1e82bc5c4cd91346015630d9fbb818055bf20adf3e57` |
| 8 | `theorem` | [ratAdd_result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RatAddResult/Variant4454dc5401f7de80a1bffa05fbcbb5a5d32dd98ef6c299f896cb7752614fede7.lean/declarations/ratadd-result--7fbe7cefa55b6ccdbe8da288.md) | 145 | `result-track:7fbe7cefa55b6ccdbe8da288728c717723f89e71f092be7b1c51f4da0544b9db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
