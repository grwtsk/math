# Verification target: GRWTSK.Analysis.Inequalities.ResidualGrowthComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3349f8a9ac51c0a9a32aa137794d40e15e33ae",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3349f8a9ac51c0a9a32aa137794d40e15e33ae`.

Source path: `GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/ResidualGrowthComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Positivity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.CenteredCubicMoment`](../../../../mathematics/Analysis/Inequalities/CenteredCubicMoment.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sharp_five_ninths_identity](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/declarations/sharp-five-ninths-identity--7483154b35c16beed89d25c3.md) | 16 | `result-track:7483154b35c16beed89d25c36f99e882d8107fde24e8b6b7003204e305e36b88` |
| 2 | `theorem` | [retained_spectrum_comparison](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/declarations/retained-spectrum-comparison--ac14f98087414bb561db37d7.md) | 20 | `result-track:ac14f98087414bb561db37d70d546a9c3e55c710a3c7fdb0872a87a7679a1a87` |
| 3 | `theorem` | [normalized_comparison](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/declarations/normalized-comparison--a7b2f1863fd73e1820d9a078.md) | 48 | `result-track:a7b2f1863fd73e1820d9a07874372bb76823a2686c98e2ebd66fe917bae29d07` |
| 4 | `theorem` | [relative_le_of_sixth](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/declarations/relative-le-of-sixth--ff290302db3d7d09b5927f19.md) | 62 | `result-track:ff290302db3d7d09b5927f199ab039c142956c573cd80230d7387b74536b4271` |
| 5 | `theorem` | [residual_one_add_bound](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/declarations/residual-one-add-bound--2b9785055599633e3791445c.md) | 74 | `result-track:2b9785055599633e3791445c865f62fc347e59be1c2eaddbdb267bce2ee5f133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
