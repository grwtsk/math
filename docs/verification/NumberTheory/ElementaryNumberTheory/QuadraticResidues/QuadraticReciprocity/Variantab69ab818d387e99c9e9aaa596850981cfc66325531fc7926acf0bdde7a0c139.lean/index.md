# Verification target: GRWTSK.NumberTheory.QuadraticReciprocity.Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d412108318cebe8b0a4ddb24b8c26461ee45e9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d412108318cebe8b0a4ddb24b8c26461ee45e9`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.GaussSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [at_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/at-two--de5d8c6e0481079aa2ee687f.md) | 60 | `result-track:de5d8c6e0481079aa2ee687fcdf56c6c864b786a6bc890c1f25600ac9e28d583` |
| 2 | `theorem` | [at_neg_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/at-neg-two--70302c5fd6ff618ba7bad7b0.md) | 66 | `result-track:70302c5fd6ff618ba7bad7b054163b03d43d03f9972f9b3955506a5cf3db1fa4` |
| 3 | `theorem` | [exists_sq_eq_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/exists-sq-eq-two-iff--f2911d08b6919b18b094d9e9.md) | 78 | `result-track:f2911d08b6919b18b094d9e9b5726621b20e0d6305242ddbac031a6c9f95c78c` |
| 4 | `theorem` | [exists_sq_eq_neg_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/exists-sq-eq-neg-two-iff--ad849366f880b8bb13d1b779.md) | 89 | `result-track:ad849366f880b8bb13d1b77919e8e0bc506f1af94adee6e55c73e7cb376c4f14` |
| 5 | `theorem` | [quadratic_reciprocity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/quadratic-reciprocity--76bf19616d5c1e0f22d62181.md) | 121 | `result-track:76bf19616d5c1e0f22d62181162f412d0d14ef3b26446aecd2e8eceb6ec8cc74` |
| 6 | `theorem` | [quadratic_reciprocity'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/quadratic-reciprocity--031120072780c0c76d6f8d78.md) | 138 | `result-track:031120072780c0c76d6f8d78291a878690e0e76005a57640941f9ad14e45b4da` |
| 7 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/quadratic-reciprocity-one-mod-four--d76cb6026d135d6cb93d5825.md) | 150 | `result-track:d76cb6026d135d6cb93d58252b3ae4345383502b20a1d88a77faaeb36ccbaa1c` |
| 8 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/quadratic-reciprocity-three-mod-four--dbbc437db867771643ba82e7.md) | 158 | `result-track:dbbc437db867771643ba82e78c87d047907a3bed8939f2be44eb853004a428b2` |
| 9 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-one--116b49d0c396c2a4e9e8b3a5.md) | 173 | `result-track:116b49d0c396c2a4e9e8b3a5a2616b462402bd06c646f2bf75282b31a690d1bb` |
| 10 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-three--145beca8248e7172ac92e7a5.md) | 183 | `result-track:145beca8248e7172ac92e7a595f547840bcf9f72c6698f68812d19d2a290c186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
