# Verification target: GRWTSK.Algebra.Imo2013Q5.Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668711c3df3cf32942ddf42e4bc11f42f1a59de8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668711c3df3cf32942ddf42e4bc11f42f1a59de8`.

Source path: `GRWTSK/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/macro-rules--225e9e922023cacb7ac067f5.md) | 35 | `declaration-track:225e9e922023cacb7ac067f501c510cac1d9cf651a168bdfed1d906273fdea5d` |
| 2 | `theorem` | [le_of_all_pow_lt_succ](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/le-of-all-pow-lt-succ--2f3eab1f20a8bb7f07d47ea6.md) | 39 | `result-track:2f3eab1f20a8bb7f07d47ea665fd915c9a3727a62f28f4b4399df4ef674780a9` |
| 3 | `theorem` | [le_of_all_pow_lt_succ'](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/le-of-all-pow-lt-succ--af434dacac8d7dbc2f8bdf9a.md) | 71 | `result-track:af434dacac8d7dbc2f8bdf9a0f8059c98265bc9603b6fa77ab03ce7b6aeb14d1` |
| 4 | `theorem` | [f_pos_of_pos](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/f-pos-of-pos--2023320d3ae0fefbe405a331.md) | 94 | `result-track:2023320d3ae0fefbe405a331261fd2a89b4f5a08c2035a6b17a6854cc4870180` |
| 5 | `theorem` | [fx_gt_xm1](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/fx-gt-xm1--da8ad66435ad17608590458e.md) | 113 | `result-track:da8ad66435ad17608590458e937ce2efb1f12ebca62254d412d64a7194e1f706` |
| 6 | `theorem` | [pow_f_le_f_pow](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/pow-f-le-f-pow--f9af325aba05defc5c97b1ef.md) | 130 | `result-track:f9af325aba05defc5c97b1efc6fa1e90ccbb9c8c4597a63475f97316fd3e477a` |
| 7 | `theorem` | [fixed_point_of_pos_nat_pow](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/fixed-point-of-pos-nat-pow--3bf96d09c07b1af9419704d1.md) | 145 | `result-track:3bf96d09c07b1af9419704d13d2212fe641d87e858844b0a3ba08490c916d0c9` |
| 8 | `theorem` | [fixed_point_of_gt_1](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/fixed-point-of-gt-1--74ad0520e98e45c5b8fc7e40.md) | 157 | `result-track:74ad0520e98e45c5b8fc7e409a22983700e2c5f743f473f3641a2c75b7fb1692` |
| 9 | `theorem` | [imo2013_q5](../../../../mathematics/Algebra/Imo2013Q5/Variant0c2e9ccaf4bd8b0f6a36f5a5df872f6d45e6b55edf64a7ab4140e0873cf0494a.lean/declarations/imo2013-q5--045d1216869a0f392e2b3046.md) | 184 | `result-track:045d1216869a0f392e2b304612e74d473e40ce46ca12aa90600a77af51f1713b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
