# Verification target: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e95cfd4b1d2b7e6c65367aa4fb3c198d9667c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/JacobiTransfer/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e95cfd4b1d2b7e6c65367aa4fb3c198d9667c0`.

Source path: `GRWTSK/LinearAlgebra/JacobiTransfer/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/JacobiTransfer/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_raw_ratio](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/declarations/use-raw-ratio--c4c3f7a53b4ffb0b8b239d57.md) | 5 | `result-track:c4c3f7a53b4ffb0b8b239d57391407a87dffabd732f3690c6ae8623194e5dd19` |
| 2 | `theorem` | [use_weighted_recurrence](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/declarations/use-weighted-recurrence--73f852d435f766104fde1e72.md) | 6 | `result-track:73f852d435f766104fde1e72b2a1b90fb17cd8cd32a09f73f43a0ebef0699079` |
| 3 | `theorem` | [use_weighted_determinant](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/declarations/use-weighted-determinant--6e54bcb3006fbfcc8b866902.md) | 7 | `result-track:6e54bcb3006fbfcc8b866902d1f56c51ee853460d7052869b5c629d87dedaf2b` |
| 4 | `elab` | [(anonymous)](../../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Checks/Audit__SourceOccurrence95bbb308099cddc05b75efcd.lean/declarations/elab--e7b7c6877424e7e9f4890b80.md) | 9 | `declaration-track:e7b7c6877424e7e9f4890b8059c200f5b448426e574c5a47b2e75236cb21b1a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
