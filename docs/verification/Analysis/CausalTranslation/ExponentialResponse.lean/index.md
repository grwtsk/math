# Verification target: GRWTSK.Analysis.CausalTranslation.ExponentialResponse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a823d729857aba89add64c5281fae8a28e25341f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CausalTranslation/ExponentialResponse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/index.md) · [Full source](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a823d729857aba89add64c5281fae8a28e25341f`.

Source path: `GRWTSK/Analysis/CausalTranslation/ExponentialResponse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CausalTranslation/ExponentialResponse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/causalshift--c787b2c8d776f2d947923e02.md) | 13 | `declaration-track:c787b2c8d776f2d947923e02ce13b17646773ed7e05e8b50f5067a5dd6cf6df1` |
| 2 | `def` | [baseWave](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/basewave--b990d0fbd070d22a83c9f310.md) | 16 | `declaration-track:b990d0fbd070d22a83c9f3101bf44ca6154e7d754a9b815da41cacf7d65b4032` |
| 3 | `def` | [atom](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/atom--499f20bf66daf1a0693738e9.md) | 19 | `declaration-track:499f20bf66daf1a0693738e9784a036306cabc8b123f284827e0a355144300cd` |
| 4 | `theorem` | [causalShift_comp](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/causalshift-comp--e5d4481e71415115da328b5e.md) | 22 | `result-track:e5d4481e71415115da328b5e8678857b8720ed3c7f187313f3b2bc0fdeabfed0` |
| 5 | `theorem` | [causalShift_comm](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/causalshift-comm--1f23aa091d2c9c69ef775b70.md) | 36 | `result-track:1f23aa091d2c9c69ef775b70b25d9c98c4d89b3ab460967968faeabd06066681` |
| 6 | `theorem` | [exp_negative_half_log](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/exp-negative-half-log--182701673a637796a1c9295a.md) | 40 | `result-track:182701673a637796a1c9295a216ca7be19d98bbadb66df2690aee1896e5f4b9e` |
| 7 | `theorem` | [atom_eq_scaled_shift](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/atom-eq-scaled-shift--28bf6ca3c679a1793b637845.md) | 46 | `result-track:28bf6ca3c679a1793b637845c6530cf0fcea966b432e8af6c6c590b9fd1859f8` |
| 8 | `theorem` | [atom_entry_zero](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/atom-entry-zero--55efe60dae4bee36ff1b6e9a.md) | 59 | `result-track:55efe60dae4bee36ff1b6e9aa03a5557250e09208878ea65adef6fd9cd2ba029` |
| 9 | `theorem` | [signed_quadratic_expansion](../../../../mathematics/Analysis/CausalTranslation/ExponentialResponse.lean/declarations/signed-quadratic-expansion--796239f979eca6983390258f.md) | 63 | `result-track:796239f979eca6983390258f7652a4e4eb9bae0fdf239840ce4e095cd59960c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
