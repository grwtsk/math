# Verification target: GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7`.

Source path: `GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/DilationResponseSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../mathematics/Analysis/InnerProductSpace/DilationGram.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [native_touching_diagonal_zero](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/declarations/native-touching-diagonal-zero--fbcc8d032b3faac5b333c0d8.md) | 24 | `result-track:fbcc8d032b3faac5b333c0d83bc1065646b44005c6cd04959ee7cbe9d564ca6c` |
| 2 | `theorem` | [touching_atom_in_inventory](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/declarations/touching-atom-in-inventory--4c4bcdb20915487a31b5c362.md) | 42 | `result-track:4c4bcdb20915487a31b5c3623b0f53885c74b3abd134b3d7de1e574f51c6c7cf` |
| 3 | `theorem` | [native_touching_ne_prescribed](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/declarations/native-touching-ne-prescribed--325653b70bc3ff450beeb7e8.md) | 46 | `result-track:325653b70bc3ff450beeb7e82663445f7663c07c925edd9c5e3a81cd1ba05423` |
| 4 | `theorem` | [positive_horizon_obstruction](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/declarations/positive-horizon-obstruction--f91c8cadff7de1080765accc.md) | 52 | `result-track:f91c8cadff7de1080765accc783ea4aeba9a9ed47ef1a807ef88c3054a337834` |
| 5 | `theorem` | [prescribed_horizon_obstruction](../../../../mathematics/Analysis/InnerProductSpace/DilationResponseSeparation.lean/declarations/prescribed-horizon-obstruction--09f8778a08f6111206551d6a.md) | 61 | `result-track:09f8778a08f6111206551d6abd1729150402e52ef877ba12b0484afe87e32551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
