# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c517b2ec71c8f6d65d86100ddacc52fe6aca330",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c517b2ec71c8f6d65d86100ddacc52fe6aca330`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Filter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/declarations/tendsto-nhds-attop--3c2765e582a680696f9726af.md) | 31 | `result-track:3c2765e582a680696f9726af588e79f10b5ed6760fa7a0b46df7619469090ee2` |
| 2 | `theorem` | [tendsto_nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/declarations/tendsto-nhds-atbot--ed4c6cf68fe8c750aa08339f.md) | 34 | `result-track:ed4c6cf68fe8c750aa08339f19dd10170a91f0bc7354f566cfb6a33d92a6d093` |
| 3 | `theorem` | [Tendsto.nhds_atTop](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/declarations/tendsto-nhds-attop--af503d030ac6214f02d768b5.md) | 37 | `result-track:af503d030ac6214f02d768b5971995f7527fdc7e0a90085dd5459a24f7c81c2b` |
| 4 | `theorem` | [Tendsto.nhds_atBot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant72ae46dbeeae9b15375b50756cb019cf29d01ab06cfd02a330a89b1012ae3beb.lean/declarations/tendsto-nhds-atbot--52ad2d8c8245f9626e58f2dc.md) | 41 | `result-track:52ad2d8c8245f9626e58f2dc35f8fe265969684a368d56b99b9e84a0e99df9d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
