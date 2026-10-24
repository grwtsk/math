# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f699816f0bd2221bce9628a62a9f453a3b5ec34f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f699816f0bd2221bce9628a62a9f453a3b5ec34f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_set_perm'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/declarations/set-set-perm--b80ddff9053cd7c52380185a.md) | 32 | `result-track:b80ddff9053cd7c52380185a10080908672941d11bd1334dcbb29fcedb726c22` |
| 2 | `theorem` | [set_set_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/declarations/set-set-perm--58a94d34bb179d8f4dff5bd4.md) | 54 | `result-track:58a94d34bb179d8f4dff5bd48dffce2d03038b2623f48923a872d35163fcfa4e` |
| 3 | `theorem` | [take_of_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/declarations/take-of-getelem--7c03f4ec82cb5c81315a5564.md) | 76 | `result-track:7c03f4ec82cb5c81315a556473038cc826593767d9c42d600e00f511f208cfcb` |
| 4 | `theorem` | [drop_of_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/declarations/drop-of-getelem--1fc3822e4a74e8f0b998d5d9.md) | 83 | `result-track:1fc3822e4a74e8f0b998d5d9fbaa5b49cf15533c021d56d20fedb23523e7092c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
