# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightEnvelopeCollapse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c821ea7a1a2262bf24d7bce7d324cf711fd4978",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c821ea7a1a2262bf24d7bce7d324cf711fd4978`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAdaptiveFloor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightEnvelopeQuadraticMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightenvelopequadraticmajorant--e7f0ea15c5578152b66b6569.md) | 44 | `declaration-track:e7f0ea15c5578152b66b65699c16e7e8972a531a0118bd922e06c2c421b4dd7b` |
| 2 | `theorem` | [pinnedPrimeWeightEnvelopeQuadraticMajorant_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightenvelopequadraticmajorant-nonnegative--36b534a3d19f7f88fd70b647.md) | 48 | `result-track:36b534a3d19f7f88fd70b6473af8005a02bc9bdb5d2989d5602ed87b8eba0a80` |
| 3 | `theorem` | [pinnedPrimeWeightBertrandRatio_to_remainingTarget_le_envelopeQuadraticMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-to-remainingtarget-le-envelopequadraticma--9c3f7a0032920ccf4dda01c1.md) | 60 | `result-track:9c3f7a0032920ccf4dda01c1ef91efda2b559ad915799b744ff772a780c39a2e` |
| 4 | `theorem` | [pinnedPrimeWeightBertrandRatio_to_target_le_error_add_envelopeQuadraticMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-to-target-le-error-add-envelopequadraticm--e714529be4bff428ea6ce5e8.md) | 105 | `result-track:e714529be4bff428ea6ce5e8ef6bebf9e1377057fa6b70877d255f3745724e89` |
| 5 | `theorem` | [pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightenvelopequadraticmajorant-eq-power--c3df8ba268c09437c9b7a993.md) | 128 | `result-track:c3df8ba268c09437c9b7a993077be325d5e7a47018f15c4d9401d65fce9d28a8` |
| 6 | `theorem` | [pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-powerenvelope-to-remainingtarget--f7be52c4382189ce99b7f2a1.md) | 153 | `result-track:f7be52c4382189ce99b7f2a11357be304209fa3c747748a2c4a38c6cd5864f39` |
| 7 | `theorem` | [pinnedPrimeWeightBertrandRatio_powerEnvelope_to_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-powerenvelope-to-target--337f2e4977603e614e8d645d.md) | 181 | `result-track:337f2e4977603e614e8d645df145ad637d719942c878c79c20f2540cb23f064c` |
| 8 | `theorem` | [pinnedPrimeWeightBertrandRatio_sevenEighthsEnvelope_to_threeQuartersTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-seveneighthsenvelope-to-threequarterstarg--abb03eb1796e038eef794269.md) | 207 | `result-track:abb03eb1796e038eef794269c592500e6d0f2a98f401d0ddb89a12218a84a8ab` |
| 9 | `theorem` | [pinnedPrimeWeightBertrandRatio_threeQuartersEnvelope_to_halfTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/declarations/pinnedprimeweightbertrandratio-threequartersenvelope-to-halftarget--24f6f834c6fb3c41a5617ec8.md) | 229 | `result-track:24f6f834c6fb3c41a5617ec877a87fa48fe38944ed5120eea0a3d6aaaa7e14ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
