# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMomentsAudit.Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ce08f4e5807a9ab314e6ea2f67aa72afee5a435",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ce08f4e5807a9ab314e6ea2f67aa72afee5a435`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpmoment--bf4fa6e9b67ff1dc8c94dcd1.md) | 29 | `declaration-track:bf4fa6e9b67ff1dc8c94dcd169553ee04527ceb4777d06ffc353ae78b253166e` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpmoment-intervalintegrable--7b8f10c72a066bf6c7edc196.md) | 34 | `result-track:7b8f10c72a066bf6c7edc1960097d967b2fbddd4916f6a1ce940f76c133eb4e7` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpmoment-zero-eq-source--b0135a8bb7d770051728e0bf.md) | 41 | `result-track:b0135a8bb7d770051728e0bfd0109cbf5029ff094a335a3b906d9b941ad7a9db` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpmoment-zero-zero--daaf96f59ccbfd6c5e78b03b.md) | 54 | `result-track:daaf96f59ccbfd6c5e78b03ba682ff3165dc1fc1da6ac1a2c9bf3fbe556470a9` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpflux-hasderivat--5210b4c397e7ad7faf6cd810.md) | 64 | `result-track:5210b4c397e7ad7faf6cd810da76085f3f3444f3dd0ec70d85266bbf19b7c35f` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/bumpmoment-equation--0416b2e3f62fa9950fe7ab13.md) | 75 | `result-track:0416b2e3f62fa9950fe7ab130988986fc326075382306ba2799809c2521ee646` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant26da4caa926213d74909f3580066c12c16b9b8722b603131605ca604486f7715.lean/declarations/re-eq-zero-of-weighted-energy--2c07b7827786a570678f95dc.md) | 110 | `result-track:2c07b7827786a570678f95dc815ecb4f06ddfe42b17b8abb7f84959251aa0b4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
