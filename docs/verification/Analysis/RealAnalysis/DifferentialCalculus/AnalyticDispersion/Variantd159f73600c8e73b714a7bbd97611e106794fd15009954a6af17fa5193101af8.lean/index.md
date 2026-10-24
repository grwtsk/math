# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersion.Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4fc463d843228f6f8318125a98b50794ccd885",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4fc463d843228f6f8318125a98b50794ccd885`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FourPhaseConvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/analyticdispersionreconstruction--ce4384c87a684528d7d35383.md) | 41 | `declaration-track:ce4384c87a684528d7d3538349a03c79c712a4a434c0a1f252722b4b9cad1e24` |
| 2 | `theorem` | [fderiv_potential_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/fderiv-potential-eq--921f4265a9e0bc637789b14d.md) | 59 | `result-track:921f4265a9e0bc637789b14d7385c046e52282ef7b9c6057de3a4488ec3e99a1` |
| 3 | `theorem` | [fderiv_gradient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/fderiv-gradient-eq--b9cd206d82e44b4065525549.md) | 64 | `result-track:b9cd206d82e44b4065525549d993d8c489862f6f817396519edf362e4fe7929f` |
| 4 | `theorem` | [hessian_apply_eq_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/hessian-apply-eq-dispersion--173f24cf9282fd6244b7ccef.md) | 69 | `result-track:173f24cf9282fd6244b7ccef6abe0a5c76b1b648ed26299e14cf15b2be9b2937` |
| 5 | `theorem` | [hessian_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/hessian-symmetric--583ece8890ae2979d7605e11.md) | 76 | `result-track:583ece8890ae2979d7605e11a77b51216ae90ed455630727024958d9c885378a` |
| 6 | `theorem` | [hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/hessian-nonnegative--d0a321b61508f9bdca716e55.md) | 83 | `result-track:d0a321b61508f9bdca716e55bd58621353da95a1f797efdf2a139a6667a35f5f` |
| 7 | `def` | [geometryAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/geometryat--0f1e2c30984b90a356c7d69b.md) | 90 | `declaration-track:0f1e2c30984b90a356c7d69bf3c04221ffac3b0037f48e8ba6fb53ca2c5d6eb9` |
| 8 | `theorem` | [geometryAt_form](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/geometryat-form--a05c25c37597f2f079c7a1bd.md) | 94 | `result-track:a05c25c37597f2f079c7a1bd8ebf8bf8c465b8b88615c9a59625218096abeb60` |
| 9 | `theorem` | [visible_iff_hessian_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/visible-iff-hessian-pos--ed0f4162a494d3aae63882a9.md) | 101 | `result-track:ed0f4162a494d3aae63882a9910d50e18d6c2b69d077a17cf4047cc1f7c44d0e` |
| 10 | `theorem` | [isNull_iff_hessian_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/isnull-iff-hessian-eq-zero--177569a56fe0c99f1147b92f.md) | 109 | `result-track:177569a56fe0c99f1147b92f30a35c578430a8bb6b2654decde0d57d66f2163d` |
| 11 | `theorem` | [analytic_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/analytic-potential--44e1926ba71cfbdde0899f4b.md) | 116 | `result-track:44e1926ba71cfbdde0899f4bd783c253dac95816025cab14fcf4ad9fa09acea2` |
| 12 | `theorem` | [analytic_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/analytic-gradient--46f233d08c8951ec3b2ca60a.md) | 121 | `result-track:46f233d08c8951ec3b2ca60ac881ed0c1a6cbfaf1a31080c0823b74cd3f12e2c` |
| 13 | `def` | [ofAnalyticDispersionAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/ofanalyticdispersionat--2da79bfed7266e1a275a04fe.md) | 137 | `declaration-track:2da79bfed7266e1a275a04fe01c6fa0ecc318efc2d28cca9daab6fe38667bb07` |
| 14 | `theorem` | [ofAnalyticDispersionAt_phaseI](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/ofanalyticdispersionat-phasei--cb5e047d3ffefc0f8cb6fabd.md) | 150 | `result-track:cb5e047d3ffefc0f8cb6fabd981386442edfa8c8de76c78c60ad2a380f1bdfd2` |
| 15 | `theorem` | [ofAnalyticDispersionAt_phaseIEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantd159f73600c8e73b714a7bbd97611e106794fd15009954a6af17fa5193101af8.lean/declarations/ofanalyticdispersionat-phaseienergy--f595f09425a9ea0488f14858.md) | 162 | `result-track:f595f09425a9ea0488f1485854184dd3a64c0cd960647c5123ca94712fdb26ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
