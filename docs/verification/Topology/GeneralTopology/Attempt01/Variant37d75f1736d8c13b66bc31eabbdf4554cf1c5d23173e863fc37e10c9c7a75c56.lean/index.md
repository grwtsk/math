# Verification target: GRWTSK.Topology.GeneralTopology.Attempt01.Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b99d4aeca1b4c8ff654bc1dbffa4ca98093271",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b99d4aeca1b4c8ff654bc1dbffa4ca98093271`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerTransport` — import line 1; external provider; requires a separately pinned dependency.
- `ClosedProperPowerPrefix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedInventory](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/declarations/shiftedinventory--f999284e081eca3339dd1021.md) | 17 | `declaration-track:f999284e081eca3339dd102129cec12627ed864d223959a88db9d85df7f96b50` |
| 2 | `theorem` | [mem_shiftedInventory_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/declarations/mem-shiftedinventory-iff--e98dfb4db8c570f86e1a3b5f.md) | 21 | `result-track:e98dfb4db8c570f86e1a3b5f23185392ddb480db8c694a16e60cfb8949e46eea` |
| 3 | `theorem` | [shiftedInventory_onset_iff](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/declarations/shiftedinventory-onset-iff--812776162445660da996e3bd.md) | 38 | `result-track:812776162445660da996e3bd099f667e30af2000893f7504c4a424591e068310` |
| 4 | `theorem` | [closedOnsetAtom_zero_outside](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/declarations/closedonsetatom-zero-outside--a1732fe95c962f5c4c28171e.md) | 43 | `result-track:a1732fe95c962f5c4c28171eb3b03f108d6b96e24a543d8fbd81d452d85690c9` |
| 5 | `theorem` | [closedOnsetPrefix_eq_finite_shifted](../../../../../mathematics/Topology/GeneralTopology/Attempt01/Variant37d75f1736d8c13b66bc31eabbdf4554cf1c5d23173e863fc37e10c9c7a75c56.lean/declarations/closedonsetprefix-eq-finite-shifted--8f6d58d9868fc0aff8c4552d.md) | 49 | `result-track:8f6d58d9868fc0aff8c4552da8c548f42c4215598c13a0454c30c02a88fbd83d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
