# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Opposite.Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2eb7e0866b66c240bcc5facd6fb7c6e01106b9d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2eb7e0866b66c240bcc5facd6fb7c6e01106b9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/op--e692ce4ce752acb7e92c3e8f.md) | 30 | `declaration-track:e692ce4ce752acb7e92c3e8f66d82e7350ae61f1f3f14ef8b5467b9802f33753` |
| 2 | `def` | [unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/unop--da5bd2b1a9c1bfd9593cd105.md) | 34 | `declaration-track:da5bd2b1a9c1bfd9593cd105b33e14f88158f5e80e4a29c17682fedb6a5d9260` |
| 3 | `theorem` | [mem_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/mem-op--f725085f9dc336af8a8a8fd3.md) | 38 | `result-track:f725085f9dc336af8a8a8fd39ebaf4aa438aa9e1e83dac47e17b34a0baef6416` |
| 4 | `theorem` | [op_mem_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/op-mem-op--0e3a614328d50b05bdd04b92.md) | 42 | `result-track:0e3a614328d50b05bdd04b92ebe73722c52abaf852d28d95d4ea6c679d0bc12a` |
| 5 | `theorem` | [mem_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/mem-unop--0903c7d20d5682a1dc170261.md) | 45 | `result-track:0903c7d20d5682a1dc170261cb584e1997ebf1f6846823c5e4a44bff20b2f899` |
| 6 | `theorem` | [unop_mem_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/unop-mem-unop--816e4f2b21fbabf694451da0.md) | 49 | `result-track:816e4f2b21fbabf694451da0015084058e9bb7c59cfcbfed2057b18ec7731604` |
| 7 | `theorem` | [op_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/op-unop--59ede5ea8ec4ebab66b2e95a.md) | 52 | `result-track:59ede5ea8ec4ebab66b2e95ad62b2118bfbc5effd610aa0e38d4c7a95e8ffde2` |
| 8 | `theorem` | [unop_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/unop-op--956d4233044d09e550379f63.md) | 55 | `result-track:956d4233044d09e550379f63b51ef1650cb498a54d620ed8a4790dc31f715e51` |
| 9 | `def` | [opEquiv_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/opequiv-self--d2dbe16c0c62b9b458db0ebd.md) | 59 | `declaration-track:d2dbe16c0c62b9b458db0ebd15a5f2c1bc863acee4f15c34427a81b90b9b3f2c` |
| 10 | `def` | [opEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/opequiv--5b416cfca8b9e1a655f2b526.md) | 64 | `declaration-track:5b416cfca8b9e1a655f2b5269b0d5eb3fbdf1c591ac2909356b2e66fdadf5c9a` |
| 11 | `theorem` | [singleton_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/singleton-op--16f0d2f752e1642be7da082f.md) | 68 | `result-track:16f0d2f752e1642be7da082fef3e4bb359e271618dd5837afe77b4bd730eadbd` |
| 12 | `theorem` | [singleton_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/singleton-unop--732434f5ac0285bc15d1c8c2.md) | 75 | `result-track:732434f5ac0285bc15d1c8c284aa79ad9fd4e72fe4c1463b51a123fc89f66407` |
| 13 | `theorem` | [singleton_op_unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/singleton-op-unop--eb1b87fc5319679610f5129b.md) | 82 | `result-track:eb1b87fc5319679610f5129b9d5c3ad8bdb5eff964def298dce22ddb85b5b4f9` |
| 14 | `theorem` | [singleton_unop_op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Opposite/Variantd6430f91d80e956754a643111e97471b3227da41ee42fc8895f7d974565f7ddf.lean/declarations/singleton-unop-op--e03fef74319b46373921dc51.md) | 89 | `result-track:e03fef74319b46373921dc51465f82cdb0bfe65130009f5cad707638837ff4ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
