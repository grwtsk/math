# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21ea4c56317fc95c0e67f9ef528e811561a833bf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21ea4c56317fc95c0e67f9ef528e811561a833bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CantorScheme` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Perfect.small_diam_aux](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/declarations/perfect-small-diam-aux--1db5b8d51b6634541f51d3ce.md) | 48 | `result-track:1db5b8d51b6634541f51d3ce42744b89cc0ca63ad627d7256cd7a2f5f4b24c40` |
| 2 | `theorem` | [Perfect.small_diam_splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/declarations/perfect-small-diam-splitting--7b29e038d04bb303f43b96a4.md) | 66 | `result-track:7b29e038d04bb303f43b96a4ded91bbc61178bd1d688a0174d31ec331a09a122` |
| 3 | `theorem` | [Perfect.exists_nat_bool_injection](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/declarations/perfect-exists-nat-bool-injection--551a39dc7c410669d58ce743.md) | 83 | `result-track:551a39dc7c410669d58ce743da23e0d5242062516aa428ee5751bd2a975fa346` |
| 4 | `theorem` | [IsClosed.exists_nat_bool_injection_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variant6cdaa218f23189d594812993eddf62bb7fbae67bfba64768f32750a3a6340ffd.lean/declarations/isclosed-exists-nat-bool-injection-of-not-countable--4be61cb14807cc1ece129812.md) | 141 | `result-track:4be61cb14807cc1ece12981273d71a50aeb8a00de10d8c14e1b149a524c6bf0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
