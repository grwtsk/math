# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Palindrome.Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "599d40cab0d6e5315df58c9321b60f5c59ff4f96",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `599d40cab0d6e5315df58c9321b60f5c59ff4f96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Palindrome](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/palindrome--300ad629f6fbc1446b54a0e7.md) | 38 | `declaration-track:300ad629f6fbc1446b54a0e7d7fe4b9c259a37192951c47615bff102dca6b168` |
| 2 | `theorem` | [reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/reverse-eq--eeb172a697afea3c5fea65aa.md) | 47 | `result-track:eeb172a697afea3c5fea65aa1e4424c1c1819e3f1c06dfb77679d01a3c1c555e` |
| 3 | `theorem` | [of_reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/of-reverse-eq--fcbf8c3111e57704d398dd7f.md) | 51 | `result-track:fcbf8c3111e57704d398dd7ffcc3ecd49b83c5464079397f6a4db8bb5df774e6` |
| 4 | `theorem` | [iff_reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/iff-reverse-eq--f03459b9c2654d23ce264f31.md) | 59 | `result-track:f03459b9c2654d23ce264f3112099ce304da12fb839da4ddbe004f0864f3e597` |
| 5 | `theorem` | [append_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/append-reverse--75b02cfe34eff61b0b4c95ef.md) | 62 | `result-track:75b02cfe34eff61b0b4c95ef498670e36db6b83dedc13cec7a61141c0d8e76e8` |
| 6 | `theorem` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/map--21ce4c6028e2a0f4adef06d4.md) | 66 | `result-track:21ce4c6028e2a0f4adef06d41948403a4a6ae334fc6b924d883adb782235a0f6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantec0ccce719121292495d626db7dd47bb758e2ee219d088ef02b73b30496535ed.lean/declarations/instance--c6516d67b7d9627d03833abd.md) | 69 | `declaration-track:c6516d67b7d9627d03833abdf0953432f39fdd92c379612fdc1cb7c715a6aec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
