# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d02afefd6229fb86c37e083dd340a8211313fb0e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d02afefd6229fb86c37e083dd340a8211313fb0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [e1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/e1--a1e9d00942204388dd1858c7.md) | 68 | `declaration-track:a1e9d00942204388dd1858c729a02b225b90320601f20152050c1b5ad4e2b1c2` |
| 2 | `def` | [e2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/e2--496ff5e00ac6d58fffc6d503.md) | 80 | `declaration-track:496ff5e00ac6d58fffc6d5030e0dd78da19b5f6217bafd890b7dafcb989595d3` |
| 3 | `theorem` | [card_sym_fin_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-sym-fin-eq-multichoose--75a78fe9acff700d9ae55a7a.md) | 96 | `result-track:75a78fe9acff700d9ae55a7a69e3755d750267eb26099041f387beb374205765` |
| 4 | `theorem` | [card_sym_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-sym-eq-multichoose--49af2343bbd586d06d8b742b.md) | 110 | `result-track:49af2343bbd586d06d8b742ba0ab0a64e4beff4ef9c936fbb0aadbd8cf70011f` |
| 5 | `theorem` | [card_sym_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-sym-eq-choose--d49aa84191d15b23d6ad0ed0.md) | 118 | `result-track:d49aa84191d15b23d6ad0ed03e440c048f9ff4fb3f6ee77f17fccfdc3f4e596d` |
| 6 | `theorem` | [card_image_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-image-diag--ae2fbc24e36c10beb705c6bb.md) | 132 | `result-track:ae2fbc24e36c10beb705c6bbf584d81d67846042fd5bcae7685db00461644f8c` |
| 7 | `theorem` | [two_mul_card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/two-mul-card-image-offdiag--5f40fc88933a1f81f9f45fff.md) | 141 | `result-track:5f40fc88933a1f81f9f45fff55989a37ce3a44f33c6cd237a07e21dc53eea99c` |
| 8 | `theorem` | [card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-image-offdiag--445a6bac44c6edb666fdd19a.md) | 166 | `result-track:445a6bac44c6edb666fdd19a0214968d4091761e357097e3b0b5f1bd91bba501` |
| 9 | `theorem` | [card_subtype_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-subtype-diag--6c3e393ee9f96e401793953b.md) | 172 | `result-track:6c3e393ee9f96e401793953bdb170b3400d6d3e2797ab54cf4022a5aba454c5f` |
| 10 | `theorem` | [card_subtype_not_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card-subtype-not-diag--31b8610a494fea39f98b7844.md) | 182 | `result-track:31b8610a494fea39f98b7844923b26b2c6bc9f0d26e204a9d5605da9fe58bb47` |
| 11 | `theorem` | [_root_.Finset.card_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/root-finset-card-sym2--8bafa64172269f32f4b62965.md) | 194 | `result-track:8bafa64172269f32f4b62965bd954ed363a98c7ac8bd68277f5b37e2cbf2cbb5` |
| 12 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/declarations/card--6cbc862d0905b872ff307ab5.md) | 209 | `result-track:6cbc862d0905b872ff307ab5b8e53cb8a254527aca9fcdf84c7b9fb039607cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
