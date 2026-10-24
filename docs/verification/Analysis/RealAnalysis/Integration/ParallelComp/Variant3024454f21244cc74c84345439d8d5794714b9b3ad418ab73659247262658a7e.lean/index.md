# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ParallelComp.Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6caf3577b5e189c09c526d350907e745046a2fdc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6caf3577b5e189c09c526d350907e745046a2fdc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [parallelComp_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-of-not-issfinitekernel-left--e2cd610b102a20000fcca4d6.md) | 70 | `result-track:e2cd610b102a20000fcca4d6307bb18a8a82b3ec82a757782fa98f29f1b0f356` |
| 2 | `lemma` | [parallelComp_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-of-not-issfinitekernel-right--882b6812562b1edd79fc38ac.md) | 75 | `result-track:882b6812562b1edd79fc38ac7085556978c593b2bd2731ffe7f7f03eeab91882` |
| 3 | `lemma` | [parallelComp_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-apply--f7be191802a30caff5774591.md) | 79 | `result-track:f7be191802a30caff577459163d4953b18e82ddcb39981ca05055fd9e0ffdefd` |
| 4 | `lemma` | [parallelComp_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-apply--02fef1075e78504c6e4c0d13.md) | 84 | `result-track:02fef1075e78504c6e4c0d132a4ccd620edfeb716f9c3c77e28ffecf223a9be2` |
| 5 | `lemma` | [parallelComp_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-apply-univ--96cec093653069a29f684aa1.md) | 90 | `result-track:96cec093653069a29f684aa195b4dc4d042cb7e38a87bd212b57f8e4020c5860` |
| 6 | `lemma` | [parallelComp_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-zero-left--ae2742e01267a3c507df5d7f.md) | 96 | `result-track:ae2742e01267a3c507df5d7fef3d6b51819fc4447002ae0a4c84cba01baacc6c` |
| 7 | `lemma` | [parallelComp_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-zero-right--b821924b1cc06e91cce38fa7.md) | 102 | `result-track:b821924b1cc06e91cce38fa78c1f24bd3514e69180987d55eaba4e961da7f696` |
| 8 | `lemma` | [lintegral_parallelComp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/lintegral-parallelcomp--ff02184db8ee4353e1d25cd8.md) | 107 | `result-track:ff02184db8ee4353e1d25cd810d731b4453181dd0c43d63ed2f9b84258a4e778` |
| 9 | `lemma` | [lintegral_parallelComp_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/lintegral-parallelcomp-symm--639ac75f4b8e0c8a286d40dc.md) | 112 | `result-track:639ac75f4b8e0c8a286d40dcfe31cf2125d083f46a9124e58c7c34a841920691` |
| 10 | `lemma` | [parallelComp_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-sum-left--5bf2ff0d2405b3b6fa37e42b.md) | 117 | `result-track:5bf2ff0d2405b3b6fa37e42bc08ed3a0304a634cb30f3515c93a6f893b03e170` |
| 11 | `lemma` | [parallelComp_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/parallelcomp-sum-right--3bab3e33576fef7c18fd0145.md) | 125 | `result-track:3bab3e33576fef7c18fd0145fac40e4cbf347e8117cb2d8e22ff59df826331b5` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/instance--b0f4dfa5c1ff080ded3030de.md) | 133 | `declaration-track:b0f4dfa5c1ff080ded3030de4b21bec9ddb0daf06ed47b80ef9de714b901381e` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/instance--7db034382ff0187e6b6ee843.md) | 136 | `declaration-track:7db034382ff0187e6b6ee843df4c5b898e2e49139d020b31f48a9e101b7d172e` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/instance--665796eb69930ba9c4256e5c.md) | 140 | `declaration-track:665796eb69930ba9c4256e5c6d650158982972cb4cd7cffdcd5d4551c499cf0e` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ParallelComp/Variant3024454f21244cc74c84345439d8d5794714b9b3ad418ab73659247262658a7e.lean/declarations/instance--4d0bbe17c9f5fece8f5977a3.md) | 151 | `declaration-track:4d0bbe17c9f5fece8f5977a33b93f2e98bb0c3bf150935da22f03bc9c4eb0ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
