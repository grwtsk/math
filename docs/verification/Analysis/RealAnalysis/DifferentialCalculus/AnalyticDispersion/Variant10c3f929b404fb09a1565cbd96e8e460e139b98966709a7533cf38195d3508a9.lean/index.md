# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticDispersion.Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3134d8ef634a942f0cd9dc10e90ef5498892c60",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3134d8ef634a942f0cd9dc10e90ef5498892c60`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean.json)

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
| 1 | `structure` | [AnalyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/analyticdispersionreconstruction--eb0b8f9b6842fa7e240f62a1.md) | 41 | `declaration-track:eb0b8f9b6842fa7e240f62a19e0784b90a7596f7978723a79202249b9c855a1d` |
| 2 | `theorem` | [fderiv_potential_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/fderiv-potential-eq--160862d5f62dc8fcebfb9b4f.md) | 63 | `result-track:160862d5f62dc8fcebfb9b4f153cb7e07e5bc578232314240afe436c4d70c86b` |
| 3 | `theorem` | [fderiv_gradient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/fderiv-gradient-eq--9ac3dc51bb643f04c3b6602e.md) | 68 | `result-track:9ac3dc51bb643f04c3b6602e09d64185e5ec55ea01249d04c424430de31e8cc3` |
| 4 | `theorem` | [hessian_apply_eq_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/hessian-apply-eq-dispersion--a8986ab248ab2ee8373ad8d2.md) | 73 | `result-track:a8986ab248ab2ee8373ad8d2aa023c08df840a65a5f0463e781161a119a6e8f2` |
| 5 | `theorem` | [hessian_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/hessian-symmetric--e3213c1ae32ca99ac132b673.md) | 80 | `result-track:e3213c1ae32ca99ac132b673702432e594a0368811dd7d7bbfc987dd6b34ea92` |
| 6 | `theorem` | [hessian_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/hessian-nonnegative--9f60c0eea35acba43ea191f2.md) | 87 | `result-track:9f60c0eea35acba43ea191f20a3bf37b04010a38738364737d3ff96f960eda28` |
| 7 | `def` | [geometryAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/geometryat--a4206a5dd048e19a9a76b52a.md) | 94 | `declaration-track:a4206a5dd048e19a9a76b52ae09f748e0af5eaf4cd337829e064bc66a37d4da9` |
| 8 | `theorem` | [geometryAt_form](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/geometryat-form--42a2e51ad3245ce05b2a48df.md) | 98 | `result-track:42a2e51ad3245ce05b2a48df757abbcad86306f7f61190ae0c886c15b05786f5` |
| 9 | `theorem` | [visible_iff_hessian_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/visible-iff-hessian-pos--1d753dfecf4751934556dd0e.md) | 105 | `result-track:1d753dfecf4751934556dd0ef098108ccba3ca2f916747c4493be96158a59717` |
| 10 | `theorem` | [isNull_iff_hessian_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/isnull-iff-hessian-eq-zero--d60bc6f1c503afc5f19ec194.md) | 113 | `result-track:d60bc6f1c503afc5f19ec194484b56a1b39b0563147c509db549f3e0a22a26af` |
| 11 | `theorem` | [analytic_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/analytic-potential--2e20339c64d391ca9a854066.md) | 120 | `result-track:2e20339c64d391ca9a854066536b2b3d0b743941eaac0855482e5013bc0b01eb` |
| 12 | `theorem` | [analytic_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/analytic-gradient--4c9cf61ab7b4adac848b9236.md) | 125 | `result-track:4c9cf61ab7b4adac848b923666a59bb2bafa05bdac352e79521ce8cd117a37c8` |
| 13 | `def` | [ofAnalyticDispersionAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/ofanalyticdispersionat--51365771e691fab58c65835f.md) | 141 | `declaration-track:51365771e691fab58c65835ff56a96c9d43e02c023e8f9d8e58513989c56db70` |
| 14 | `theorem` | [ofAnalyticDispersionAt_phaseI](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/ofanalyticdispersionat-phasei--90bac44dc12d9c54deb599d2.md) | 154 | `result-track:90bac44dc12d9c54deb599d2f6be7f5597b0b9cd4988521771cf3dfd17a1ce93` |
| 15 | `theorem` | [ofAnalyticDispersionAt_phaseIEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variant10c3f929b404fb09a1565cbd96e8e460e139b98966709a7533cf38195d3508a9.lean/declarations/ofanalyticdispersionat-phaseienergy--8817f2945144973587b0e975.md) | 166 | `result-track:8817f2945144973587b0e97526d7596e1c19b66aadc358c98d5681917659ac24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
