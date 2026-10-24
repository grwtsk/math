# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48fc458407b498216f6d3756d41c839aceabfff4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48fc458407b498216f6d3756d41c839aceabfff4`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct--086449e1cc453b4e22c02693.md) | 52 | `declaration-track:086449e1cc453b4e22c02693d0565ecbc2e556ad3cba30b5984f38f8d3a1c07d` |
| 2 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct--02c55f63c50e545d315e020a.md) | 55 | `declaration-track:02c55f63c50e545d315e020ae82f36bfc0098fba37c07df3d23369312d47d947` |
| 3 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-desc--c7a44ebb87eb2823f544bb47.md) | 64 | `declaration-track:c7a44ebb87eb2823f544bb47293784696538f938bbed2446361376823736a1d4` |
| 4 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-desc--58c28de2c16c1324a49840a4.md) | 72 | `result-track:58c28de2c16c1324a49840a4eb9ddb867ad275f51bded4033e2fc7d701e5e1d4` |
| 5 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-hom-ext--e52e1ecefc8186c10930678d.md) | 75 | `result-track:e52e1ecefc8186c10930678d394b47ccbb6c6f12d92dae98ccc7cf7f8b8ba5a0` |
| 6 | `def` | [finiteCoproduct.cocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-cocone--190ba03aaed55276b2e9fa88.md) | 84 | `declaration-track:190ba03aaed55276b2e9fa8843e60249d2d265c0bda7a7686b67ed31e30197b5` |
| 7 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-iscolimit--91480521790c92e449cfef90.md) | 91 | `declaration-track:91480521790c92e449cfef9020589e42bbc00bd0455b81384bb68888a471194d` |
| 8 | `instance` | [hasFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/hasfinitecoproducts--dca47429683bf049b2c82a39.md) | 103 | `declaration-track:dca47429683bf049b2c82a39f6b58a8d16d13c57ea5c0db67f60cbed8a3d28e2` |
| 9 | `def` | [finiteCoproduct.explicitCocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-explicitcocone--11bf234c8c29e8b422c2a20d.md) | 114 | `declaration-track:11bf234c8c29e8b422c2a20d6e87373919d4215681466de5f72d8c8868bcdc1e` |
| 10 | `def` | [finiteCoproduct.isColimit'](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-iscolimit--21beda3603ec76ca36ac3b9f.md) | 122 | `declaration-track:21beda3603ec76ca36ac3b9fd3f77303c4d5bc59c703dff861ae7445b7b3da1c` |
| 11 | `def` | [coproductIsoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/coproductisocoproduct--697cef8e285175cb863f0757.md) | 133 | `declaration-track:697cef8e285175cb863f0757747fb05d7977b7b0896699bc2d850625da4f4438` |
| 12 | `lemma` | [finiteCoproduct.openEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/finitecoproduct-openembedding--c5261fa910bfbf30f77166f9.md) | 138 | `result-track:c5261fa910bfbf30f77166f97306515da447002e36a3b57af7574e9dac7156e9` |
| 13 | `lemma` | [Sigma.openEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant07ae50dfd0035ce0fbaff7c59a06fc7e4da710889e1f3c88a49f7cec46770994.lean/declarations/sigma-openembedding--a16fc10434d91370309ea8ed.md) | 143 | `result-track:a16fc10434d91370309ea8edca409976b0dc63f38ced0e723ccc2ee1c6147580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
