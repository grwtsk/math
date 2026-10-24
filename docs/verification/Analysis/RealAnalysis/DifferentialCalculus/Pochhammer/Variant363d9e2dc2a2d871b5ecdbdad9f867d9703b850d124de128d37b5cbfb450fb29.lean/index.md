# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pochhammer.Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af9738747a343e3e08735bf0cf94d35b319ef86b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af9738747a343e3e08735bf0cf94d35b319ef86b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Piecewise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Jensen` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/differentiable-descpochhammer-eval--3f9d4be0732f9f4091f38b11.md) | 38 | `result-track:3f9d4be0732f9f4091f38b112ecb32251b3f6ca118dcef8d44e626a2ec351b11` |
| 2 | `theorem` | [continuous_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/continuous-descpochhammer-eval--9d7e54be640c76b08aaf9f95.md) | 42 | `result-track:9d7e54be640c76b08aaf9f956bcb1a7a5b9cfc2ac124493859c8b01993e1edc7` |
| 3 | `lemma` | [deriv_descPochhammer_eval_eq_sum_prod_range_erase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/deriv-descpochhammer-eval-eq-sum-prod-range-erase--c8280f97c5e7ee8af0a47aef.md) | 45 | `result-track:c8280f97c5e7ee8af0a47aefbe4dbe2c97e249a11877ca9715fb663b5e718022` |
| 4 | `lemma` | [monotoneOn_deriv_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/monotoneon-deriv-descpochhammer-eval--4c7993b58a1331a6d13855e4.md) | 51 | `result-track:4c7993b58a1331a6d13855e42a156a7fde5ae851a2c17b7325f1a838c95b7f63` |
| 5 | `theorem` | [convexOn_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/convexon-descpochhammer-eval--c0aa9aea72cbc87b8edadef2.md) | 69 | `result-track:c0aa9aea72cbc87b8edadef232a651afa0a3599e08b4c8f86a7765d3be1a1ea5` |
| 6 | `lemma` | [piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/piecewise-ici-descpochhammer-eval-zero-eq-descfactorial--6cbf91a3e70abcab42f5cd74.md) | 79 | `result-track:6cbf91a3e70abcab42f5cd74c2525cb54d6f345a11a3c68d45a66467bf5df7f4` |
| 7 | `lemma` | [convexOn_piecewise_Ici_descPochhammer_eval_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/convexon-piecewise-ici-descpochhammer-eval-zero--f62c62d2e644e5a4d2b5a3a8.md) | 86 | `result-track:f62c62d2e644e5a4d2b5a3a8759d8a4a99fdd782d9b0f889dd7a77179b40194f` |
| 8 | `theorem` | [descPochhammer_eval_le_sum_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/descpochhammer-eval-le-sum-descfactorial--70630d3e588477fa7c7f5ba2.md) | 95 | `result-track:70630d3e588477fa7c7f5ba2d2c1874eb2255cc9466198f7f8fd35b2c893d713` |
| 9 | `theorem` | [descPochhammer_eval_div_factorial_le_sum_choose](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/declarations/descpochhammer-eval-div-factorial-le-sum-choose--ba90985285d32bf2a5ce6196.md) | 107 | `result-track:ba90985285d32bf2a5ce61966a74b233500dd9bc6039ed9b3211b77cce81d929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
