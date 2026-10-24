# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WithZero.Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f725be9929fc87f2e0e7ef871d5479427a0128a9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f725be9929fc87f2e0e7ef871d5479427a0128a9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toNNReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal--8f8600842a6ee5cfdc633f6f.md) | 41 | `declaration-track:8f8600842a6ee5cfdc633f6fb0c7235cd20992c1ad80678ab22e4e73f3cd4356` |
| 2 | `theorem` | [toNNReal_pos_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-pos-apply--8e3a35623ca37eb2b2dee0c7.md) | 59 | `result-track:8e3a35623ca37eb2b2dee0c7701943fa019465f8de261d77f490186c6e7bf238` |
| 3 | `theorem` | [toNNReal_neg_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-neg-apply--cbebee87670a342877b5415a.md) | 64 | `result-track:cbebee87670a342877b5415af2f9a495bc023ccc49d6e8cda5954d32a02ebe5b` |
| 4 | `theorem` | [toNNReal_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-ne-zero--c1c6504f606e2d9ba8e03bd5.md) | 72 | `result-track:c1c6504f606e2d9ba8e03bd5ea56acaaa6f2bdb3d25bd6199ac387f3722537e2` |
| 5 | `theorem` | [toNNReal_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-pos--2d59e537e6bae4d71cd90868.md) | 76 | `result-track:2d59e537e6bae4d71cd908680c2b0047f98267545771f992612e15a27bbaabf3` |
| 6 | `theorem` | [toNNReal_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-strictmono--36c988de9ba3b2b1bdad5a12.md) | 80 | `result-track:36c988de9ba3b2b1bdad5a12b796ac4e7b67ea95932acc81f72c7dff586585d8` |
| 7 | `theorem` | [toNNReal_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-eq-one-iff--919d7709365a613cb80bff78.md) | 92 | `result-track:919d7709365a613cb80bff7889fc6b31e77dc37baa64bb08b175e4b7b4754c55` |
| 8 | `theorem` | [toNNReal_lt_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-lt-one-iff--18980bb222e2dea7a119d27f.md) | 100 | `result-track:18980bb222e2dea7a119d27fe1cccd5cc0b9e3e32659b58dbc3deae83e866e7d` |
| 9 | `theorem` | [toNNReal_le_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WithZero/Variantc08904222720bb7148b11720a3a7b69a31fa76675437de0dc9d628ea61393daa.lean/declarations/tonnreal-le-one-iff--d69bc7f867b36c87f213f04c.md) | 104 | `result-track:d69bc7f867b36c87f213f04cbfa47519884ded96c69e25798c241f46427bd55d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
