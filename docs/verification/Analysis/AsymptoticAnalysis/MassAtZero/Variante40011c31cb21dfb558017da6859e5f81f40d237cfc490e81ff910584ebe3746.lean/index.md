# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MassAtZero.Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98a4847ed74bd635065c584097329fccf2609632",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98a4847ed74bd635065c584097329fccf2609632`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Log` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.PosDef` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_derivative_inverse](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/log-derivative-inverse--181ea0c1ea53fc8f73c72a04.md) | 30 | `result-track:181ea0c1ea53fc8f73c72a0458d39f4096efbe73d9e777109b9822c2d548045b` |
| 2 | `theorem` | [derivative_logOf_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/derivative-logof-exp--593f23388ae344e78b1aceb1.md) | 46 | `result-track:593f23388ae344e78b1aceb18065a6876f5c2d894cf2e015e5a1a7fef766ae2e` |
| 3 | `theorem` | [logOf_exp_eq_X](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/logof-exp-eq-x--3bb2703e14852d95c5b584a5.md) | 57 | `result-track:3bb2703e14852d95c5b584a508151174ce3607beccbca9de84add59a885d9766` |
| 4 | `def` | [powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/powertrace--e0173c0a34d257e6b7ee0bd3.md) | 72 | `declaration-track:e0173c0a34d257e6b7ee0bd3689ec3a605a04afe9b701f76c2eb19e867779235` |
| 5 | `theorem` | [powerTrace_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/powertrace-exact--4c805359d0610ef60e32a861.md) | 76 | `result-track:4c805359d0610ef60e32a8612e8c2bf9f11317f151d5063d7bc4412c30b63bb4` |
| 6 | `theorem` | [first_powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/first-powertrace--dfe0cce8aee8b5beb3f08eaa.md) | 82 | `result-track:dfe0cce8aee8b5beb3f08eaa54176c729b0d5e98c67f1f2c12857dceed5431e9` |
| 7 | `theorem` | [later_powerTrace](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/later-powertrace--2be472bbefe8c63f6f57254f.md) | 83 | `result-track:2be472bbefe8c63f6f57254f61a163f50cceb748109e94c8cd90209bb5e5e31c` |
| 8 | `def` | [functional](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/functional--596c3783dc4aab12567a165d.md) | 87 | `declaration-track:596c3783dc4aab12567a165d0b78da34a925b90a7ab416a2e94c5b45ac14f01c` |
| 9 | `theorem` | [functional_monomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/functional-monomial--00c6ea3e16d5d88f62d709ba.md) | 89 | `result-track:00c6ea3e16d5d88f62d709ba2b4645cbb40605606b8dd54be84e129704722c07` |
| 10 | `theorem` | [functional_square_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/functional-square-nonneg--9e7904de7688bf83cccf42fc.md) | 92 | `result-track:9e7904de7688bf83cccf42fcdd86a00e2ef4e6239534ac3488247a8fb9d7d456` |
| 11 | `theorem` | [functional_shifted_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/functional-shifted-square--3c53986f9769dcd0c795eb3e.md) | 95 | `result-track:3c53986f9769dcd0c795eb3e5b1e6183ad2219859a7eaa9912fe1ddf70a49837` |
| 12 | `theorem` | [dirac_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/dirac-moment--d6b4aa09faaa7ba9f1f78738.md) | 98 | `result-track:d6b4aa09faaa7ba9f1f7873844e7209adc0b29810f85ba0dc43136ec0598c495` |
| 13 | `theorem` | [dirac_functional](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/dirac-functional--0cfe4a8204261a4f3360b159.md) | 102 | `result-track:0cfe4a8204261a4f3360b1599a7ee992b36206e3a3b78187fcbb96be66d0e084` |
| 14 | `theorem` | [dirac_moment_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/dirac-moment-integrable--945b539f5c05998e1a66cd67.md) | 105 | `result-track:945b539f5c05998e1a66cd675db367406fd757f90aa327fb387ce43705ac765a` |
| 15 | `def` | [hankel](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/hankel--4139d9ebf5aba189a469814e.md) | 110 | `declaration-track:4139d9ebf5aba189a469814ee8da9ae9e899189b396a62b71ab95a7901b5ea33` |
| 16 | `theorem` | [unshifted_hankel_eq_diagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/unshifted-hankel-eq-diagonal--bf5c6216ed2a2790deb11847.md) | 113 | `result-track:bf5c6216ed2a2790deb1184721cbc16d315bd7b7e852ebe843081ad88e255efb` |
| 17 | `theorem` | [unshifted_hankel_posSemidef](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/unshifted-hankel-possemidef--805956327d057c87632516e0.md) | 128 | `result-track:805956327d057c87632516e0cccc38a36dfd1b35e339c92f33ace1c93963b678` |
| 18 | `theorem` | [shifted_hankel_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/shifted-hankel-eq-zero--4b555efabb92c2e71f27498d.md) | 134 | `result-track:4b555efabb92c2e71f27498d6a30e80b82629548b4e01e21a88ee57f79643a87` |
| 19 | `theorem` | [shifted_hankel_posSemidef](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/shifted-hankel-possemidef--1e188ceee13253a2a9f142e9.md) | 138 | `result-track:1e188ceee13253a2a9f142e9e989d98db38fb56465b83e9662215ba3a45a2b8d` |
| 20 | `theorem` | [dirac_response](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/dirac-response--4d64f62793d35e67106bed96.md) | 142 | `result-track:4d64f62793d35e67106bed96f9b363acf5a6496fd57bda4b67f18383dc0168f3` |
| 21 | `def` | [traceMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/tracemeasure--180a0815ded34407e7375e72.md) | 146 | `declaration-track:180a0815ded34407e7375e72064f4c1307168d03e69db7e57f5a4aa186100d88` |
| 22 | `theorem` | [traceMeasure_zero_atom](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/tracemeasure-zero-atom--43e11b6fedd2b4fb02c4de44.md) | 149 | `result-track:43e11b6fedd2b4fb02c4de44bedcf1b65236bdf0ac4a25b9f51d4e112c624709` |
| 23 | `theorem` | [traceMeasure_ne_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/tracemeasure-ne-dirac--266049677f255df7d40f62b8.md) | 161 | `result-track:266049677f255df7d40f62b824c84965373c90f213f5062f09a3668c6ebb2636` |
| 24 | `theorem` | [summable_spectrum_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/summable-spectrum-square--714e403e3bb8ee2904bdc151.md) | 168 | `result-track:714e403e3bb8ee2904bdc15159724d58195bcb32af0807e0e8411e855e49631e` |
| 25 | `theorem` | [spectrum_sq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/spectrum-sq-zero--b795e00e1a11689cb52b9d80.md) | 176 | `result-track:b795e00e1a11689cb52b9d80e38e979d7791e5cf8e2e70bf9b0afde5df9c95a6` |
| 26 | `theorem` | [no_summable_power_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/no-summable-power-inventory--34242473792682cf5f98285f.md) | 185 | `result-track:34242473792682cf5f98285f56f43ee06ec6fbfabd9b31aeb5f699bf79f23bf0` |
| 27 | `theorem` | [no_positive_trace_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/MassAtZero/Variante40011c31cb21dfb558017da6859e5f81f40d237cfc490e81ff910584ebe3746.lean/declarations/no-positive-trace-inventory--0ede1863e551716fba9025f5.md) | 192 | `result-track:0ede1863e551716fba9025f5e57adf57e558c47b475d1ceeecd1bcb91d6398d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
