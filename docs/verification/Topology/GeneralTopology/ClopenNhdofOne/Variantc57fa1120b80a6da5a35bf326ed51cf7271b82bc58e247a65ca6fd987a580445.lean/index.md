# Verification target: GRWTSK.Topology.GeneralTopology.ClopenNhdofOne.Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bc683f330733ef99a5964d6a71d1b8b94321512",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bc683f330733ef99a5964d6a71d1b8b94321512`.

Source path: `GRWTSK/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Index` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Connected` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exist_openNormalSubgroup_sub_clopen_nhds_of_one](../../../../../mathematics/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean/declarations/exist-opennormalsubgroup-sub-clopen-nhds-of-one--b8c5cae6367e0c8eb09572e8.md) | 23 | `result-track:b8c5cae6367e0c8eb09572e866e8c023f65f3582f1f737b3ed1cbaf913d2d708` |
| 2 | `theorem` | [exist_openNormalSubgroup_sub_open_nhds_of_one](../../../../../mathematics/Topology/GeneralTopology/ClopenNhdofOne/Variantc57fa1120b80a6da5a35bf326ed51cf7271b82bc58e247a65ca6fd987a580445.lean/declarations/exist-opennormalsubgroup-sub-open-nhds-of-one--85c59b89ff292d70ee204b35.md) | 40 | `result-track:85c59b89ff292d70ee204b357a877bdd10bbcd4d566c8bf5d114f11d5cb72451` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
