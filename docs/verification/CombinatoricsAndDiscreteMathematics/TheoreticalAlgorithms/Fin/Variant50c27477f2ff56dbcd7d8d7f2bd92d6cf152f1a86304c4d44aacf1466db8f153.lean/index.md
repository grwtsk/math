# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fin.Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78bd074327434790fcbb6d958d13e802ca50d783",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78bd074327434790fcbb6d958d13e802ca50d783`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/tail--40d2e5ed33e9b60c40ce40dd.md) | 37 | `declaration-track:40d2e5ed33e9b60c40ce40dd43e53c23e1395f24af8ed5b2d78f5a6a70cf7765` |
| 2 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons--c7891683884fa432d027ef39.md) | 41 | `declaration-track:c7891683884fa432d027ef394b1d7eab5048a1ebd737525097a8f025b179cf2f` |
| 3 | `theorem` | [tail_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/tail-apply--2204ff9b406e7adf2712842b.md) | 44 | `result-track:2204ff9b406e7adf2712842bf11d29f6f3914281e8bab3a0655807d9f133f107` |
| 4 | `theorem` | [cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-zero--6ce6d12c0f719a94c8cb2229.md) | 48 | `result-track:6ce6d12c0f719a94c8cb22299abf85c3d958eeefcc719ecfacd41522d704a566` |
| 5 | `theorem` | [cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-succ--d5e61ecd805a5c1606afc5af.md) | 52 | `result-track:d5e61ecd805a5c1606afc5af040c9e02b31c05a83d21f48e667c49e0ea8dc25c` |
| 6 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/tail-cons--ab75e1019428de800f30c4d4.md) | 56 | `result-track:ab75e1019428de800f30c4d4ca67910a9cd992c9315234ade6d5bb8aafa6d144` |
| 7 | `theorem` | [tail_update_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/tail-update-zero--2ec8764622398b708cf35e4c.md) | 60 | `result-track:2ec8764622398b708cf35e4c78331648a2e8cf9b6d9b486a7deaa08986a7ca7b` |
| 8 | `theorem` | [tail_update_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/tail-update-succ--2d86f509952fd9bac3f7c257.md) | 63 | `result-track:2d86f509952fd9bac3f7c2570699c699009f8df6c47b30ed26c43f7d326d125b` |
| 9 | `theorem` | [cons_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-tail--98aabe701b044fafb4b39015.md) | 66 | `result-track:98aabe701b044fafb4b39015260114785966448f65006abbf2e05ce828b8432a` |
| 10 | `theorem` | [cons_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-zero-zero--8c0f37fcbd07afd2348806f5.md) | 73 | `result-track:8c0f37fcbd07afd2348806f548a2dc7f8374714b9034e8876c7fc2b44e50e81f` |
| 11 | `theorem` | [cons_ne_zero_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-ne-zero-of-left--908d54df5fbbad946de909d1.md) | 82 | `result-track:908d54df5fbbad946de909d14c9a0982d68e46ab1d7934a8b393d73ecfa8d366` |
| 12 | `theorem` | [cons_ne_zero_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-ne-zero-of-right--4efca456db5795bf24a92490.md) | 86 | `result-track:4efca456db5795bf24a92490120389470935bf2918be77a706efc9e75d5b6058` |
| 13 | `theorem` | [cons_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-ne-zero-iff--966e3ad2ba952f15e20c74d0.md) | 91 | `result-track:966e3ad2ba952f15e20c74d036649f3447c10b5c0afa752abd19120aa6cd831d` |
| 14 | `lemma` | [cons_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-support--e506b4a1c8a15ba435a68a43.md) | 96 | `result-track:e506b4a1c8a15ba435a68a436f64802b817fe025bf1849bf472a4fa17b408a1c` |
| 15 | `lemma` | [cons_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant50c27477f2ff56dbcd7d8d7f2bd92d6cf152f1a86304c4d44aacf1466db8f153.lean/declarations/cons-right-injective--643daf91c25335d4ce58a650.md) | 103 | `result-track:643daf91c25335d4ce58a650ae9a94bafb6656439f6e96a495a5b18e81e5469a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
