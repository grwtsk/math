# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e015f7c3232a789c68d1253db3ba2676314b0f9",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e015f7c3232a789c68d1253db3ba2676314b0f9`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.subfield_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/declarations/complex-subfield-eq-of-closed--d2cf36872905eade2f29248f.md) | 25 | `result-track:d2cf36872905eade2f29248ff23a555a4fecf61d1c66f519f19b4f3b91867679` |
| 2 | `theorem` | [Complex.uniformContinuous_ringHom_eq_id_or_conj](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant1b522dbed1b156e7c156a715eed25867cf810d358a277c8f0c4a873e29540742.lean/declarations/complex-uniformcontinuous-ringhom-eq-id-or-conj--49ad6913458c34b3f9c4dc70.md) | 49 | `result-track:49ad6913458c34b3f9c4dc703aa022dd4add20f568ec001258eb342ced3a88a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
