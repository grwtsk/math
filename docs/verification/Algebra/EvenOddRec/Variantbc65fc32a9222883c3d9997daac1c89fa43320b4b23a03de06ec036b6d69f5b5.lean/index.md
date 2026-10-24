# Verification target: GRWTSK.Algebra.EvenOddRec.Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679a7ff57f0977d3409ed6c8a6507cbe5822373d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679a7ff57f0977d3409ed6c8a6507cbe5822373d`.

Source path: `GRWTSK/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOddRec](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/declarations/evenoddrec--ae88e472fc3831cc18ec35dd.md) | 18 | `declaration-track:ae88e472fc3831cc18ec35dda8af4b7dc78fd65fbec90f7ed1d6fb6fcf46cab3` |
| 2 | `theorem` | [evenOddRec_zero](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/declarations/evenoddrec-zero--2bce5f369fb4fac526ad3167.md) | 25 | `result-track:2bce5f369fb4fac526ad3167732fb83e07608faaff757dc3513349072449b5c2` |
| 3 | `theorem` | [evenOddRec_even](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/declarations/evenoddrec-even--2aa881e040bf071074391d0a.md) | 30 | `result-track:2aa881e040bf071074391d0ad854f9a66f81336b7720dc2f074daa969d8c650f` |
| 4 | `theorem` | [evenOddRec_odd](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/declarations/evenoddrec-odd--c94b535078007fa88d170d35.md) | 37 | `result-track:c94b535078007fa88d170d35c2d0359a0a5abb05a0aabb50a3d4940bb82c047a` |
| 5 | `def` | [evenOddStrongRec](../../../../mathematics/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/declarations/evenoddstrongrec--589346abc81a52d5d0f87168.md) | 47 | `declaration-track:589346abc81a52d5d0f87168685a146eb3a5f41317121b56ff47839de5c4d4f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
