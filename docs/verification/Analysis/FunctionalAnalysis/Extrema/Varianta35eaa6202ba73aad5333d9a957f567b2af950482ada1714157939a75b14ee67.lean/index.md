# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extrema.Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ee7cf044747d66980b3a1d2142a3f277581db4e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ee7cf044747d66980b3a1d2142a3f277581db4e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/declarations/isminon-of-islocalminon-of-convexon-icc--fb0c6f0d510003f3f5fb15e2.md) | 35 | `result-track:fb0c6f0d510003f3f5fb15e20f22dff32dc82a1215fc0c249eb7139ff1be4bb1` |
| 2 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/declarations/isminon-of-islocalminon-of-convexon--cd052ec85db77cc43b1b87a8.md) | 57 | `result-track:cd052ec85db77cc43b1b87a8a657d7b66cdf6821869132fcbff9bd33725889f2` |
| 3 | `theorem` | [IsMaxOn.of_isLocalMaxOn_of_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/declarations/ismaxon-of-islocalmaxon-of-concaveon--a0aeaa15673c04d5543076f7.md) | 75 | `result-track:a0aeaa15673c04d5543076f766ad17de584a24ea82caacd5db1f924e449ec023` |
| 4 | `theorem` | [IsMinOn.of_isLocalMin_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/declarations/isminon-of-islocalmin-of-convex-univ--bf11ec74afb25f1e27c7bd99.md) | 80 | `result-track:bf11ec74afb25f1e27c7bd9903a6eccf8d555d2b5fbf17e6d5813aa91bf811e4` |
| 5 | `theorem` | [IsMaxOn.of_isLocalMax_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67.lean/declarations/ismaxon-of-islocalmax-of-convex-univ--4ed504c045a814b6cb3df692.md) | 85 | `result-track:4ed504c045a814b6cb3df6928a6efb6ac246c1817df5524dca1b132045bd1e26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
