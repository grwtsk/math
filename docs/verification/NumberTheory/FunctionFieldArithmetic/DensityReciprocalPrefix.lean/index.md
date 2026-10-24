# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityReciprocalPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2783e7a07ede383ed4fa2fffa1c99c95201b584b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2783e7a07ede383ed4fa2fffa1c99c95201b584b`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionReciprocalMass`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusReciprocalPrefix`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/MoebiusReciprocalPrefix.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityReciprocalPrefix](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/densityreciprocalprefix--0dbc60e354990585fad934bc.md) | 20 | `declaration-track:0dbc60e354990585fad934bc6ead8be135f29c59e55cf5983f9a6fbb13bb84ff` |
| 2 | `theorem` | [density_coefficient_correction_divisors](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/density-coefficient-correction-divisors--7fbe98bde0a04cfbe9024c31.md) | 23 | `result-track:7fbe98bde0a04cfbe9024c314e303702f743cde8e74445e4003904244f5ea6e1` |
| 3 | `theorem` | [density_reciprocal_correction_divisors](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/density-reciprocal-correction-divisors--ad157274ff2f70ff029ca76f.md) | 35 | `result-track:ad157274ff2f70ff029ca76f446a199e82b2a7354880f14047dba2e1f8984d1f` |
| 4 | `theorem` | [mobius_reciprocal_prefix_all_real](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/mobius-reciprocal-prefix-all-real--9287caf5842ff79868cc8e23.md) | 46 | `result-track:9287caf5842ff79868cc8e233e03a02658dd16ec7e410188a169a5eaa5152c68` |
| 5 | `theorem` | [density_reciprocal_prefix_zero](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-zero--8e6d549378d9b2486ab8d935.md) | 53 | `result-track:8e6d549378d9b2486ab8d93547bcf2ec2e2e00235463a1cdcc296495aff7dd03` |
| 6 | `theorem` | [density_reciprocal_prefix_return](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-return--926eb0595f90ecf91466d37b.md) | 57 | `result-track:926eb0595f90ecf91466d37be5720fd829088e571657da0eeb8ad2aad11641f0` |
| 7 | `theorem` | [density_reciprocal_prefix_abs_le_mass](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-abs-le-mass--30a148a72cb9131b677e863a.md) | 83 | `result-track:30a148a72cb9131b677e863ab8069b37ae628fac522e7e85aee917ac45434e7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
