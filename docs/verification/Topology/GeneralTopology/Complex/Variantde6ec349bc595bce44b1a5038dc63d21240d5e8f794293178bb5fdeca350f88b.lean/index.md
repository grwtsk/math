# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e465ccb1d91c7f05877136e97e58d5913fba99c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e465ccb1d91c7f05877136e97e58d5913fba99c`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.subfield_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean/declarations/complex-subfield-eq-of-closed--c3d7df648b5631ebfb73c338.md) | 33 | `result-track:c3d7df648b5631ebfb73c338a1f2a9d49c62a81ed9b0244103f027f96d645a89` |
| 2 | `theorem` | [Complex.uniformContinuous_ringHom_eq_id_or_conj](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantde6ec349bc595bce44b1a5038dc63d21240d5e8f794293178bb5fdeca350f88b.lean/declarations/complex-uniformcontinuous-ringhom-eq-id-or-conj--05d17e9cf09b28e3958574f9.md) | 57 | `result-track:05d17e9cf09b28e3958574f9e1c90a0b41113108a6d23b922795d069f636bcf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
