# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NormalForms.Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292980b2e129c4b1cafbf48b37f43b98cefa1728",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292980b2e129c4b1cafbf48b37f43b98cefa1728`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Zify` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/isadmissible--1ce98a82ac0ba6c06f9c0aff.md) | 60 | `declaration-track:1ce98a82ac0ba6c06f9c0aff7898b25024556351a67d960b03fb48ebe1e794d6` |
| 2 | `lemma` | [nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/nil--3d4d9c6652183a9f90c5796a.md) | 66 | `result-track:3d4d9c6652183a9f90c5796a2eb13cf549e3de0b6bbcfbc9e91ad26d3a91b2b3` |
| 3 | `lemma` | [sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/sorted--73f7e7f81fae29a2dc7c8efb.md) | 70 | `result-track:73f7e7f81fae29a2dc7c8efb861afc2e010c7b4753e7db29b813e8e086035369` |
| 4 | `lemma` | [le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/le--d4b77023ace4d81abcc53eda.md) | 72 | `result-track:d4b77023ace4d81abcc53eda19a0529d739d8b7e9af4910a63a726c627977532` |
| 5 | `lemma` | [head_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/head-lt--bfd94c78ef681131a581beb9.md) | 75 | `result-track:bfd94c78ef681131a581beb98ed9cfff77d1cc5c2eab6d38e73975d7f95c3287` |
| 6 | `lemma` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/cons--47458a5084b3c998bbccb584.md) | 80 | `result-track:47458a5084b3c998bbccb58478ab46da0b13ec8b7b57d3e0886d9bc0a1b29836` |
| 7 | `lemma` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/tail--779254f681f175ab88f2a68d.md) | 102 | `result-track:779254f681f175ab88f2a68d1d856d522e590b66f7e34d462657d508e7f035e0` |
| 8 | `def` | [getElemAsFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/getelemasfin--d88407ef0754cdab47c91e37.md) | 110 | `declaration-track:d88407ef0754cdab47c91e375342718d41aef1774a939651b1618c923c3c9224` |
| 9 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/head--a570802f0c1aa1cf375dcadc.md) | 116 | `declaration-track:a570802f0c1aa1cf375dcadc1d7718d2d8efeaeaaa73eb8a24dff90487a119fc` |
| 10 | `def` | [simplicialInsert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/simplicialinsert--248031c485935bcab48fcc94.md) | 129 | `declaration-track:248031c485935bcab48fcc944598145555dfcd8bf518cd811fde89aeed5277df` |
| 11 | `lemma` | [simplicialInsert_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/simplicialinsert-length--1248518117c7a85a5c48b087.md) | 134 | `result-track:1248518117c7a85a5c48b087fc59ce646bb2ec2a0df3eafb9d27d13f6c7be7dc` |
| 12 | `theorem` | [simplicialInsert_isAdmissible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormalForms/Variantf2db44dc90b7d96b83266a794dbe8d2bcb64ff953113dda7134e2152f6cb0ecb.lean/declarations/simplicialinsert-isadmissible--12beda71121ec85cdf57cead.md) | 143 | `result-track:12beda71121ec85cdf57ceadd7fecd717e4745be57d53c39831d174da1e33d7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
