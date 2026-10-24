# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightAmplitudeEnvelopeControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed1e6e3713b5aa5aee75e9474173337ad8e6de17",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed1e6e3713b5aa5aee75e9474173337ad8e6de17`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightAmplitude`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/positivepolarity--275a234b12cca065824f7008.md) | 15 | `declaration-track:275a234b12cca065824f70087c6671de7dd367cee6db50f85b99a9f3f8715997` |
| 2 | `theorem` | [concrete_dyadic_deficit_iff_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/concrete-dyadic-deficit-iff-amplitude--50a78316c1436452abf6355d.md) | 20 | `result-track:50a78316c1436452abf6355d0e51c35db98706bf072c368a2855e8ddb92683fe` |
| 3 | `theorem` | [concrete_dyadic_zero_deficit_iff_full_capacity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/concrete-dyadic-zero-deficit-iff-full-capacity--030349c9df4f1e705439abcf.md) | 31 | `result-track:030349c9df4f1e705439abcf3dbf8bfda3796b2fc620614cde08b598aaffc29e` |
| 4 | `theorem` | [admitted_error_can_make_requirement_vacuous](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/admitted-error-can-make-requirement-vacuous--3aff41b59558bd2ae0cb7b2c.md) | 42 | `result-track:3aff41b59558bd2ae0cb7b2cedbfcc28c5612585f8684f3d02d7f5e40b9a5be3` |
| 5 | `theorem` | [immutable_rule_requires_amplitude_envelope](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/immutable-rule-requires-amplitude-envelope--1db31137ff3d33b263af832b.md) | 53 | `result-track:1db31137ff3d33b263af832ba6c7d6fb814d369cf34891b71b1e40583a93ae4c` |
| 6 | `theorem` | [concrete_three_clause_fixed_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/concrete-three-clause-fixed-amplitude--c02a087c0c3bdc21b9a9791c.md) | 63 | `result-track:c02a087c0c3bdc21b9a9791c349630a04095f0cc6f8986b4376989386d90dbe8` |
| 7 | `theorem` | [concrete_two_clause_fixed_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/concrete-two-clause-fixed-amplitude--5991ca324759ae09ba271a37.md) | 74 | `result-track:5991ca324759ae09ba271a37bd640ef47b5b628e8a7c73e71e9006a05ab40949` |
| 8 | `def` | [requiredAmplitudeEnvelopeObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/requiredamplitudeenvelopeobligations--1acffeeabc09b9e2b3f3dd01.md) | 85 | `declaration-track:1acffeeabc09b9e2b3f3dd010b5a66a59e471dd4060ecfdd74dcb2f54cb4f4d1` |
| 9 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightAmplitudeEnvelopeControls.lean/declarations/prohibitedpromotions--d6891437e40458492fb5a8ad.md) | 94 | `declaration-track:d6891437e40458492fb5a8adbbc91310a624bb363fc445cbf7bdcd4a3bb1a23e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
