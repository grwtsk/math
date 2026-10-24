# Verification target: GRWTSK.Topology.GeneralTopology.Ideal.Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c34e015583125883cadf99bd3cacc90826a4fdcf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c34e015583125883cadf99bd3cacc90826a4fdcf`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.NormLeOne` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.ClassNumber` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_norm_le_and_mk_eq_div_atTop_aux₁](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop-aux--11ed3300b7e68bcc84bfcf48.md) | 45 | `result-track:11ed3300b7e68bcc84bfcf486608ead6126d9bcb029581f68d38dec0acd91b31` |
| 2 | `def` | [tendsto_norm_le_and_mk_eq_div_atTop_aux₂](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop-aux--7b74425bb9d3b1c09af635ce.md) | 60 | `declaration-track:7b74425bb9d3b1c09af635ce0146eb0f3bce0f037e9f24bec010d27a13c19f3b` |
| 3 | `theorem` | [tendsto_norm_le_and_mk_eq_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop--df6adfa4bd5e15b383befdc8.md) | 81 | `result-track:df6adfa4bd5e15b383befdc8234e23b2bb5bf58ee94854dcb3961905926aad38` |
| 4 | `theorem` | [tendsto_norm_le_div_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/declarations/tendsto-norm-le-div-attop--3f4b3222aa91aebcdae7dc10.md) | 129 | `result-track:3f4b3222aa91aebcdae7dc10e2608a8713e3ca747842992a66131d251f084fed` |
| 5 | `theorem` | [tendsto_norm_le_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/declarations/tendsto-norm-le-div-attop--5873fd41d1a67a3c4e644db9.md) | 152 | `result-track:5873fd41d1a67a3c4e644db9094be8723386a14aea3bf72ad8f9b945d74f68df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
