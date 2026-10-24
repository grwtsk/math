# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shortlex.Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a0ba5948ff6aca663c7ff7a316b6f8413c59d05",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a0ba5948ff6aca663c7ff7a316b6f8413c59d05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Shortlex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex--f24fdcb130a83207257944e0.md) | 45 | `declaration-track:f24fdcb130a83207257944e02e63accfa85e0d87b3d4dc6662d9627e9f3a741a` |
| 2 | `theorem` | [Shortlex.of_length_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-of-length-lt--23967b740a1802e10edae540.md) | 52 | `result-track:23967b740a1802e10edae54043cff6c989ce7fec2669e0a60a893c473052eda9` |
| 3 | `theorem` | [Shortlex.of_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-of-lex--b2eec4eb8674afcbcbdf8010.md) | 57 | `result-track:b2eec4eb8674afcbcbdf801078758bf0200edd8196be67798aad7888b9ddc27c` |
| 4 | `theorem` | [shortlex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-def--da8d8b07c5f2706f5c23e321.md) | 63 | `result-track:da8d8b07c5f2706f5c23e32189672f6ab324b2c09ad31536933857c3ff2bc3f6` |
| 5 | `theorem` | [shortlex_iff_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-iff-lex--3a99a27d782617b8dc2c3ba6.md) | 68 | `result-track:3a99a27d782617b8dc2c3ba6f7b5a19962dc6d1e77987d335a5d344261acdb05` |
| 6 | `theorem` | [shortlex_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-cons-iff--e595e796f770d6e84de27362.md) | 72 | `result-track:e595e796f770d6e84de27362f9c442851b6762eb991f3113cba2bfdde449229a` |
| 7 | `theorem` | [not_shortlex_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/not-shortlex-nil-right--b47425a5be4be41a626e585b.md) | 79 | `result-track:b47425a5be4be41a626e585bee2af23ad82af34dde0fc500fc72708254c9f92c` |
| 8 | `theorem` | [shortlex_nil_or_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-nil-or-eq-nil--6dc4ee23fd3aefd46e1b1d9b.md) | 85 | `result-track:6dc4ee23fd3aefd46e1b1d9bfee80b910b8c423510b5d5fde3d6c544d5ceda0d` |
| 9 | `theorem` | [shortlex_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/shortlex-singleton-iff--568b00de14f365e8a2b6760f.md) | 90 | `result-track:568b00de14f365e8a2b6760f3595bd4d7787f576b69d6b6d7662c786ff397a7f` |
| 10 | `instance` | [isTrichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/istrichotomous--88d26b8a1a60ab22716714fc.md) | 96 | `declaration-track:88d26b8a1a60ab22716714fc0c9ee9f7b5295ee2597eb44c54cbd7f5273a9303` |
| 11 | `instance` | [isAsymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/isasymm--444a0b53f2b20b1ad64a4471.md) | 99 | `declaration-track:444a0b53f2b20b1ad64a44715bc6758fc8ba7d09ed41f98c12321c24376b7134` |
| 12 | `theorem` | [append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/append-right--d157681b0406552028c3b884.md) | 102 | `result-track:d157681b0406552028c3b8848e6111a422acd098174d0b64d8fcdb327e4e2455` |
| 13 | `theorem` | [append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/append-left--fa95d879a075a596457a9b55.md) | 117 | `result-track:fa95d879a075a596457a9b555ee7bbebb96c8b4de097d08f960b37794339b73a` |
| 14 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shortlex.Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.Acc.shortlex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sh--cdb9428de24162ab708fe729.md) | 138 | `result-track:cdb9428de24162ab708fe729f0329f5748d0a12315a262574ac098baa360da0d` |
| 15 | `theorem` | [wf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/declarations/wf--30d48ddfca669632298184a9.md) | 164 | `result-track:30d48ddfca669632298184a9c3d7e75bfb6d812b8bba31f9050c289460f6e6a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
