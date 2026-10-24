# Verification target: GRWTSK.Analysis.SpecialFunctions.Monotone.Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6b70bd4eaffa09bea7e907b0576e7f8ba1074dc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6b70bd4eaffa09bea7e907b0576e7f8ba1074dc`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_mul_self_monotoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/declarations/log-mul-self-monotoneon--e331ba2f2efa2e0407d5938d.md) | 28 | `result-track:e331ba2f2efa2e0407d5938d10fa7d3bb2f2fec79db25abe1d3033127752105c` |
| 2 | `theorem` | [log_div_self_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/declarations/log-div-self-antitoneon--b7ac4e5ff8a7e1ea45118f69.md) | 36 | `result-track:b7ac4e5ff8a7e1ea45118f699fab14cdc34823b65b4b023ff9a91dabae5a1db6` |
| 3 | `theorem` | [log_div_self_rpow_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/declarations/log-div-self-rpow-antitoneon--63719eeff101d01c6c663420.md) | 50 | `result-track:63719eeff101d01c6c663420025e796622e0e1a0d73fa95f2c07797e6c45ff20` |
| 4 | `theorem` | [log_div_sqrt_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant725cd868a7f44b926a7ce2c4077bcbcb5613f1f0a64217497c2812cd4674310b.lean/declarations/log-div-sqrt-antitoneon--8d42a3a6b3a05e85ee9e2ad6.md) | 76 | `result-track:8d42a3a6b3a05e85ee9e2ad6e5f3163e89b48d9f0ff5caa21ddd7e06f026f609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
