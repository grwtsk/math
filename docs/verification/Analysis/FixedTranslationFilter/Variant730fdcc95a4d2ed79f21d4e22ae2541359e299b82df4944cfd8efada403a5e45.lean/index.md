# Verification target: GRWTSK.Analysis.FixedTranslationFilter.Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e106710766f58bf9a4842958430860d11f88f9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/index.md) · [Full source](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e106710766f58bf9a4842958430860d11f88f9`.

Source path: `GRWTSK/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplier](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/multiplier--75a4a7034c18f58c79d00138.md) | 27 | `declaration-track:75a4a7034c18f58c79d001385c90ff714e76e05e81ceb9880eea55d5fa85bc18` |
| 2 | `theorem` | [exact_binomial_multiplier](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/exact-binomial-multiplier--5d0a4f7cf97892f7f424337c.md) | 31 | `result-track:5d0a4f7cf97892f7f424337c1fa343aa95565b71de0532112e0d23c25ec3a563` |
| 3 | `theorem` | [right_half_plane_exp_norm](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/right-half-plane-exp-norm--0cbb4b45d9dda1706d21b53f.md) | 43 | `result-track:0cbb4b45d9dda1706d21b53f0709b5e6ea125bd3a9e6a08afe22f82bc3946889` |
| 4 | `theorem` | [exp_shift_not_one](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/exp-shift-not-one--d89d9a3decb5b20b945b2b1a.md) | 50 | `result-track:d89d9a3decb5b20b945b2b1a8438180f704713d1044e4a597545ef92899e0e98` |
| 5 | `theorem` | [multiplier_retains_every_right_detector](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/multiplier-retains-every-right-detector--3b6ef2cbe5e6e44a79f4eabb.md) | 57 | `result-track:3b6ef2cbe5e6e44a79f4eabbdbdfd018685b203c7c82ebde9b0d32a28f86e640` |
| 6 | `def` | [weightedSource](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/weightedsource--b2d6e165c388a6a904b7340c.md) | 62 | `declaration-track:b2d6e165c388a6a904b7340ca9a28dce9aa3036b7a0c276627b42a0bae0959d2` |
| 7 | `def` | [ninthDifference](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/ninthdifference--22c88c0ebaf8ede024d0f453.md) | 64 | `declaration-track:22c88c0ebaf8ede024d0f4536e236342c65d3476bccb1470ca63b1943b88a8c6` |
| 8 | `theorem` | [ninth_difference_retains_complete_source](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/ninth-difference-retains-complete-source--59721c7598fe500c4d76559a.md) | 68 | `result-track:59721c7598fe500c4d76559ac6bbab791a578c5e08957c109e2638ebc48e21e4` |
| 9 | `theorem` | [every_probe_retains_source_domain](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/every-probe-retains-source-domain--accfe1e0c27f6f749945be41.md) | 74 | `result-track:accfe1e0c27f6f749945be4123fd7add8bac5d26402264f765a83cb62aedad73` |
| 10 | `theorem` | [ninth_multiplier_retains_every_right_detector](../../../../mathematics/Analysis/FixedTranslationFilter/Variant730fdcc95a4d2ed79f21d4e22ae2541359e299b82df4944cfd8efada403a5e45.lean/declarations/ninth-multiplier-retains-every-right-detector--930cf22f5582a9ed70436d1f.md) | 78 | `result-track:930cf22f5582a9ed70436d1f79137deb48dfff6da5f955d62100d9956110f06b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
