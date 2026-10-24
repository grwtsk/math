# Verification target: GRWTSK.Topology.GeneralTopology.OneDim.Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d916989ab662813017bd300016f5537107460a65",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d916989ab662813017bd300016f5537107460a65`.

Source path: `GRWTSK/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Icc_mem_vitaliFamily_at_right](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/declarations/icc-mem-vitalifamily-at-right--36d2d5592693872e5b0060f2.md) | 32 | `result-track:36d2d5592693872e5b0060f23bcfe85e6221f9eebe6014226e368f7c747994dc` |
| 2 | `theorem` | [tendsto_Icc_vitaliFamily_right](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/declarations/tendsto-icc-vitalifamily-right--8364bca73a92def6f4e07c8a.md) | 38 | `result-track:8364bca73a92def6f4e07c8a5bbf12cc6fa7fd5da0171146213184ee3632b378` |
| 3 | `theorem` | [Icc_mem_vitaliFamily_at_left](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/declarations/icc-mem-vitalifamily-at-left--e19e9825877cb4763f73abcd.md) | 47 | `result-track:e19e9825877cb4763f73abcd29a525034a233f951706c1d73416e652d7bbf43e` |
| 4 | `theorem` | [tendsto_Icc_vitaliFamily_left](../../../../../mathematics/Topology/GeneralTopology/OneDim/Variante864512cc43c4ba92f40c4b2f5d708a980186fe6156547248773d576444d035f.lean/declarations/tendsto-icc-vitalifamily-left--cdd8a5ab019e056336a57897.md) | 53 | `result-track:cdd8a5ab019e056336a57897e15eac400a6eda0080fac24b6557c108b2926024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
