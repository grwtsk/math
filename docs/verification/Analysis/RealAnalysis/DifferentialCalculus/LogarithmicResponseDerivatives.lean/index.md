# Verification target: GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1460687ec9d8df93a0d9a42fafc2fa7eac4024b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/LogarithmicResponseDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1460687ec9d8df93a0d9a42fafc2fa7eac4024b`.

Source path: `GRWTSK/Analysis/Calculus/LogarithmicResponseDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/LogarithmicResponseDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [atom_smooth_branch_derivative](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/atom-smooth-branch-derivative--571413448b83d7f82ebf96e5.md) | 15 | `result-track:571413448b83d7f82ebf96e536f5a4b2d9a90b6932c66c083fa68d60bd931c2f` |
| 2 | `theorem` | [atom_right_derivative_at_entry](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/atom-right-derivative-at-entry--6117a1746e7a5c3d9f0e4316.md) | 24 | `result-track:6117a1746e7a5c3d9f0e4316b05c940419146250fa71a49eed869077eaba6d81` |
| 3 | `theorem` | [atom_left_derivative_at_entry](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/atom-left-derivative-at-entry--37614ce8ea8953d2b9776595.md) | 36 | `result-track:37614ce8ea8953d2b97765959ba9e539bf860683744136d6c7c6ef32463c2f48` |
| 4 | `theorem` | [atom_derivative_jump](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/atom-derivative-jump--d3233fc3f0c849962876f8ce.md) | 49 | `result-track:d3233fc3f0c849962876f8cee1d863b2de3e7195c2696a02511fb704cee2f9d1` |
| 5 | `theorem` | [signed_atom_derivative_jump](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/signed-atom-derivative-jump--5007eb25d96600fa5b30526a.md) | 57 | `result-track:5007eb25d96600fa5b30526a15b9c746fa01e09755960c59151f78090459cd09` |
| 6 | `theorem` | [atom_not_differentiable_at_entry](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicResponseDerivatives.lean/declarations/atom-not-differentiable-at-entry--9775d683db4ebdea4319b477.md) | 70 | `result-track:9775d683db4ebdea4319b4774ec4e5a60a0d94a74f01b88ebeb3ed3a96088c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
