# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinal.Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3300513a1295ed3bf617b0eb89b4211403ec0b55",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3300513a1295ed3bf617b0eb89b4211403ec0b55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_sum_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-eq-sum-lift--dfabc07fa1df352db4b84888.md) | 45 | `result-track:dfabc07fa1df352db4b84888f57909ff2633a10a19a87d528ec54efb16cd2fb3` |
| 2 | `theorem` | [cardinalMk_le_of_le'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-le-of-le--9733588d0c27dee738bc9a69.md) | 52 | `result-track:9733588d0c27dee738bc9a692ba0679277ddbb282c8a91848f8f5f6225e2ab88` |
| 3 | `theorem` | [cardinalMk_le_max_aleph0_of_finite'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-le-max-aleph0-of-finite--27dc46d9b21bbd56eb910963.md) | 66 | `result-track:27dc46d9b21bbd56eb91096386ae53584c341558d0c915b54b35a6b9a1bfd224` |
| 4 | `theorem` | [cardinalMk_eq_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-eq-sum--38f9aa91d65e065afb5f99a2.md) | 99 | `result-track:38f9aa91d65e065afb5f99a28aaf59a1d8a0b2e4394288f92847e319091855f5` |
| 5 | `theorem` | [cardinalMk_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-le-of-le--ba124a7f4eaaf69cb2b1e8ea.md) | 105 | `result-track:ba124a7f4eaaf69cb2b1e8ea24fd40d5b2295be3b0df0cf03ce892f45de8bb22` |
| 6 | `theorem` | [cardinalMk_le_max_aleph0_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantee6450244957a9658df215ad95be26f557050250fd406c51102d008ac867328d.lean/declarations/cardinalmk-le-max-aleph0-of-finite--8d50fa1ba8c18f24ac30d2a5.md) | 112 | `result-track:8d50fa1ba8c18f24ac30d2a57c4971d81ef58c4edffb81d9b9ac9df457794470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
