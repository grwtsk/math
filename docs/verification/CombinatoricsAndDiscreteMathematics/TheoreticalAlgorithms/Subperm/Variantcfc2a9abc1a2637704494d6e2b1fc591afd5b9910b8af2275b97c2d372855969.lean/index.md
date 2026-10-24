# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8623532c2a66072d4f669b41b4955cbe294ee959",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8623532c2a66072d4f669b41b4955cbe294ee959`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Pairwise` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Perm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [subperm_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/subperm-iff-count--774c5ec5375a88326bebc7d1.md) | 34 | `result-track:774c5ec5375a88326bebc7d18607f2582deb64f1de638cb2041792babbc6e2f6` |
| 2 | `lemma` | [subperm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/subperm-iff--37d3302f6a0e0d9f1322eb7f.md) | 38 | `result-track:37d3302f6a0e0d9f1322eb7fef4255c6f00c4f44acdef2ef96a743c11be48a67` |
| 3 | `lemma` | [subperm_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/subperm-singleton-iff--b1f9f113ee8113e2ff3b7c77.md) | 44 | `result-track:b1f9f113ee8113e2ff3b7c77d493be204d18012e90a272571377502986db4671` |
| 4 | `lemma` | [subperm_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/subperm-cons-self--4a5d527bfd10f723c914def1.md) | 52 | `result-track:4a5d527bfd10f723c914def1a42c43409bd6ec6fc2a487df6021ff24137c3cc2` |
| 5 | `theorem` | [cons_subperm_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/cons-subperm-of-mem--dbf5ade2d38d66e39eb245eb.md) | 57 | `result-track:dbf5ade2d38d66e39eb245eb32c4c809a77a1e271f5f15e625e5c9c20640e8b7` |
| 6 | `theorem` | [Nodup.subperm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variantcfc2a9abc1a2637704494d6e2b1fc591afd5b9910b8af2275b97c2d372855969.lean/declarations/nodup-subperm--00f43bbe92e335ebf0f083cc.md) | 61 | `result-track:00f43bbe92e335ebf0f083cc1590b6f48d6ac37feb05a5ce8b4627e50ea434e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
