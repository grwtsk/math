# Verification target: GRWTSK.Topology.GeneralTopology.Embedding.Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe66f5b352fd255138ea39278a4a2da24098f11",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe66f5b352fd255138ea39278a4a2da24098f11`.

Source path: `GRWTSK/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Topology.Continuous` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homeomorphism](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/homeomorphism--16822b92afa50be4542ad11c.md) | 16 | `declaration-track:16822b92afa50be4542ad11cad7cca4728b062f5a6e956a0a79e716a9b2c7ec3` |
| 2 | `theorem` | [Homeomorphism.injective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/homeomorphism-injective--d7a7d6063e143c3b26a6abdb.md) | 27 | `result-track:d7a7d6063e143c3b26a6abdb5baac8292467b2ebe30f6bb11b5aae81666b65b2` |
| 3 | `theorem` | [Homeomorphism.surjective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/homeomorphism-surjective--7a47e515092ad62b900795b6.md) | 38 | `result-track:7a47e515092ad62b900795b6696255e26c0393f40b37f1b1fed7eb335a62c064` |
| 4 | `abbrev` | [FunctionImage](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/functionimage--4daa25cff17bafe693e5be6e.md) | 47 | `declaration-track:4daa25cff17bafe693e5be6e7100500b425f8242dfd10fe107cdf3038e602e82` |
| 5 | `structure` | [TopologicalEmbedding](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/topologicalembedding--df1d13641c9accc5d96793fc.md) | 56 | `declaration-track:df1d13641c9accc5d96793fc6a20629ce2578d71e9733ec8c4ca350ed42cf7fd` |
| 6 | `theorem` | [TopologicalEmbedding.injective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/topologicalembedding-injective--87628010682bc087771e0907.md) | 68 | `result-track:87628010682bc087771e09076e6f8cbaefa2b6434566ef239e993414320535b9` |
| 7 | `theorem` | [TopologicalEmbedding.continuous](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/topologicalembedding-continuous--7299357bdd3408bf96669b92.md) | 86 | `result-track:7299357bdd3408bf96669b92cbe82a0e4a9da6ae6980796b0085039098859773` |
| 8 | `theorem` | [TopologicalEmbedding.continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/declarations/topologicalembedding-continuous-tofun--fcf912fcb936f1f96239c0f8.md) | 99 | `result-track:fcf912fcb936f1f96239c0f83e4e161368c31e8726790c0c5ef5a43d8a63dd43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
