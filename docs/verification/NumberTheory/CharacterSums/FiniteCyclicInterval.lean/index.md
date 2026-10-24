# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicInterval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96930379e6ff23ebff52da0230b72ab22ad95d43",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96930379e6ff23ebff52da0230b72ab22ad95d43`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicInterval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stdAddChar_neg_nat_succ_mul](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/declarations/stdaddchar-neg-nat-succ-mul--cb755ad0fb010839c4e129b7.md) | 28 | `result-track:cb755ad0fb010839c4e129b7fd14e1a82c2be1558fef09d68aa73851135115d7` |
| 2 | `theorem` | [stdAddChar_neg_Ico_mul](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/declarations/stdaddchar-neg-ico-mul--d624fb303c2606924689fb7b.md) | 38 | `result-track:d624fb303c2606924689fb7be4d9102b45718fa1a9512d2541a5d2b7591bc571` |
| 3 | `theorem` | [norm_sum_stdAddChar_neg_Ico_le](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/declarations/norm-sum-stdaddchar-neg-ico-le--6b20a9d9fa13efd9c68f7b3c.md) | 58 | `result-track:6b20a9d9fa13efd9c68f7b3cb389a29445df182dc92d49cc138dfdb9a4f28d9c` |
| 4 | `theorem` | [sum_stdAddChar_neg_Ico_zero](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/declarations/sum-stdaddchar-neg-ico-zero--8d2309e4497a21c782b20fa6.md) | 106 | `result-track:8d2309e4497a21c782b20fa65866ef2b79ae82a5bbfa9b8c7aa3f14fd1dbd85e` |
| 5 | `theorem` | [stdAddChar_phase_matched_weights](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/declarations/stdaddchar-phase-matched-weights--cf94ed62e07bdfa2cb484f96.md) | 114 | `result-track:cf94ed62e07bdfa2cb484f966c1e36e598f1b42a362cd05a7ed7d70e6a3d7855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
