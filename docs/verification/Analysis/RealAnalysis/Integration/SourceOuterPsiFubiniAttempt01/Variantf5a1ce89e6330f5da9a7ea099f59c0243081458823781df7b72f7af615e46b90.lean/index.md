# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubiniAttempt01.Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d22f12413e000705f7644c2a6884a1559f0531c7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d22f12413e000705f7644c2a6884a1559f0531c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/finitedensity--edf17da736215433c47e1943.md) | 20 | `declaration-track:edf17da736215433c47e194363e893aff096955ed1eab913fb42f6390c1c56a0` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/threshold-order--a4b6e66ae461a3df567a0b71.md) | 25 | `result-track:a4b6e66ae461a3df567a0b71933e5d6ccc9aee59765956fb483ab6b47710c221` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/finitedensity-integrable--430ecbf04672b4fd5a6b13b7.md) | 29 | `result-track:430ecbf04672b4fd5a6b13b715f214eb5f0f47b6f68b410380c9d12b3afa3231` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/density-left-slice--f22c28e5b8cb73de1ff02edf.md) | 82 | `result-track:f22c28e5b8cb73de1ff02edf93db27c43814bb06a6353d3cc3d482464f3764fb` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/density-right-slice--65a08cdb878d77fc808da913.md) | 104 | `result-track:65a08cdb878d77fc808da9135fa9f18376ac8911fd4cacb11efad85b4df2a0a1` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variantf5a1ce89e6330f5da9a7ea099f59c0243081458823781df7b72f7af615e46b90.lean/declarations/actualfinitesecondreadout-outer-fubini--c85c9daf0ffee032350b8d99.md) | 130 | `result-track:c85c9daf0ffee032350b8d991ba3c13b9248619c48d996cddb2808a72b0859fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
