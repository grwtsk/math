# Verification target: GRWTSK.Topology.GeneralTopology.DesignatedCantor.Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7081270af04530dbed03e6186f12f4df7f478c46",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7081270af04530dbed03e6186f12f4df7f478c46`.

Source path: `GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.CantorSet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [designatedTernaryExpansion](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedternaryexpansion--c7d7cb6950d5c4abb7aa6453.md) | 26 | `declaration-track:c7d7cb6950d5c4abb7aa6453a87429367e0aded2e3c23bd70569fbac900c2b9f` |
| 2 | `theorem` | [designatedTernaryExpansion_ne_one](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedternaryexpansion-ne-one--7090c909cde844eb7812d978.md) | 30 | `result-track:7090c909cde844eb7812d97801acb92b8acb84fb711731bf3ecc4744b559b954` |
| 3 | `theorem` | [designatedTernaryExpansion_value](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedternaryexpansion-value--76a232510abf4b6997900e21.md) | 36 | `result-track:76a232510abf4b6997900e2173c915f0006b2a9074891485d51b11b09218b87e` |
| 4 | `def` | [designatedCantorScalar](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedcantorscalar--dec67e4e6e77624ed8b3b0d6.md) | 44 | `declaration-track:dec67e4e6e77624ed8b3b0d647fdd58d6ff3aa99babc9ff22f9cdea6025e6b95` |
| 5 | `theorem` | [designatedCantorScalar_series](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedcantorscalar-series--d182ae63d83daa04e74d0ec6.md) | 48 | `result-track:d182ae63d83daa04e74d0ec6fe168270f7163f28d9fcc049bcfb49564641fd7a` |
| 6 | `theorem` | [designatedCantorScalar_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedcantorscalar-mem-cantorset--fe28a361c5f6bfcb9e94bb75.md) | 59 | `result-track:fe28a361c5f6bfcb9e94bb7584c9caa05702b2cfe6c46288dc0a7fe4c99ed117` |
| 7 | `theorem` | [designatedCantorScalar_injective](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/designatedcantorscalar-injective--ced5e82a30b8644eb01cbdc8.md) | 65 | `result-track:ced5e82a30b8644eb01cbdc8bc9fcd1a0c490a4720cda25baa9342e73edcac8b` |
| 8 | `abbrev` | [ExactCantorScalar](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/exactcantorscalar--f089d5b1ef2f026a5f640652.md) | 78 | `declaration-track:f089d5b1ef2f026a5f640652f06963cab6a22b7db400925ab675c5c3e30c60fa` |
| 9 | `def` | [analyticCantorRepresentation](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorrepresentation--9a94f8a2563faf66d2a75df7.md) | 81 | `declaration-track:9a94f8a2563faf66d2a75df7538c14bc3910c6d9d8f845506a472a96c74e7d38` |
| 10 | `theorem` | [analyticCantorRepresentation_theta_val](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorrepresentation-theta-val--05d7817a2616e5781550b2d4.md) | 87 | `result-track:05d7817a2616e5781550b2d4c8b3b0066a4bcdf69524dcd0fc1ecab6874c2eec` |
| 11 | `theorem` | [analyticCantorRepresentation_digits_theta](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorrepresentation-digits-theta--13ce874472e0a8ef6c6924d6.md) | 100 | `result-track:13ce874472e0a8ef6c6924d6dae74d7bf5a44e7c63b63aef7e14473091cf69a8` |
| 12 | `theorem` | [analyticCantorRepresentation_theta_digits](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorrepresentation-theta-digits--f5edba0c68b7b53e8fb43ac0.md) | 107 | `result-track:f5edba0c68b7b53e8fb43ac04ba4e40eb73569a474604662e9a7dbd7532502b4` |
| 13 | `theorem` | [analyticCantorRepresentation_unique](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorrepresentation-unique--c12474966c8ad3f107f01c74.md) | 113 | `result-track:c12474966c8ad3f107f01c743302d935066c7172d1f7dea22d4143e8fe6ae2aa` |
| 14 | `def` | [analyticCantorHomeomorphism](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorhomeomorphism--c85ad6bee3ebf8d64b14c676.md) | 124 | `declaration-track:c85ad6bee3ebf8d64b14c676379a0678ab78aada8848c4387a22714fd14f3c7c` |
| 15 | `theorem` | [analyticCantorHomeomorphism_toEquiv](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variant29fa16d1bd110855698d133805703a400e16e97f404518313b332fd0d3733497.lean/declarations/analyticcantorhomeomorphism-toequiv--1a19ba63aeabf0f8674aad5b.md) | 128 | `result-track:1a19ba63aeabf0f8674aad5b88c2e71662a2961f66ed45aa03728f316e17ac5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
