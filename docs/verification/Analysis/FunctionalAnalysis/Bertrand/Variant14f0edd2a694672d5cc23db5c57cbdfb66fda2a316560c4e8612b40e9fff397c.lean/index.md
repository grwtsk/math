# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6941e0effa4dcb03682837eb5ae5757345628ea9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6941e0effa4dcb03682837eb5ae5757345628ea9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Factorization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/real-main-inequality--992ed05aa417385e53081bdb.md) | 50 | `result-track:992ed05aa417385e53081bdb2ab4384f63c5b21129953e19040074b298156660` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/bertrand-main-inequality--7cf55002765a899c546c0a91.md) | 112 | `result-track:7cf55002765a899c546c0a912c6c92083df398896e7ca4e7d4a99be3f091a377` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/centralbinom-factorization-small--cdd78ffb267a6a24f6c50145.md) | 127 | `result-track:cdd78ffb267a6a24f6c50145233de003d2359203d239c75d42aa39d2ffc85ec9` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/centralbinom-le-of-no-bertrand-prime--d82e2807c611666c5099c6a8.md) | 150 | `result-track:d82e2807c611666c5099c6a84549b54e6a8a543de00c38f3190d19e30af9457d` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--d0baf2173a114495923a7177.md) | 183 | `result-track:d0baf2173a114495923a717760480f7b7121049e6a286ae573cb27bc979a8481` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/exists-prime-lt-and-le-two-mul-succ--629e287d5c518ee7b7caf4ef.md) | 201 | `result-track:629e287d5c518ee7b7caf4ef526b31ccd0ebc41dbdb23584886554b81fbd0104` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant14f0edd2a694672d5cc23db5c57cbdfb66fda2a316560c4e8612b40e9fff397c.lean/declarations/exists-prime-lt-and-le-two-mul--42d5a954673c963ce5b98e5f.md) | 211 | `result-track:42d5a954673c963ce5b98e5faf9cb61e965e321483e4e569e8664bc942b46f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
