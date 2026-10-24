# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Bounds.Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ae5d8ab905779aff70914f70a7574d26165bd7a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ae5d8ab905779aff70914f70a7574d26165bd7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [choose_le_pow_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/choose-le-pow-div--51097a88dab4d8b1826e39ce.md) | 30 | `result-track:51097a88dab4d8b1826e39ce10c79d08f49141b4cf81cc3a92499a4eefb657bb` |
| 2 | `lemma` | [choose_le_descFactorial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/choose-le-descfactorial--833fd39435b237c8fca48c18.md) | 37 | `result-track:833fd39435b237c8fca48c185fa2064589cab533fe2c38e71492aef114fa9c65` |
| 3 | `lemma` | [choose_le_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/choose-le-pow--c6ddc48fb2c61607e9ac5dd6.md) | 43 | `result-track:c6ddc48fb2c61607e9ac5dd626fe27bbab4d439f3e1c5a866acf76c0cba3229d` |
| 4 | `theorem` | [pow_le_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/pow-le-choose--c7ba1f2e874d961ab69dabcb.md) | 47 | `result-track:c7ba1f2e874d961ab69dabcb7865b84f66dd1c5c370c8eaed760628dc3b80809` |
| 5 | `theorem` | [choose_succ_le_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/choose-succ-le-two-pow--79bcb4b2583fc32f95ecc669.md) | 54 | `result-track:79bcb4b2583fc32f95ecc669bd2611200004a4cf5dc5b75112b36adb6a9de6ce` |
| 6 | `theorem` | [choose_le_two_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Bounds/Variant3771d99aefb4054d50966038bcddc56a33d73a12f15ba764fce4c02795b3e35d.lean/declarations/choose-le-two-pow--1eb5683819dab6d37d8ed53d.md) | 66 | `result-track:1eb5683819dab6d37d8ed53d0707cd917b4e572364e941ff10190fb7befd5cac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
