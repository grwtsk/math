# Verification target: GRWTSK.Topology.GeneralTopology.Attempt08.Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86d3d1b14f46064f60e018d060c35b21379b156e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86d3d1b14f46064f60e018d060c35b21379b156e`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/p--0fec71b89db3c2a2e85c6f70.md) | 15 | `declaration-track:0fec71b89db3c2a2e85c6f708c21122f996934481b31dd9c5e1c096799498ce0` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/normalizedsquare--1fff5f9c85ec4044ad17e50e.md) | 17 | `declaration-track:1fff5f9c85ec4044ad17e50eedb6e8e94a0fcd4881d4b7fa570715418ae1f18a` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/p-coe--c14013da59b518fdfdb06866.md) | 20 | `result-track:c14013da59b518fdfdb068665cf24eb5467ec8337082bd241f104da710fa2a73` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/actual-scaled-square-real--a7152eb053ce976cc6755704.md) | 23 | `result-track:a7152eb053ce976cc67557046e5371403def4937d9fecc4573f1f77c97fe17e7` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/p-ratio--fbbe518ce5a0a56ff77ce0a4.md) | 49 | `result-track:fbbe518ce5a0a56ff77ce0a41b33a7eaadf6b1fb98235bb92aa837b0ecbfbef1` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/p-ratio-tendsto--8c023bb1b92faf56358effc3.md) | 53 | `result-track:8c023bb1b92faf56358effc34b3f662fde4f28178977a088c5e6a0b9c1f81269` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/normalization-tendsto--42d7cc0ecfc157d56db7c354.md) | 70 | `result-track:42d7cc0ecfc157d56db7c354863945dc5bec1ae5a427187d2a59f2906c02913f` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/exp-scaled-neg-tendsto--909595472dfcfc8bc2eadc3f.md) | 79 | `result-track:909595472dfcfc8bc2eadc3f8f07f3e326f17985b65916455916d0fb6356a61a` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/exp-square-rescale--350453c3d1340136053f120b.md) | 84 | `result-track:350453c3d1340136053f120b00dac9d2cc9050b271e77c07446095b97e807918` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/scaled-square-exact--34a269b78e559cda3d9695a6.md) | 93 | `result-track:34a269b78e559cda3d9695a64006289f696aff331154f4fdb299402b9d46af98` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/scaled-square-tendsto--4e49a111b45bc0aae095c7dd.md) | 117 | `result-track:4e49a111b45bc0aae095c7ddd6aafa9065c9f51356b685d641ee14b12cbcad6a` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/quarter-scaled-limit--a1437c98322aa1a8ddb0ecc2.md) | 137 | `result-track:a1437c98322aa1a8ddb0ecc2410717f941f6675ac895df30b7db327f6f02e185` |
| 13 | `theorem` | [exponential_scale_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/exponential-scale-tendsto--fb835da41ee98c5cccc7fe6f.md) | 145 | `result-track:fb835da41ee98c5cccc7fe6f908d8db5a643b75967c74daa9b69bf8cb10c808d` |
| 14 | `theorem` | [quarter_square_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/quarter-square-tendsto-attop--2bef28b74c5f05a63e12ae9f.md) | 156 | `result-track:2bef28b74c5f05a63e12ae9f4dadcba8a49a271ebc8550303049ebec982eb727` |
| 15 | `theorem` | [bounded_remainder_transfer](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/bounded-remainder-transfer--01f3efbc17f27c63e2ed4a59.md) | 168 | `result-track:01f3efbc17f27c63e2ed4a59a1b647b6ec928d54c601e8bd16e0119815a8a312` |
| 16 | `theorem` | [scaled_bounded_remainder](../../../../../mathematics/Topology/GeneralTopology/Attempt08/Variant62a22745acf35b84307849d7f37c0f4e22c2a67a999f669f74cb62ef6da1be3b.lean/declarations/scaled-bounded-remainder--1dd54dcc7631139572046d2e.md) | 180 | `result-track:1dd54dcc7631139572046d2e7a0d3a08dcce0542c74a7dfabe32a6731b055a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
