# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pochhammer.Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fa9fd5db3018c80895c816036c2102ae80ee37b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fa9fd5db3018c80895c816036c2102ae80ee37b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/differentiable-descpochhammer-eval--c00a9f4e7ccdd6e2b0048182.md) | 50 | `result-track:c00a9f4e7ccdd6e2b0048182ec08f8f3a8373bb04943ea54cb08fa68ece07257` |
| 2 | `theorem` | [continuous_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/continuous-descpochhammer-eval--b97c3c20da786a190458fb88.md) | 54 | `result-track:b97c3c20da786a190458fb8847d19d1c21085a8ce8276a9643da0d1d57f3c9db` |
| 3 | `lemma` | [deriv_descPochhammer_eval_eq_sum_prod_range_erase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/deriv-descpochhammer-eval-eq-sum-prod-range-erase--a2553254c6ff93253652a7a1.md) | 57 | `result-track:a2553254c6ff93253652a7a14abe8ffe84db592fe4008d4e2b91b22074545bd4` |
| 4 | `lemma` | [monotoneOn_deriv_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/monotoneon-deriv-descpochhammer-eval--c0fb6241b70cd348ee36ffba.md) | 63 | `result-track:c0fb6241b70cd348ee36ffba556e6edc18e71b7320607733078af5d97f1dceaa` |
| 5 | `theorem` | [convexOn_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/convexon-descpochhammer-eval--221831ea5cf84523e61a3898.md) | 78 | `result-track:221831ea5cf84523e61a3898a5383e40c017eb5ba153a2344234a7311fa0a9bf` |
| 6 | `lemma` | [piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/piecewise-ici-descpochhammer-eval-zero-eq-descfactorial--53439820f2de2c47c31b6874.md) | 88 | `result-track:53439820f2de2c47c31b68746ff5af74e828ba12292b60f8c07a6bba61a103c5` |
| 7 | `lemma` | [convexOn_piecewise_Ici_descPochhammer_eval_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/convexon-piecewise-ici-descpochhammer-eval-zero--6d984d71409c260e99aa2299.md) | 95 | `result-track:6d984d71409c260e99aa22996afa226010288228d42dbde8198d634095b7acb5` |
| 8 | `theorem` | [descPochhammer_eval_le_sum_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/descpochhammer-eval-le-sum-descfactorial--3260f8b7b8a90b5eba46c33a.md) | 104 | `result-track:3260f8b7b8a90b5eba46c33a08ba32523581c38a50ccf4c9934079613e6ea15f` |
| 9 | `theorem` | [descPochhammer_eval_div_factorial_le_sum_choose](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284.lean/declarations/descpochhammer-eval-div-factorial-le-sum-choose--6ff21498bc1e884e522c27d4.md) | 116 | `result-track:6ff21498bc1e884e522c27d478fbacb8828fd68080df5f7fe05d246b38cb9695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
