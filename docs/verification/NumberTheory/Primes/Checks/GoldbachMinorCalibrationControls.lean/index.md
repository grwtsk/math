# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorCalibrationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "239a9a575609ba95b5238bcdb7dbdd13429492ff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `239a9a575609ba95b5238bcdb7dbdd13429492ff`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration`](../../../../../mathematics/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel`](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [proxy_has_composite_support](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/declarations/proxy-has-composite-support--59100a0cfd15cef894a6d515.md) | 17 | `result-track:59100a0cfd15cef894a6d515ba936c17f0db27ddc59d7d4c9410c79d8489ec26` |
| 2 | `theorem` | [proxy_zero_endpoint_is_not_free](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/declarations/proxy-zero-endpoint-is-not-free--9f29654603f4b6ba171beca7.md) | 20 | `result-track:9f29654603f4b6ba171beca7be08bb2042e708fdf845f5c5a16d1eb40d1e9fe2` |
| 3 | `theorem` | [proxy_mass_at_eight](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/declarations/proxy-mass-at-eight--6a3305b15206f42b2697cb74.md) | 24 | `result-track:6a3305b15206f42b2697cb74d976c4abe689ab1696be998dc91512dca603ae62` |
| 4 | `theorem` | [full_minor_margin_at_six_thousand](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/declarations/full-minor-margin-at-six-thousand--5a426c6265cd13e7f024eff0.md) | 28 | `result-track:5a426c6265cd13e7f024eff04061dbd891019f6e9101efcc4287cd4636382d6f` |
| 5 | `theorem` | [nonstrict_margin_can_have_zero_mass](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachMinorCalibrationControls.lean/declarations/nonstrict-margin-can-have-zero-mass--88c141f0ced653482d839a0f.md) | 34 | `result-track:88c141f0ced653482d839a0fdb2c4affa24117620cd7d82690df620d5e03b810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
