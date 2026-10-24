# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticDecayAttempt03.Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "292a075a10c6b7cb1dad4dd5f7f737013a614246",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `292a075a10c6b7cb1dad4dd5f7f737013a614246`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/rawmangoldtdecay--bf98659c320cfb264a93108c.md) | 19 | `declaration-track:bf98659c320cfb264a93108c56c60962cd372667a75f5127fabdac003f0622d1` |
| 2 | `def` | [RawPrimeDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/rawprimedecay--af5346fc7db38cae243f37c5.md) | 23 | `declaration-track:af5346fc7db38cae243f37c58e9408111524bd3fb403278a47f2f22e28f3656d` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/inverse-square-integrable--80af2ca201a5a1640c8c2a89.md) | 26 | `result-track:80af2ca201a5a1640c8c2a89816918462453b2c6f709033aa809d36414c1b8db` |
| 4 | `theorem` | [inverse_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/inverse-square-integral--219b4d6a6705205eff23f4fb.md) | 34 | `result-track:219b4d6a6705205eff23f4fb293a2b62a25d8f4d4f25550b248cae62d01f4237` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-remainder-measurable--1c9a8b204a4038421453192d.md) | 43 | `result-track:1c9a8b204a4038421453192d451751f2ff124992658ae6604f20196754a31814` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-remainder-integrable-near-origin--1857a93c787bd0a16789ee18.md) | 47 | `result-track:1857a93c787bd0a16789ee188dd6c0cc2166a17e6619841c744419465406323e` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-remainder-integrable-tail--aaadf6f82ca19b5846f92850.md) | 57 | `result-track:aaadf6f82ca19b5846f928500a386a4b24b198b2c79876fc658ad93db57b908a` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-remainder-integrable--26d37a3e92b2167a396002fb.md) | 65 | `result-track:26d37a3e92b2167a396002fb2bbf486715e0de5b96d9cc31b6f61a53a2fd0c10` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/raw-prime-decay-of-mangoldt--e2bef8efa92f10967640d183.md) | 83 | `result-track:e2bef8efa92f10967640d1830fb4b799957e7bb326cbefc9a5b62bf946bd3eaa` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-prime-remainder-integrable-of-decay--2f6718fd71005fc80af511cc.md) | 99 | `result-track:2f6718fd71005fc80af511cc21112201133fd0644f5d9ddee61628d0a226e1ca` |
| 11 | `theorem` | [tail_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/tail-norm-bound--e0f8e5b4310bdef173e4e39c.md) | 104 | `result-track:e0f8e5b4310bdef173e4e39cf8dd2c1f2285c8d34e27ad3502ad44340a398fc5` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-remainder-tail-bound--a65a84c1380abd68e83df4c5.md) | 118 | `result-track:a65a84c1380abd68e83df4c5354ba5c12aec31d5c57051d6941d24def974fb4e` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt03/Variant63f0d4759056669dca2d610ff36eee1c205f2157e6e7220c93903b0c00ca09ad.lean/declarations/actual-prime-remainder-tail-bound--7daa8fb6072f10227ff6568f.md) | 123 | `result-track:7daa8fb6072f10227ff6568f10d3d197a58bd13be78562800abf3534f284e038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
