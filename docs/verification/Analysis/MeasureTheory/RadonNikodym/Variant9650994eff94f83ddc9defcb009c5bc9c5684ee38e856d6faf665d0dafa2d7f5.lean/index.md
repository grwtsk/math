# Verification target: GRWTSK.Analysis.MeasureTheory.RadonNikodym.Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84449d4b65fe6a5bdc0e182d984504f6eb26ce29",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84449d4b65fe6a5bdc0e182d984504f6eb26ce29`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.Lebesgue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean/declarations/withdensity-rnderiv-eq--48e079a297725c820cf870f1.md) | 25 | `result-track:48e079a297725c820cf870f17082d3584c64b3db9781abc2bcd89508fa5ae40d` |
| 2 | `theorem` | [absolutelyContinuous_iff_withDensityᵥ_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean/declarations/absolutelycontinuous-iff-withdensity-rnderiv-eq--7d896b365d3dae8f26bb1333.md) | 44 | `result-track:7d896b365d3dae8f26bb13333d8931b6a6951ea8c4de3542e564243e8f4794bb` |
| 3 | `theorem` | [withDensityᵥ_rnDeriv_smul](../../../../../mathematics/Analysis/MeasureTheory/RadonNikodym/Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5.lean/declarations/withdensity-rnderiv-smul--071bbc152eb050f05818a447.md) | 50 | `result-track:071bbc152eb050f05818a4479b7be627905e68e4970c656a77dc1601d053b6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
