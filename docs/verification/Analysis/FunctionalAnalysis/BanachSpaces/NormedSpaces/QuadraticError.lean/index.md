# Verification target: GRWTSK.Analysis.NormedSpace.QuadraticError

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19dfb6ed9f7d56f10e9045a4fab87b13eee3ef22",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NormedSpace/QuadraticError.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19dfb6ed9f7d56f10e9045a4fab87b13eee3ef22`.

Source path: `GRWTSK/Analysis/NormedSpace/QuadraticError.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NormedSpace/QuadraticError.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reconstruction_energy_error](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/declarations/reconstruction-energy-error--8afaa05e81e798e1a9bc4322.md) | 13 | `result-track:8afaa05e81e798e1a9bc4322b617a5cba82517b0fd8ac367fb0c83625e43b8eb` |
| 2 | `theorem` | [reconstructed_cross_error](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/QuadraticError.lean/declarations/reconstructed-cross-error--2598cd1f2431efa98ab1de59.md) | 26 | `result-track:2598cd1f2431efa98ab1de597aa715a3e9d6759120e8349d1ec65717eef3000c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
