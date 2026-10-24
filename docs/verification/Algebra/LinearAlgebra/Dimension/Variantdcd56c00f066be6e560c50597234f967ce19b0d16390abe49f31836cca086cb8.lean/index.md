# Verification target: GRWTSK.Algebra.LinearAlgebra.Dimension.Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim--970c80d5c276209644b7204d.md) | 44 | `declaration-track:970c80d5c276209644b7204de063f3278cbccca8483a2edc13ea6039f63efa19` |
| 2 | `def` | [finDim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim--f9b904247e776cfe15ea257d.md) | 51 | `declaration-track:f9b904247e776cfe15ea257d30a0ec0eec68a83efd1c9f1cdb982a72ad397754` |
| 3 | `theorem` | [dim_bot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-bot--396f9caf128d1dc7aa90ff54.md) | 55 | `result-track:396f9caf128d1dc7aa90ff545d3c8922a9b304b9648288d76673c5c401791925` |
| 4 | `theorem` | [finDim_bot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-bot--6e09726d2d53c099580039e1.md) | 59 | `result-track:6e09726d2d53c099580039e1369b2ebd1e8c2463aca950476b53f4dbf289800e` |
| 5 | `theorem` | [dim_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-singleton--c6b8a7200e4267907e3ef546.md) | 63 | `result-track:c6b8a7200e4267907e3ef546701dbc1828c5123ad79d69ebb1c3b6be1c92b044` |
| 6 | `theorem` | [finDim_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-singleton--1b71b71af4fcce00ef6a56dc.md) | 69 | `result-track:1b71b71af4fcce00ef6a56dc9f59cf781472c9d4766f5b36f5137171ba62f6b0` |
| 7 | `theorem` | [dim_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-eq-bot-iff--a38bf7fa240d9fb7058f085b.md) | 73 | `result-track:a38bf7fa240d9fb7058f085bde3e55917343908d32204771b5aab69f8a61fe5d` |
| 8 | `theorem` | [finDim_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-eq-bot-iff--a6596246928284aeae914b39.md) | 77 | `result-track:a6596246928284aeae914b39cfd6169c18f3f134930185765cc1023732da6356` |
| 9 | `theorem` | [dim_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-ne-bot-iff--926699bfec69f758e88c3a3e.md) | 80 | `result-track:926699bfec69f758e88c3a3e7413cc8ea4c19f3b35930c4612a47230b757c176` |
| 10 | `theorem` | [finDim_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-ne-bot-iff--e296d88a87cbab8decb394f1.md) | 84 | `result-track:e296d88a87cbab8decb394f110895fae7fabc7da098d644c64c1680086dd4b3a` |
| 11 | `theorem` | [dim_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-eq-rank--2d92a49aa50f16ee09e6affc.md) | 88 | `result-track:2d92a49aa50f16ee09e6affc2e9c8891a3edcbdf072cc7a7830fd9f1066a7147` |
| 12 | `theorem` | [finDim_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-eq-finrank--bc8eda2623a1b7a2bb37c6ea.md) | 91 | `result-track:bc8eda2623a1b7a2bb37c6ead490c1838846fc94e158ee83043208d1730ed476` |
| 13 | `theorem` | [finDim_eq_finrank_of_not_finite](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-eq-finrank-of-not-finite--f3471951e2f9644ecee92970.md) | 96 | `result-track:f3471951e2f9644ecee92970a559978103c4c5f9b8b646a6006a5f9b81dc9ab9` |
| 14 | `theorem` | [dim_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-lt-aleph0--1be3c25f254c1cd7422e6a40.md) | 105 | `result-track:1be3c25f254c1cd7422e6a40137beb967142316afac4a6b0d018635271603566` |
| 15 | `theorem` | [finite_iff_dim_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/finite-iff-dim-lt-aleph0--005b36e5f703f2a88de0c387.md) | 110 | `result-track:005b36e5f703f2a88de0c387ccd5746b5b98472473ca303e41278d195220ce53` |
| 16 | `theorem` | [finite_of_finDim_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/finite-of-findim-ne-zero--0ffab8656cdb9cd8e4815dc7.md) | 118 | `result-track:0ffab8656cdb9cd8e4815dc7be796546fda1397f0a7c974bcc9bb4fec3b7f070` |
| 17 | `theorem` | [finDim_eq_map_dim_toNat](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-eq-map-dim-tonat--3f41b0bab13f1eea1764b707.md) | 125 | `result-track:3f41b0bab13f1eea1764b707eee4427c0a0cd04db7c6201d651d39ec1985aaa0` |
| 18 | `theorem` | [dim_eq_finDim_unbot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-eq-findim-unbot--33eccee7c75ef80a7ec81734.md) | 128 | `result-track:33eccee7c75ef80a7ec81734e29faecaea840a2da3a16a14f8a06975dbe0341e` |
| 19 | `theorem` | [dim_mono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-mono--5174cee565435c9250c6f885.md) | 135 | `result-track:5174cee565435c9250c6f8854bc9f8739594d9b505ab826e78f0239464abfc3c` |
| 20 | `theorem` | [finDim_mono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-mono--7d833f15eb7865532b1f5a2a.md) | 142 | `result-track:7d833f15eb7865532b1f5a2a4597474b26db25a7b52234615a4ca4d837262657` |
| 21 | `theorem` | [lift_dim_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/lift-dim-map-le--ab2c902e3e32f06a13637b2d.md) | 149 | `result-track:ab2c902e3e32f06a13637b2df87257e2ca01c16ba06b2efe908d041006e2e7a7` |
| 22 | `theorem` | [dim_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-map-le--13a49ac5335611b2c7812627.md) | 157 | `result-track:13a49ac5335611b2c78126279734faf475b05b4794777307bed96ed50248afb5` |
| 23 | `theorem` | [finDim_map_le_finDim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-map-le-findim--c072ac1d9de6e5def1baa9df.md) | 160 | `result-track:c072ac1d9de6e5def1baa9dff6ae1fbc514bdd2fc8a90c80ca83a7fd31fb7124` |
| 24 | `theorem` | [lift_dim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/lift-dim-map-of-injective--4557ddac4ba97c46d60c640a.md) | 167 | `result-track:4557ddac4ba97c46d60c640a03bd5bec236f406bd87e31919b3ca2b3cb7c8751` |
| 25 | `theorem` | [dim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-map-of-injective--f4c56a0a1e3c5510676f2dc9.md) | 178 | `result-track:f4c56a0a1e3c5510676f2dc9e5eaf83bb0070e35eda2c01e17ba7d7dd7a7a994` |
| 26 | `theorem` | [finDim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-map-of-injective--b125e91a6aa069f8671e167f.md) | 182 | `result-track:b125e91a6aa069f8671e167f7f0f7de4e2ab09b0e7c8f84c574e2829793b3a08` |
| 27 | `theorem` | [dim_le_zero_iff_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/dim-le-zero-iff-subsingleton--4c46d09c487274ed25ff72e8.md) | 192 | `result-track:4c46d09c487274ed25ff72e8e799e82c70f1538fd8b737b2fc20c2d3b8082c5c` |
| 28 | `theorem` | [finDim_le_zero_iff_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-le-zero-iff-subsingleton--2acb1ee99884ff5c85cc4d82.md) | 199 | `result-track:2acb1ee99884ff5c85cc4d82470e7d2a4804d42c0aac003a6c39733ef25712d4` |
| 29 | `theorem` | [finDim_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/declarations/findim-strictmono--9feaa15f9cf5b07a5982d308.md) | 214 | `result-track:9feaa15f9cf5b07a5982d3085c9ad7fec8a48033a2bd54c3bb43986dce45b658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
