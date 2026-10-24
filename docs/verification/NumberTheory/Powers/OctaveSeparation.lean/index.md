# Verification target: GRWTSK.NumberTheory.Powers.OctaveSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb50beaf2fd05c7fd04326c576c396ef508972c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Powers/OctaveSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb50beaf2fd05c7fd04326c576c396ef508972c`.

Source path: `GRWTSK/NumberTheory/Powers/OctaveSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Powers/OctaveSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_power](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/one-le-power--dcd82e175be82cae1ae30469.md) | 17 | `result-track:dcd82e175be82cae1ae30469bd7faa7674b9709a307c1f95cb733b399db86c67` |
| 2 | `theorem` | [two_le_positive_power](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/two-le-positive-power--daf633de4500a39b1fa01b87.md) | 24 | `result-track:daf633de4500a39b1fa01b87d80bc269f7c5ed5038c3da56fc98bc80e793d89b` |
| 3 | `theorem` | [later_power_at_least_double](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/later-power-at-least-double--46619d0337f529b0ebeb0164.md) | 32 | `result-track:46619d0337f529b0ebeb01648de8c8cae50323f67073db86cb83e08550d2500d` |
| 4 | `theorem` | [exponent_unique](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/exponent-unique--472d1daa2faab4487551681f.md) | 41 | `result-track:472d1daa2faab4487551681f2d50afae365d0da8070208825968c280ab21ff44` |
| 5 | `theorem` | [lower_endpoint_excluded](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/lower-endpoint-excluded--ad1ad3388692953fb8f502fc.md) | 52 | `result-track:ad1ad3388692953fb8f502fc5db4ff4076cd29559d2d1882efcdc1137e91b22b` |
| 6 | `theorem` | [upper_endpoint_allowed](../../../../mathematics/NumberTheory/Powers/OctaveSeparation.lean/declarations/upper-endpoint-allowed--8f027aa0ece2a5d82a72856e.md) | 54 | `result-track:8f027aa0ece2a5d82a72856efc79f3d24637a4633fe5c8acbbdab5503a7ef76d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
