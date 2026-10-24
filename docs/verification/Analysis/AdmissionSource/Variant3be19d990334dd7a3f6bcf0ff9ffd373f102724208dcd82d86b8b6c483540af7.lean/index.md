# Verification target: GRWTSK.Analysis.AdmissionSource.Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a604dff778529f7537ee309a4a5c3153464644d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/index.md) · [Full source](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a604dff778529f7537ee309a4a5c3153464644d`.

Source path: `GRWTSK/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeMultiplier` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuarterSeriesObligation](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/quarterseriesobligation--d23ef5a16755c735c8c9aa85.md) | 33 | `declaration-track:d23ef5a16755c735c8c9aa851fe79a10882e257198a1d2fd91384bb5b08d1816` |
| 2 | `theorem` | [actual_multiplier_difference](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/actual-multiplier-difference--632795cafe4401ef1a185f3e.md) | 38 | `result-track:632795cafe4401ef1a185f3e00bef59154b27f3e09012a73ad093f689b8b8576` |
| 3 | `theorem` | [quarter_series_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/quarter-series-of-derivative-limit--f6f3167de07a70524ea7ff11.md) | 48 | `result-track:f6f3167de07a70524ea7ff11746d53d35a1838abd5e5eaf8e0b71ebc02411ec7` |
| 4 | `theorem` | [multiplier_estimate_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/multiplier-estimate-of-series--89158efd03ab0290f28f754e.md) | 57 | `result-track:89158efd03ab0290f28f754e610a8a68ed488b45677c69e38aea9060bd3a6ac0` |
| 5 | `theorem` | [archimedean_integrability_of_series](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/archimedean-integrability-of-series--f6db88e8a9f4a6371ad769d6.md) | 65 | `result-track:f6db88e8a9f4a6371ad769d6463830f02135ea3a7b68496f7f6c2ddff86a8944` |
| 6 | `theorem` | [admission_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/admission-of-derivative-limit--2a930fac91af17e3834acc6a.md) | 72 | `result-track:2a930fac91af17e3834acc6a9a4f77fd24589c1aaa63647f05cb1a2b6d617477` |
| 7 | `theorem` | [quarter_series](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/quarter-series--a21ed4e7ba7bbd7c5d7d7302.md) | 78 | `result-track:a21ed4e7ba7bbd7c5d7d7302f4a295b7172b92e10222995e2a8489b426198e74` |
| 8 | `theorem` | [multiplier_estimate](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/multiplier-estimate--4d530ef39f399c746dd3a24f.md) | 82 | `result-track:4d530ef39f399c746dd3a24f4fc171ff8087fcfb848d04a024be66372acd7fbf` |
| 9 | `theorem` | [archimedean_integrability](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/archimedean-integrability--0cdf6b2a48f08c186280b246.md) | 86 | `result-track:0cdf6b2a48f08c186280b246b37229bb594ea5e14710f433c49fec1ded2c2b05` |
| 10 | `theorem` | [normalization_admissibility](../../../../mathematics/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/declarations/normalization-admissibility--d4eb639e3c4101726bae57d8.md) | 91 | `result-track:d4eb639e3c4101726bae57d85e9053774a44822fe3a674e799103ed6ae3c95ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
