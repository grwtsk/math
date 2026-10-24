# Verification target: GRWTSK.Topology.GeneralTopology.Completion.Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20db58aa839b3084558146308180011fd88a9dab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20db58aa839b3084558146308180011fd88a9dab`.

Source path: `GRWTSK/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupCompletion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/declarations/instance--6e12d36585c1b2dc98f8d79b.md) | 29 | `declaration-track:6e12d36585c1b2dc98f8d79b09614304f9c18926a6e3f64f37267a41d0040cf6` |
| 2 | `theorem` | [norm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/declarations/norm-coe--91c593ec23ea78ed68196315.md) | 33 | `result-track:91c593ec23ea78ed68196315b1efcecaa66329ab9685a8b1d5adcacc5cb27f95` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/declarations/instance--443520a1dcacadf6b710a29b.md) | 36 | `declaration-track:443520a1dcacadf6b710a29b873bf03f7cbe83e1c0802cba2c091ea7d92e20cb` |
| 4 | `theorem` | [nnnorm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/declarations/nnnorm-coe--d227cb255c7da2cb9a7696ff.md) | 44 | `result-track:d227cb255c7da2cb9a7696ff61616e0695c27398d6bddab39114833618970127` |
| 5 | `lemma` | [enorm_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean/declarations/enorm-coe--1a4aeca1b6f5f8e2f113c065.md) | 48 | `result-track:1a4aeca1b6f5f8e2f113c065d00b55630bc3be02ce8b5a0e7e5f17bd24d2ba4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
