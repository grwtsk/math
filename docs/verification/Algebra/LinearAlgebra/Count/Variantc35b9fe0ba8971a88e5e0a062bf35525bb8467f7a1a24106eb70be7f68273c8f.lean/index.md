# Verification target: GRWTSK.Algebra.LinearAlgebra.Count.Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "add1c0e3c638688ee6ca25a2d7d6d53d2dc0772e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `add1c0e3c638688ee6ca25a2d7d6d53d2dc0772e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix.Encoding` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trueCount](../../../../../mathematics/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean/declarations/truecount--02d95ade784fe0174f5aa24e.md) | 17 | `declaration-track:02d95ade784fe0174f5aa24ef69ab3b80ea776c03c4d2037fe681b787c410aa2` |
| 2 | `theorem` | [trueCount_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean/declarations/truecount-nonneg--af33b312197498d5bd096b0f.md) | 22 | `result-track:af33b312197498d5bd096b0f2ff4b30207d3022297f7bc193174e9ea0fc6519f` |
| 3 | `theorem` | [trueCount_zeros](../../../../../mathematics/Algebra/LinearAlgebra/Count/Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f.lean/declarations/truecount-zeros--4f9bea3ec98ec25d71b27a63.md) | 27 | `result-track:4f9bea3ec98ec25d71b27a63a44adc9a42db9446228e1ce709a0590893bc0650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
