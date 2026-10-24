# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a5123228138d998e953e0afee4038e4d973ce6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a5123228138d998e953e0afee4038e4d973ce6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bracket'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket--198dc3483e6a6c37992230a6.md) | 49 | `declaration-track:198dc3483e6a6c37992230a6eebdceb6135c012dd24cda55c1c4828cdecf5fd8` |
| 2 | `theorem` | [bracket'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket-tmul--7a10cfe0b6fcdc3fbf62dd2b.md) | 56 | `result-track:7a10cfe0b6fcdc3fbf62dd2bf0aa07f0347d5b89f2e465bdc3b8b6a76119e922` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/instance--4751e4197f109bee0f5c7bbc.md) | 59 | `declaration-track:4751e4197f109bee0f5c7bbcfea86915295046617c6bd2730041da84473cecc6` |
| 4 | `theorem` | [bracket_def](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket-def--85c7538fc915f44e285f9472.md) | 61 | `result-track:85c7538fc915f44e285f947274aac3f370deb4ef701e212a38c16047df5ea429` |
| 5 | `theorem` | [bracket_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket-tmul--f95209ef69ab99f09ea0523f.md) | 65 | `result-track:f95209ef69ab99f09ea0523f25bfbe169016f4bf8c6a9950da4bc6da6abc56a6` |
| 6 | `theorem` | [bracket_lie_self](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket-lie-self--bbf6e057d2c7fd4668dd0165.md) | 68 | `result-track:bbf6e057d2c7fd4668dd0165d2686e3ab832af7b3d9db957a9218b2eea3d4981` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/bracket-leibniz-lie--5f65bf1523be800b8a4576b9.md) | 90 | `result-track:5f65bf1523be800b8a4576b93a756596ed006ed3242037697712d7217ff0ce7f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/instance--c16c6d3a38a91ccae550364a.md) | 114 | `declaration-track:c16c6d3a38a91ccae550364ace83acb7d018de5cd74067a1a47a37cbb6da9f4f` |
| 9 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/liealgebra--0dc4efcc2839a9f2090629a7.md) | 120 | `declaration-track:0dc4efcc2839a9f2090629a75d965295128437f7585464c6fdf0b1552709e17b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/instance--b78322541f4fb9436b303814.md) | 131 | `declaration-track:b78322541f4fb9436b3038145808f784641bf25626814f1e01f4b9e3d3bbb824` |
| 11 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant2dcc492c4311f345621c246d70af9e963e2b41ccc89e3900f690304df9011f87.lean/declarations/liealgebra--2919d87ed0a0e1e0fad9b099.md) | 136 | `declaration-track:2919d87ed0a0e1e0fad9b0990568b4ad7a48a728521fe3ab658db21f4db7ba3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
