# Verification target: GRWTSK.Analysis.Operator.UnboundedPortSymmetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561a0cd1f65f512ce34effe94e1ccbe738e2e010",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/UnboundedPortSymmetric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561a0cd1f65f512ce34effe94e1ccbe738e2e010`.

Source path: `GRWTSK/Analysis/Operator/UnboundedPortSymmetric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/UnboundedPortSymmetric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Operator.UnboundedPortEquivalence`](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmetric](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/declarations/issymmetric--932172addca83e3ad9bd05e2.md) | 17 | `declaration-track:932172addca83e3ad9bd05e23e3d8c36b8b4dc425d4090f20e1f2a09b89c37db` |
| 2 | `structure` | [OrthogonalFramedEquivalence](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/declarations/orthogonalframedequivalence--02ca6219432590c037173352.md) | 24 | `declaration-track:02ca6219432590c037173352664569ff828b9a16caa57c709630ced135290315` |
| 3 | `def` | [symm](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/declarations/symm--a4361e57a820d5b432519d77.md) | 36 | `declaration-track:a4361e57a820d5b432519d774ce1b9a497a67c69e2cb073c015a1df832d174b2` |
| 4 | `theorem` | [symmetric_forward](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/declarations/symmetric-forward--d5009f1ac01e9171450ad563.md) | 46 | `result-track:d5009f1ac01e9171450ad56301a8b1650fa6f4cffa0ac642d834fe5c9dc264fd` |
| 5 | `theorem` | [symmetric_iff](../../../../mathematics/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/declarations/symmetric-iff--9478f7ccb38f24df2b9cf5f9.md) | 79 | `result-track:9478f7ccb38f24df2b9cf5f9ff2817ca13a74c413f804f6e6942fcf7f9142869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
