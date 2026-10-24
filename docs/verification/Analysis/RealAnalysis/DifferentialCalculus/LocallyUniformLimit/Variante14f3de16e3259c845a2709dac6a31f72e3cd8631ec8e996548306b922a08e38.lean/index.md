# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocallyUniformLimit.Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f829479eb4fcad1a3bbd9cb734d45ae07aa162e9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f829479eb4fcad1a3bbd9cb734d45ae07aa162e9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Series` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/macro-rules--7b108e2a820a90897a0c56f1.md) | 38 | `declaration-track:7b108e2a820a90897a0c56f1d640c5ded6766188cea02d19ecb90cfb3cf157af` |
| 2 | `def` | [cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/cderiv--0e8781865018fbc8acc9a697.md) | 50 | `declaration-track:0e8781865018fbc8acc9a6979e2f88a5f998955516e004b7803faa072233b642` |
| 3 | `theorem` | [cderiv_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/cderiv-eq-deriv--ee3ad13bff5f44438b836141.md) | 54 | `result-track:ee3ad13bff5f44438b8361419f92ec9515bd26e8a1921c96ebb9d447c89288fb` |
| 4 | `theorem` | [norm_cderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/norm-cderiv-le--f56e74e9a09822a2616e5d80.md) | 59 | `result-track:f56e74e9a09822a2616e5d80093e899964f8d08933cb3fef03fda759125df99a` |
| 5 | `theorem` | [cderiv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/cderiv-sub--9990b952fbe9b937db9c20ca.md) | 76 | `result-track:9990b952fbe9b937db9c20ca28740a226f84ad595cb5173dc7434301487810c5` |
| 6 | `theorem` | [norm_cderiv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/norm-cderiv-lt--839cceac0fd0235bf4607e42.md) | 88 | `result-track:839cceac0fd0235bf4607e423dae64dcc8f9570ee4da62951272064d6fcdc492` |
| 7 | `theorem` | [norm_cderiv_sub_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/norm-cderiv-sub-lt--64047b39278185e25558cbcf.md) | 98 | `result-track:64047b39278185e25558cbcfabe172a128b515abde13102152c12135b871d1f8` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.TendstoUniformlyOn.cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant7e5--2d1532ca771a8e7018c761ba.md) | 104 | `result-track:2d1532ca771a8e7018c761baa279277020a66bb6b378d21ae347b9b93668330e` |
| 9 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset--d80a7e86c21c9923b2f57986.md) | 126 | `result-track:d80a7e86c21c9923b2f57986b50fd047a169402859a57152c1a8325efa2950e6` |
| 10 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/exists-cthickening-tendstouniformlyon--c1198e2ce6cae243c10c0e2b.md) | 141 | `result-track:c1198e2ce6cae243c10c0e2bf9fd2284b92bebf8692da8c5da4292dcbd367d65` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.TendstoLocallyUniformlyOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant7e5--89b43ee19d00d0c7c109218a.md) | 151 | `result-track:89b43ee19d00d0c7c109218a68130c6e11f40dbaf6f7ee562581fb15782f559a` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant7e5738c56f05c072fad35fb30b0c30ef03f8115a256cb9d5f7c54c6a8b6527f9.TendstoLocallyUniformlyOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant7e5--001699f71e4758d8f7a67fb4.md) | 170 | `result-track:001699f71e4758d8f7a67fb4fcdf198888cbca16caafa40e15b89767d83f11b7` |
| 13 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/differentiableon-tsum-of-summable-norm--0d9c75477b64a01d58957e6b.md) | 188 | `result-track:0d9c75477b64a01d58957e6bedbf9e28e5136031865cf37da7163918a652c476` |
| 14 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variante14f3de16e3259c845a2709dac6a31f72e3cd8631ec8e996548306b922a08e38.lean/declarations/hassum-deriv-of-summable-norm--d89f056ba999f7c75e8213da.md) | 201 | `result-track:d89f056ba999f7c75e8213da3b176917ebb38ebd1e304eaa3f35b5525f645b72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
