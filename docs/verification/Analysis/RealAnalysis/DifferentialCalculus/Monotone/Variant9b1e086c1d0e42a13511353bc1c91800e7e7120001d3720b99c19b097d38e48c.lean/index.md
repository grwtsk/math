# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Monotone.Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f979ab467d749687f0fb6f5d21e71d233e6e6b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f979ab467d749687f0fb6f5d21e71d233e6e6b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.OneDim` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Extension` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_apply_add_mul_sq_div_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/tendsto-apply-add-mul-sq-div-sub--a09639d59635a3ca8045a397.md) | 50 | `result-track:a09639d59635a3ca8045a3974a934ebb8b9ed5bf97021f0f5a86913ca8abbc4c` |
| 2 | `theorem` | [StieltjesFunction.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/stieltjesfunction-ae-hasderivat--13c566578b9b3b3d869cafe0.md) | 72 | `result-track:13c566578b9b3b3d869cafe09053334b08e37466b60432b7687768cf352e28e7` |
| 3 | `theorem` | [Monotone.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/monotone-ae-hasderivat--30eee84d2b3cec70b0e65471.md) | 138 | `result-track:30eee84d2b3cec70b0e65471c37a9f668b97a265948329b90fd7b7e439a4296b` |
| 4 | `theorem` | [Monotone.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/monotone-ae-differentiableat--242d76326dac294afd4b598a.md) | 214 | `result-track:242d76326dac294afd4b598a77e7a3c2bd383f71b82888034ba235fa163a319e` |
| 5 | `theorem` | [MonotoneOn.ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/monotoneon-ae-differentiablewithinat-of-mem--70fad278790608e1dfff85f5.md) | 222 | `result-track:70fad278790608e1dfff85f571fa54eaa0b430afe2645aafb07d438ed1f44195` |
| 6 | `theorem` | [MonotoneOn.ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant9b1e086c1d0e42a13511353bc1c91800e7e7120001d3720b99c19b097d38e48c.lean/declarations/monotoneon-ae-differentiablewithinat--1c3afc5fd3760ab690eab2d5.md) | 244 | `result-track:1c3afc5fd3760ab690eab2d55600a11f34138a7feda70830b19d636b5d53d89d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
