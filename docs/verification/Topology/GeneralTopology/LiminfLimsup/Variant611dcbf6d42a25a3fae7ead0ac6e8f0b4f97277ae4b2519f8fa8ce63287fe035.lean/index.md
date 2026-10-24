# Verification target: GRWTSK.Topology.GeneralTopology.LiminfLimsup.Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7f9516a9581c10b050f24cc17c5deaf49f8f961",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7f9516a9581c10b050f24cc17c5deaf49f8f961`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le-aux--e57de991c4fb37a74b9c9a6a.md) | 48 | `result-track:e57de991c4fb37a74b9c9a6ab55526916188f6499443d9a3836f95f420c33f12` |
| 2 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le--cabb0d6707bb13f3a9f5ba5d.md) | 163 | `result-track:cabb0d6707bb13f3a9f5ba5d717e26c722b06a709dbcdb92cff5b96c7eece311` |
| 3 | `theorem` | [blimsup_cthickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-cthickening-mul-ae-eq--9232b53c519971949911f344.md) | 198 | `result-track:9232b53c519971949911f34486af41493214a3f6431c2b0d690429ca9a753520` |
| 4 | `theorem` | [blimsup_cthickening_ae_eq_blimsup_thickening](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-cthickening-ae-eq-blimsup-thickening--a3adf09bf82d1211ec231d9b.md) | 236 | `result-track:a3adf09bf82d1211ec231d9b84ab0e20c65d97605f25aaad2a478f9754950dac` |
| 5 | `theorem` | [blimsup_thickening_mul_ae_eq_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-thickening-mul-ae-eq-aux--f79fb6c5262f43fccbd8fc6f.md) | 250 | `result-track:f79fb6c5262f43fccbd8fc6fecea2c4f1271c694ced161e21f18a171dcddf2b3` |
| 6 | `theorem` | [blimsup_thickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/declarations/blimsup-thickening-mul-ae-eq--7c5c70184684759fa6f4deda.md) | 273 | `result-track:7c5c70184684759fa6f4dedae71d63f70559f25f643f33372874ca269c1d8b83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
