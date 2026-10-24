# Verification target: GRWTSK.Topology.GeneralTopology.Connected.Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b895ff9aba56724c9103fb2f5fa4210cef4863fb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b895ff9aba56724c9103fb2f5fa4210cef4863fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/declarations/instance--246928b910deee3ead39f6f9.md) | 27 | `declaration-track:246928b910deee3ead39f6f9cbf8bfa919e2c03894c0ecd2f33647c3579c837a` |
| 2 | `theorem` | [PreconnectedSpace.trivial_of_discrete](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/declarations/preconnectedspace-trivial-of-discrete--737d1845cdf385386e7fd15d.md) | 34 | `result-track:737d1845cdf385386e7fd15daf9c8513926a3e51cab770d6bffbea6e2594bc70` |
| 3 | `theorem` | [IsPreconnected.infinite_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/declarations/ispreconnected-infinite-of-nontrivial--f69e0953edd6e795ad8e57cd.md) | 41 | `result-track:f69e0953edd6e795ad8e57cddfa77e1cc96b8be76358b42bcfba82bc670677af` |
| 4 | `theorem` | [PreconnectedSpace.infinite](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/declarations/preconnectedspace-infinite--7e812c11732176e374e5c74d.md) | 47 | `result-track:7e812c11732176e374e5c74dba2c46c15bfb066c5bb475586a5ac02b2c81e4d3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Connected/Variantd3ef8e3f4caa9e4c089eb69381a6bdce3701b948eba7c4f225c11f0193b33635.lean/declarations/instance--7083d53d1d0173e41a86c00a.md) | 54 | `declaration-track:7083d53d1d0173e41a86c00adb39cd8dd174faa7fe46638ed84c1daa5f906a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
