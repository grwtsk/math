# Verification target: GRWTSK.Topology.GeneralTopology.Adjunctions.Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3bb58879e05f1afd8b2b707179f64f32e235ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3bb58879e05f1afd8b2b707179f64f32e235ea`.

Source path: `GRWTSK/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Adjunctions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stoneCechObj](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/declarations/stonecechobj--6113ec3b4f8c26c028d781a3.md) | 25 | `declaration-track:6113ec3b4f8c26c028d781a397d3957a6b5941c4123ff7f05a8889c3926193ac` |
| 2 | `def` | [stoneCechEquivalence](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/declarations/stonecechequivalence--6ba279943c5cc78e4a3c8df4.md) | 34 | `declaration-track:6ba279943c5cc78e4a3c8df4f22e00e8e66553c53c4e0f1c3d6a3e3a0d982eac` |
| 3 | `def` | [typeToStonean](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/declarations/typetostonean--c1e40dea769421fab057176c.md) | 45 | `declaration-track:c1e40dea769421fab057176cc607aaca8b917772393e309cccc578b86ae6429a` |
| 4 | `def` | [stoneCechAdjunction](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/declarations/stonecechadjunction--c4bfac840ecde7f6d5b7d42b.md) | 51 | `declaration-track:c4bfac840ecde7f6d5b7d42b0b7b6e0e99fa097a1086bb7d432c5f550689dbbb` |
| 5 | `instance` | [forget.preservesLimits](../../../../../mathematics/Topology/GeneralTopology/Adjunctions/Variant7a9394583586ed9580f958a6a1b8703660cfed56b149a70125f3d446c0fbe4a4.lean/declarations/forget-preserveslimits--9320b963747b6572f8ebd906.md) | 55 | `declaration-track:9320b963747b6572f8ebd906b7e703c86b0a1eadf394198641f08bb7044dc59c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
