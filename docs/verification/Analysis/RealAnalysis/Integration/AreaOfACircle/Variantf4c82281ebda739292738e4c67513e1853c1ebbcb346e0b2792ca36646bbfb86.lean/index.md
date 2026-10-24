# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AreaOfACircle.Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f327f5c6e64088f39328b02b95905ebe4ac9c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f327f5c6e64088f39328b02b95905ebe4ac9c0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/declarations/disc--8a73b6595866f9613d71d140.md) | 56 | `declaration-track:8a73b6595866f9613d71d1402f0bc468318f74b13942664e379e01ca3c983a21` |
| 2 | `theorem` | [disc_eq_regionBetween](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/declarations/disc-eq-regionbetween--81d1f315cd243df221677eed.md) | 63 | `result-track:81d1f315cd243df221677eede7a3e041d3a9a87ee2d153fd71709e6947d3364c` |
| 3 | `theorem` | [measurableSet_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/declarations/measurableset-disc--1e02384d113c44642ee354cd.md) | 78 | `result-track:1e02384d113c44642ee354cd7ccac56b203db920206590470bb0df8ceb9b0017` |
| 4 | `theorem` | [area_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/declarations/area-disc--0d27e5e5a86ed622732ddc89.md) | 82 | `result-track:0d27e5e5a86ed622732ddc89e5d5b5137daf16941865c0071379851e4eeb5c42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
