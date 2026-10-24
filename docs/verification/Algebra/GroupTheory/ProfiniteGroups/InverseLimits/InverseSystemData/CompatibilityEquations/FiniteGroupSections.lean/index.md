# Verification target: GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.CompatibilityEquations.FiniteGroupSections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8c612d24888c14ecf842f713718395e3af9ed65",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8c612d24888c14ecf842f713718395e3af9ed65`.

Source path: `GRWTSK/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem`](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/FiniteGroupInverseSystem.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompatibleSection](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/declarations/compatiblesection--6eac877292dd301a46135209.md) | 28 | `declaration-track:6eac877292dd301a461352094ef68d0381da85ad8870d4f14a9cade2074b73cc` |
| 2 | `theorem` | [compatible_section_restrict](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/declarations/compatible-section-restrict--3c0eee5a40e779100cdf5a65.md) | 32 | `result-track:3c0eee5a40e779100cdf5a652f22a547062fa718a8a957e339aee4f3b064af0c` |
| 3 | `def` | [sectionFromLast](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/declarations/sectionfromlast--79d27350106c5437cf7627a8.md) | 37 | `declaration-track:79d27350106c5437cf7627a8ba01ef569cffcf99d08300dd52ecc2c3d8b10a3f` |
| 4 | `theorem` | [section_from_last_compatible](../../../../../../../../mathematics/Algebra/GroupTheory/ProfiniteGroups/InverseLimits/InverseSystemData/CompatibilityEquations/FiniteGroupSections.lean/declarations/section-from-last-compatible--13c3fb7c65349266397f71f0.md) | 42 | `result-track:13c3fb7c65349266397f71f0cfd2609f5b84adad42cdd14d85e55d7de4dad283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
