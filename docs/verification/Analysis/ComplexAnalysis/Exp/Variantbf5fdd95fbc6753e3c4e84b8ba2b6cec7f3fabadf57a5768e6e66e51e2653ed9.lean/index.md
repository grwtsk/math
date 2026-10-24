# Verification target: GRWTSK.Analysis.ComplexAnalysis.Exp.Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46bd0ff6338af2256b55d95076d4af24596342b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46bd0ff6338af2256b55d95076d4af24596342b`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Periodic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Function.Periodic.im_invQParam_pos_of_norm_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/declarations/function-periodic-im-invqparam-pos-of-norm-lt-one--01a8418414e0be118d88adab.md) | 21 | `result-track:01a8418414e0be118d88adabae16da0fe60252a9ca014bdf46949c301d8e1e28` |
| 2 | `lemma` | [Function.Periodic.norm_qParam_le_of_one_half_le_im](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/declarations/function-periodic-norm-qparam-le-of-one-half-le-im--89c7343dcf8645f8d73b6025.md) | 28 | `result-track:89c7343dcf8645f8d73b60250435e7df45c08e0ae70f39f8e385bcf28fd95bed` |
| 3 | `theorem` | [UpperHalfPlane.norm_qParam_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/declarations/upperhalfplane-norm-qparam-lt-one--f69b349ffdfb01b9b5d5bfac.md) | 34 | `result-track:f69b349ffdfb01b9b5d5bfac48621fd50517b6699aaed8c28091afe688e0c40f` |
| 4 | `theorem` | [UpperHalfPlane.norm_exp_two_pi_I_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variantbf5fdd95fbc6753e3c4e84b8ba2b6cec7f3fabadf57a5768e6e66e51e2653ed9.lean/declarations/upperhalfplane-norm-exp-two-pi-i-lt-one--16b178a09dd0d6dc0b7c8cfc.md) | 39 | `result-track:16b178a09dd0d6dc0b7c8cfc001c889b9c4d389a6b0673f165c128fbb724566b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
