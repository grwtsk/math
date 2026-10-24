# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92d81b3c5b3310a472f99bfde088821dc9db1328",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92d81b3c5b3310a472f99bfde088821dc9db1328`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailMaj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tailmaj--021a8a97e3482c9fe3be81b8.md) | 27 | `declaration-track:021a8a97e3482c9fe3be81b8212e52c31cbece76e4ea358d9e2eaa1830e78f23` |
| 2 | `lemma` | [tailMaj_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tailmaj-nonneg--5b1d9f8d3759149934b32eb2.md) | 29 | `result-track:5b1d9f8d3759149934b32eb2a0f19a9245060a49bb3eecf489faf685e6122d38` |
| 3 | `lemma` | [summable_tailMaj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/summable-tailmaj--8d842c517c76cfe2c8987963.md) | 31 | `result-track:8d842c517c76cfe2c8987963bb34e442dc112e16645ca37b140e73d031e5a9a6` |
| 4 | `def` | [tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tailmajfrom--34025e9ae6009f142d6ec05c.md) | 39 | `declaration-track:34025e9ae6009f142d6ec05c556e6cbecdd494fb1de751686ad6e26789a25240` |
| 5 | `lemma` | [tailMajFrom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tailmajfrom-nonneg--bc249b720089c8d73b29f3c7.md) | 41 | `result-track:bc249b720089c8d73b29f3c70f7d33bd9a04fa23d3a3e2214217405b6a990bbe` |
| 6 | `lemma` | [tailMajFrom_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tailmajfrom-le--580433ca55d63fb29ba4af09.md) | 44 | `result-track:580433ca55d63fb29ba4af09101fc03523715edc52285760d9e1d3f7c9834e26` |
| 7 | `lemma` | [summable_tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/summable-tailmajfrom--04dc350fa2b403334735a0c4.md) | 47 | `result-track:04dc350fa2b403334735a0c497fe8343b6366cbb4adbeb311129b367678bd48b` |
| 8 | `lemma` | [tsum_tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/tsum-tailmajfrom--03e93f736a39a1a2327607ac.md) | 51 | `result-track:03e93f736a39a1a2327607ac961b5eef2cce6206b4f86bf5c68dc13cb8ec82bd` |
| 9 | `theorem` | [Fmaj_tail_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5994c64fdfe4f80b951b6f6ba2a48702431f492f2086fc8aabc873049b5aa2fb.lean/declarations/fmaj-tail-small--9076153da06ceb4250ecf5a7.md) | 62 | `result-track:9076153da06ceb4250ecf5a75e18eae08c26d3c795d1891cfeffa236e3eece06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
