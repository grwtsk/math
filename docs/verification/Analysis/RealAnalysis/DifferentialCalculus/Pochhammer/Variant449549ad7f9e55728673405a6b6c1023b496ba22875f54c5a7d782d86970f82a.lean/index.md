# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pochhammer.Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7488a457bd6318671c784147c94501fb74ace81",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7488a457bd6318671c784147c94501fb74ace81`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Piecewise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/differentiable-descpochhammer-eval--cea911719dd03e0ff5cd5244.md) | 46 | `result-track:cea911719dd03e0ff5cd5244c8d69f8100382ea5e6ef0fc7c5d3db07d9311f93` |
| 2 | `theorem` | [continuous_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/continuous-descpochhammer-eval--ab06a6f90be22db4be70b02a.md) | 50 | `result-track:ab06a6f90be22db4be70b02a02a3eff034c4d0c4aa168aa7352d27e18ef3f615` |
| 3 | `lemma` | [deriv_descPochhammer_eval_eq_sum_prod_range_erase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/deriv-descpochhammer-eval-eq-sum-prod-range-erase--9f14ee77667eae8bf83c2824.md) | 53 | `result-track:9f14ee77667eae8bf83c28246b251f1604acf196752870d70487d4be87780c0c` |
| 4 | `lemma` | [monotoneOn_deriv_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/monotoneon-deriv-descpochhammer-eval--53b21241e3ca15341a5e4e80.md) | 59 | `result-track:53b21241e3ca15341a5e4e80ce2d737a98d922e9efd7d6983b3be9523ef2c950` |
| 5 | `theorem` | [convexOn_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/convexon-descpochhammer-eval--079f656321b968d3b2b9c0f5.md) | 77 | `result-track:079f656321b968d3b2b9c0f59a94a534ff4232b2276d2e2dde9227e22b804f7f` |
| 6 | `lemma` | [piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/piecewise-ici-descpochhammer-eval-zero-eq-descfactorial--25c9e2451f225a8f7640360d.md) | 87 | `result-track:25c9e2451f225a8f7640360d7ef7871060ffc21c0bd42c990b3f01363e68b8c7` |
| 7 | `lemma` | [convexOn_piecewise_Ici_descPochhammer_eval_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/convexon-piecewise-ici-descpochhammer-eval-zero--19c8ade599c7b35467f267d1.md) | 94 | `result-track:19c8ade599c7b35467f267d1c9444176c49bd84910218bcca0256aa80e42999f` |
| 8 | `theorem` | [descPochhammer_eval_le_sum_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/descpochhammer-eval-le-sum-descfactorial--4e73db690b7bbd89ff6672b0.md) | 103 | `result-track:4e73db690b7bbd89ff6672b0ab4d5c2a310013306b89d86fa9b54aecf561a4ce` |
| 9 | `theorem` | [descPochhammer_eval_div_factorial_le_sum_choose](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant449549ad7f9e55728673405a6b6c1023b496ba22875f54c5a7d782d86970f82a.lean/declarations/descpochhammer-eval-div-factorial-le-sum-choose--256550ade987476b42ed1003.md) | 115 | `result-track:256550ade987476b42ed1003477d9e5e947c58465b0317f30e3a898d5e295aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
