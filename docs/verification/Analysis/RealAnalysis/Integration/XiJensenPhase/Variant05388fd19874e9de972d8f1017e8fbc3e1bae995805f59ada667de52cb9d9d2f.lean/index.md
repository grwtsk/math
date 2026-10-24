# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.XiJensenPhase.Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b19e6c2b3bf77ea9c54304223d26bb243a1e87c4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b19e6c2b3bf77ea9c54304223d26bb243a1e87c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiSectionObstruction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenReconstruction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_even_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/sum-even-odd--5a987eec3e2b6da7c94ad0fb.md) | 27 | `result-track:5a987eec3e2b6da7c94ad0fb47fec118d56e74472dbdc42002b94add52611317` |
| 2 | `theorem` | [phase_binomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/phase-binomial--651d64606bde25a410eb9972.md) | 39 | `result-track:651d64606bde25a410eb997251a5f6d4185dc3d91e98fb47957a7b8610a7e370` |
| 3 | `lemma` | [phase_argument](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/phase-argument--b388ba1a286e12d2f2f94327.md) | 58 | `result-track:b388ba1a286e12d2f2f9432785f4b2f820873bc8a2e70fefcd9509b39ab79635` |
| 4 | `theorem` | [phase_monomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/phase-monomial-integrable--e602b0569f7eed8aa7e8b972.md) | 64 | `result-track:e602b0569f7eed8aa7e8b97279c327cb8d4299d8956aa7d0ae8e72412b9302e9` |
| 5 | `theorem` | [phase_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/phase-integrable--cfe5616bb6e0faa1bce52155.md) | 77 | `result-track:cfe5616bb6e0faa1bce52155553a29c7dc297bf0cf13efc2caba88402dc4555d` |
| 6 | `theorem` | [integral_phase_monomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/integral-phase-monomial--b23de973cb096d0586daed2f.md) | 91 | `result-track:b23de973cb096d0586daed2fc3effc8308694a8fc599debaa933c1d2d9bdcda8` |
| 7 | `theorem` | [weighted_coefficient_eq_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/weighted-coefficient-eq-moment--0d5a241ab21a63766fce041c.md) | 106 | `result-track:0d5a241ab21a63766fce041cbd9f00e38983971f1b0bff4432e6de380934327b` |
| 8 | `lemma` | [phase_even_power](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/phase-even-power--a1b4b6f20ee068941251c04d.md) | 115 | `result-track:a1b4b6f20ee068941251c04d33b593f0dfda2c5f185213fcf79fe87df89923a4` |
| 9 | `theorem` | [weighted_coefficient_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/weighted-coefficient-phase--079ed0962f7f18150002ccc5.md) | 122 | `result-track:079ed0962f7f18150002ccc5585666eeb61f2ad5f3c6304d51a56dc5372cc9e1` |
| 10 | `theorem` | [jensenSection_eq_phase_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/declarations/jensensection-eq-phase-integral--36bfc891d16f72490bec6420.md) | 131 | `result-track:36bfc891d16f72490bec642078413bf305ee83b6571f6b0a42e0f06223225fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
