# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ExpLog.Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7412942e9297f232b074c7734561d580735a5c0c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7412942e9297f232b074c7734561d580735a5c0c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Summable.clog_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean/declarations/summable-clog-one-sub--d48e98c75c4d824261438210.md) | 31 | `result-track:d48e98c75c4d824261438210998bedfd363725951fadc62554fd8cda7cefa047` |
| 2 | `theorem` | [exp_tsum_primes_log_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ExpLog/Variantb6a49e93f3e8f669397cdc89e7f9b5b16fbe30ce84c88d6454e1f73885b06662.lean/declarations/exp-tsum-primes-log-eq-tsum--5509ae5e9edf6f2a196c297b.md) | 43 | `result-track:5509ae5e9edf6f2a196c297b31d3c5bf6ce04f0e295dcd2f19e18dcd13cef49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
