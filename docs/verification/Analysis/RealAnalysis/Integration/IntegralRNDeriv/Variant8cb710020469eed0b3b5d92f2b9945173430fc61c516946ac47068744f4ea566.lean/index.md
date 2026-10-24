# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralRNDeriv.Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b129e89a411f030194a5730fe605619a74d9887",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b129e89a411f030194a5730fe605619a74d9887`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Approximation` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.RadonNikodym` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Measure.integrable_toReal_rnDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/measure-integrable-toreal-rnderiv--f294cd4db6ae0dfb88e3d8a4.md) | 48 | `result-track:f294cd4db6ae0dfb88e3d8a4e2db0197f1ae8a79c58630d2a51cc64f3a596c5d` |
| 2 | `lemma` | [le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/le-integral-rnderiv-of-ac--e49d2e7ba626cb20a4e2cd9c.md) | 56 | `result-track:e49d2e7ba626cb20a4e2cd9cac8f90ecd00e4cf862e587a743cbc90b527924f5` |
| 3 | `lemma` | [mul_le_integral_rnDeriv_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/mul-le-integral-rnderiv-of-ac--59bd315f9400c907b4b119d4.md) | 71 | `result-track:59bd315f9400c907b4b119d4942c77424df8a5527a56935ea31e0549320e05b1` |
| 4 | `lemma` | [lintegral_rnDeriv_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/lintegral-rnderiv-compprod--3370829745dce0f49cabcdff.md) | 122 | `result-track:3370829745dce0f49cabcdffb1c8b979e7256d7ee783bf07386b0eb79546a937` |
| 5 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.apply_rnDeriv_ae_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/root-grwtsk-analysis-realanalysis-integration-measureintegrabletorealrnd--4a5e94291e8fc73bf4ab2820.md) | 137 | `result-track:4a5e94291e8fc73bf4ab28206ef713c155bd62b1c0e393179dff1a8d7ecd9bad` |
| 6 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.MeasureIntegrableToRealRnDeriv.Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.ConvexOn.integrable_apply_rnDeriv_of_integrable_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant8cb710020469eed0b3b5d92f2b9945173430fc61c516946ac47068744f4ea566.lean/declarations/root-grwtsk-analysis-realanalysis-integration-measureintegrabletorealrnd--78a922173bf7c4e9ae08934b.md) | 184 | `result-track:78a922173bf7c4e9ae08934b8c42a3fea36a292d197eedee4ecf191ce96bf895` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
