# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CancelLeads.Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "247adb51db77fca22bdb17582a9d9e8a95d0d5cb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `247adb51db77fca22bdb17582a9d9e8a95d0d5cb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/declarations/cancelleads--ae7cea2acf72c688b626bfc2.md) | 47 | `declaration-track:ae7cea2acf72c688b626bfc24ec415e736fc0eabb25d7615c497b60173d0aca4` |
| 2 | `theorem` | [neg_cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/declarations/neg-cancelleads--5bc7113340923d541cc9f167.md) | 55 | `result-track:5bc7113340923d541cc9f16787596d5967903b4b9fd325cafc8742e1efa417b2` |
| 3 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree-of-comm--ec076e9f997cf6bb6fdf53e4.md) | 59 | `result-track:ec076e9f997cf6bb6fdf53e44f42531776b6cae772be97fde3c036bc129db87c` |
| 4 | `theorem` | [dvd_cancelLeads_of_dvd_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/declarations/dvd-cancelleads-of-dvd-of-dvd--3eab51068f590d07b43ce932.md) | 90 | `result-track:3eab51068f590d07b43ce932fb0dea16e5a97bb40e88af226dd9731706957aa0` |
| 5 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree--b3449bdf48eac7e1550728d1.md) | 94 | `result-track:b3449bdf48eac7e1550728d1c46b4d8c627d442722d68474aef41650e6c7adc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
