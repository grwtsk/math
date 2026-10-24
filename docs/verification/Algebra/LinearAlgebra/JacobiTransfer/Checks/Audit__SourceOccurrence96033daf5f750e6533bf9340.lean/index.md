# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b54428ed9e1602000ce3c458036281c8c6d7955",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b54428ed9e1602000ce3c458036281c8c6d7955`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.JacobiTransfer`](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_raw_ratio](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/declarations/use-raw-ratio--bbb9886d07f2687b786719b4.md) | 5 | `result-track:bbb9886d07f2687b786719b44ab615fe5eb437654bb30e7f50e94732ed17369b` |
| 2 | `theorem` | [use_weighted_recurrence](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/declarations/use-weighted-recurrence--037258265bbd16e4f371cb4b.md) | 6 | `result-track:037258265bbd16e4f371cb4ba7a66c739c7b8fcab6e97491d1fbadd6798ee39c` |
| 3 | `theorem` | [use_weighted_determinant](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/declarations/use-weighted-determinant--266a5c643a80dd1b2bbb8285.md) | 7 | `result-track:266a5c643a80dd1b2bbb8285660b6af39471f82a2b6062167b1aa2a879755e53` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence96033daf5f750e6533bf9340.lean/declarations/elab--5009da9684c27805b27e0d99.md) | 9 | `declaration-track:5009da9684c27805b27e0d995ae83098c54751f687ff98d2f6a3d1fbb79df507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
