# Verification target: GRWTSK.Topology.GeneralTopology.CocompactMap.Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219d33226c3e10e3098912fa8ff902921a8ab5a9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219d33226c3e10e3098912fa8ff902921a8ab5a9`.

Source path: `GRWTSK/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CocompactMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CocompactMapClass.norm_le](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/declarations/cocompactmapclass-norm-le--4c5c6bb62734eaa95fa853d5.md) | 38 | `result-track:4c5c6bb62734eaa95fa853d5b7f30a20050c052cb59978edbe7a022b72efae1d` |
| 2 | `theorem` | [Filter.tendsto_cocompact_cocompact_of_norm](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/declarations/filter-tendsto-cocompact-cocompact-of-norm--2172fc20a70815bd79f5bf20.md) | 50 | `result-track:2172fc20a70815bd79f5bf20fb5fe291e9d6d315126e631cc9366d7f4ebafaa7` |
| 3 | `theorem` | [ContinuousMapClass.toCocompactMapClass_of_norm](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantfc2539c2435741872e5e1782d55bd11a56762a324b7221325de81c5980f9f231.lean/declarations/continuousmapclass-tococompactmapclass-of-norm--8752a926ff4ea38691df6cec.md) | 64 | `result-track:8752a926ff4ea38691df6cec9da96660a31a821452bd39bfcf4e1cb2bec1a047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
