# Verification target: GRWTSK.Analysis.Complex.DigammaShift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f905518ff4bc0c75f0bf6c6c853ce5a01c977c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/DigammaShift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f905518ff4bc0c75f0bf6c6c853ce5a01c977c0`.

Source path: `GRWTSK/Analysis/Complex/DigammaShift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/DigammaShift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ne_neg_nat_of_re_pos](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/declarations/ne-neg-nat-of-re-pos--e9ae09692c3323f136989466.md) | 26 | `result-track:e9ae09692c3323f1369894666712b7528a22ca50596a70b026524d17a1bfb972` |
| 2 | `theorem` | [digamma_add_nat](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/declarations/digamma-add-nat--ffa46784d51bc04dee134d1d.md) | 33 | `result-track:ffa46784d51bc04dee134d1d11e492e6dffbc537f21934e8537b1326a2f8a2ab` |
| 3 | `theorem` | [norm_shift_inv_le_half](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/declarations/norm-shift-inv-le-half--f77918f7655fb42fe89bb16b.md) | 47 | `result-track:f77918f7655fb42fe89bb16b6ef9d20ab08fecf526dd30dacdc525ecd022c2d0` |
| 4 | `theorem` | [norm_reciprocal_sum_le](../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/declarations/norm-reciprocal-sum-le--a9000f71d1bff6fa633b0f5d.md) | 57 | `result-track:a9000f71d1bff6fa633b0f5d07eff4cada74d9136df67740c8fa3930ed6b0ad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
