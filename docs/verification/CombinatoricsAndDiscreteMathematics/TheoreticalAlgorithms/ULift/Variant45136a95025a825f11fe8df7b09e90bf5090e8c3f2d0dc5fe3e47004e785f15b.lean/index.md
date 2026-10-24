# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ULift.Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33dbbccd35d57b42779ac3e20696de775caec35c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33dbbccd35d57b42779ac3e20696de775caec35c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-step-ulift--c76642fdc372f64ac4a101c8.md) | 31 | `result-track:c76642fdc372f64ac4a101c82c853343b39120ef265931464abe6863a306befd` |
| 2 | `theorem` | [IterM.toList_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-tolist-ulift--a66337455aa158b8d9f00c24.md) | 43 | `result-track:a66337455aa158b8d9f00c246837ef49eca4a22d71627878de8cbf279075cb0e` |
| 3 | `theorem` | [IterM.toListRev_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-tolistrev-ulift--9a20639ea4b6ab0a1359e015.md) | 59 | `result-track:9a20639ea4b6ab0a1359e0154a8955116035c57566fe1866f3024266abfc9237` |
| 4 | `theorem` | [IterM.toArray_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-toarray-ulift--f77da300bfee420ec0a47e9e.md) | 69 | `result-track:f77da300bfee420ec0a47e9e3fc9b8fdd107dadc644ee3933683d47de0e20a70` |
| 5 | `theorem` | [IterM.length_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-length-ulift--9bf76f75f959a6dd7c0c034f.md) | 79 | `result-track:9bf76f75f959a6dd7c0c034ff69a02a950b0fd80554114423f0c08c0f65dae58` |
| 6 | `def` | [IterM.count_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant45136a95025a825f11fe8df7b09e90bf5090e8c3f2d0dc5fe3e47004e785f15b.lean/declarations/iterm-count-ulift--0bbd977127dc4a69b193e4cc.md) | 96 | `declaration-track:0bbd977127dc4a69b193e4cc720f497027682a22115ad0e44e9aa320fd238bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
