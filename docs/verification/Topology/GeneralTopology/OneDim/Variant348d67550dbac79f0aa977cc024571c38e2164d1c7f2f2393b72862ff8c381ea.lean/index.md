# Verification target: GRWTSK.Topology.GeneralTopology.OneDim.Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4b199d53e00557ce7806e130b2c3e092e90216a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4b199d53e00557ce7806e130b2c3e092e90216a`.

Source path: `GRWTSK/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Icc_mem_vitaliFamily_at_right](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/declarations/icc-mem-vitalifamily-at-right--742b39c3594e5dbae44ca730.md) | 24 | `result-track:742b39c3594e5dbae44ca7302bfad9e74d71fa8817d9f94518a834e0e5fb1b9c` |
| 2 | `theorem` | [tendsto_Icc_vitaliFamily_right](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/declarations/tendsto-icc-vitalifamily-right--2c4a77c46a5046cbcde06b0e.md) | 30 | `result-track:2c4a77c46a5046cbcde06b0ecbdbf4dc10c6e34fcc63e65a9f94d4f0456d539c` |
| 3 | `theorem` | [Icc_mem_vitaliFamily_at_left](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/declarations/icc-mem-vitalifamily-at-left--ed3539e583bd184ac6b18ac4.md) | 39 | `result-track:ed3539e583bd184ac6b18ac4c6aa6015976cf214bc6b87608d1ba320693a6ddf` |
| 4 | `theorem` | [tendsto_Icc_vitaliFamily_left](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variant348d67550dbac79f0aa977cc024571c38e2164d1c7f2f2393b72862ff8c381ea.lean/declarations/tendsto-icc-vitalifamily-left--44f3fe5139ab0fd9ae89401d.md) | 45 | `result-track:44f3fe5139ab0fd9ae89401dcc6c127113e4c0825e2e317f1c2ac5e014693685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
