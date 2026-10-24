# Verification target: GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834401db97003240a9690a2043e470749b8f65c8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834401db97003240a9690a2043e470749b8f65c8`.

Source path: `GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/QuadraticGramResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution`](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Fintype.BigOperators` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outer](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/outer--1166d1fd6d183b7ed5835ce4.md) | 43 | `declaration-track:1166d1fd6d183b7ed5835ce407ab213c076009eaec7253c46c5a56640b42f199` |
| 2 | `def` | [featureStep](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/featurestep--5005fc4037866b98769522d5.md) | 46 | `declaration-track:5005fc4037866b98769522d55119aa2bb53608c8b688b0f4be0cf2f8053efdc2` |
| 3 | `def` | [liftedGain](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/liftedgain--7543f45dcbaedbc479856fea.md) | 50 | `declaration-track:7543f45dcbaedbc479856fea6b30c348bcbd5ebcc680faf023b4545bbbfba98b` |
| 4 | `def` | [pairWeight](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/pairweight--2775528c096d8a4e0bc77aa8.md) | 54 | `declaration-track:2775528c096d8a4e0bc77aa8c363ca17407dd0e22b54952dd145b5a7d77a0e97` |
| 5 | `def` | [gram](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram--1c9e347e771f362e1d1c0a75.md) | 58 | `declaration-track:1c9e347e771f362e1d1c0a75cb803dc2308b46ed7c12736a2260039bcfd40a19` |
| 6 | `def` | [quadraticReadout](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/quadraticreadout--ddd6718b951f3decf2ebc2f2.md) | 62 | `declaration-track:ddd6718b951f3decf2ebc2f21ff37dfcf6bf48ece2e6e8d3b504c81d791c7497` |
| 7 | `def` | [gramInjection](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/graminjection--4d2ee22f2054bac7b8d6dc08.md) | 66 | `declaration-track:4d2ee22f2054bac7b8d6dc08a17eab40e5bd29a98ab3148cc685d00161c890a0` |
| 8 | `theorem` | [sum_pair_mul](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/sum-pair-mul--e92924db7932ec87475d5d1c.md) | 73 | `result-track:e92924db7932ec87475d5d1cb6013cc95369e4a059cc9cd38f3fb124daad7ecf` |
| 9 | `theorem` | [outer_featureStep](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/outer-featurestep--c4bc27437698d0adae3b0e68.md) | 79 | `result-track:c4bc27437698d0adae3b0e68bd4d42bbbcbd286ed8fe661082cea72fc55fa913` |
| 10 | `theorem` | [gram_transport](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-transport--552cdf427aafcde0c081bee3.md) | 92 | `result-track:552cdf427aafcde0c081bee347cc4c212c2eecc40e5651545a97b8bab8dae06a` |
| 11 | `theorem` | [gram_update](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-update--85b905db76460a82d2eeca5e.md) | 100 | `result-track:85b905db76460a82d2eeca5ee9e65f9c266fbc011e670fdc968761550afc02d8` |
| 12 | `theorem` | [gram_readout](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-readout--b384686ef3cd241f3503cf6c.md) | 112 | `result-track:b384686ef3cd241f3503cf6c2744e85e828e433152f4a9b1edffe3ff5a005fee` |
| 13 | `theorem` | [gram_readout_nonnegative](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-readout-nonnegative--66fa43156ab13bf62075ba61.md) | 131 | `result-track:66fa43156ab13bf62075ba611836e0f2b8346b9dda41abe413db75d32d181c3d` |
| 14 | `theorem` | [lifted_column_factorization](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/lifted-column-factorization--f95e0b504dd2d6f9b9d40342.md) | 137 | `result-track:f95e0b504dd2d6f9b9d4034236582cb73bff13a45d95b50bf3feb17adb1e59cb` |
| 15 | `theorem` | [lifted_column_bound](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/lifted-column-bound--a254ea01b8c0700f63ad01f6.md) | 153 | `result-track:a254ea01b8c0700f63ad01f609599c5595f168366723b5fd5d9902bfa1a1782d` |
| 16 | `theorem` | [pair_consumer_bound](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/pair-consumer-bound--853b85fb4294bbf3e583853b.md) | 169 | `result-track:853b85fb4294bbf3e583853b136ba733bd0a4f599a9a299bddf19c071ebff504` |
| 17 | `theorem` | [gram_stageDefect](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-stagedefect--74d9174075d1064611974041.md) | 178 | `result-track:74d9174075d1064611974041cd06269a21725220eccf67b8a8c21f24f918bf69` |
| 18 | `theorem` | [gram_residual_forcing](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/gram-residual-forcing--9b85715e5face27e892a61c9.md) | 195 | `result-track:9b85715e5face27e892a61c9a43474b6d3bd099d27ecfa5acd26a734f43ce8af` |
| 19 | `theorem` | [no_fixed_negative_of_gram_defects](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/no-fixed-negative-of-gram-defects--3450eeb89c75c727baeec482.md) | 210 | `result-track:3450eeb89c75c727baeec482a5b9afaa0abb05a93ff5d952ea599b330fb8aedb` |
| 20 | `theorem` | [shared_injection_quadratic_difference](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/shared-injection-quadratic-difference--feff8aefaf03d85eb1bdef6f.md) | 250 | `result-track:feff8aefaf03d85eb1bdef6fa76b2029a8c02b7329f8907d4c4d90ce6141c1ad` |
| 21 | `theorem` | [mixed_terms_required_fixture](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/mixed-terms-required-fixture--8f93825110792f3cef981f14.md) | 256 | `result-track:8f93825110792f3cef981f145ccaa932ac1e0d261b50de6775c4f57ec03c14a9` |
| 22 | `def` | [reflectionBlock](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/reflectionblock--39cd5fb1ac3c33f536745908.md) | 261 | `declaration-track:39cd5fb1ac3c33f536745908d75079207baf6784dd27a9bb53666e847e93ae39` |
| 23 | `def` | [antisymmetricTest](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/antisymmetrictest--69471cceb4d48fc1a3d2cc76.md) | 263 | `declaration-track:69471cceb4d48fc1a3d2cc7611f21110f297dc00a912f749d77a450925d702a1` |
| 24 | `theorem` | [reflection_block_negative](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/reflection-block-negative--11d842bb4076ffdcbba66ff7.md) | 266 | `result-track:11d842bb4076ffdcbba66ff7862948ea99dc82d592a8c7e9a9cc33e431f3e116` |
| 25 | `theorem` | [reflection_block_gram_error_floor](../../../../mathematics/Analysis/ErrorBounds/QuadraticGramResidual.lean/declarations/reflection-block-gram-error-floor--a46114b6d5f9b2f39da7b67b.md) | 272 | `result-track:a46114b6d5f9b2f39da7b67b98511a3dc5b9e8c5f1f996807dfd74a0ea029d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
