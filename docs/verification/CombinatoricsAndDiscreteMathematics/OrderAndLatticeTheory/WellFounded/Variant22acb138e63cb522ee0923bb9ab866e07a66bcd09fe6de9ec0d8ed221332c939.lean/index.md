# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4296ae2c2d8334bbd0a5b58b8d0c7f985a86246d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4296ae2c2d8334bbd0a5b58b8d0c7f985a86246d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_fibration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-fibration--5c9c6706c7ef9605bc2b9bf0.md) | 68 | `result-track:5c9c6706c7ef9605bc2b9bf0dfd022cc0556b896352123d46ae83b2cb1e58457` |
| 2 | `theorem` | [Lex.acc_of_single_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-acc-of-single-erase--7ec6b611236849daaf28122c.md) | 102 | `result-track:7ec6b611236849daaf28122c4b0063085fc5558dc32deea4a12d21377edbf563` |
| 3 | `theorem` | [Lex.acc_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-acc-zero--a5afa209f86eda9e33bc3573.md) | 113 | `result-track:a5afa209f86eda9e33bc357301cfce3aa8807bb509b47232fc97fc2d738fdbf1` |
| 4 | `theorem` | [Lex.acc_of_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-acc-of-single--0b312e82692e205af18c6aae.md) | 117 | `result-track:0b312e82692e205af18c6aaefe8bbf40a82a9554582daf18a4dd2ec5ca9d2f36` |
| 5 | `theorem` | [Lex.acc_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-acc-single--37f2875873210af002077975.md) | 133 | `result-track:37f2875873210af0020779755bad7c4f1599e71a56f10a653e44d2c5a8be65ff` |
| 6 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-acc--10a70e1e4cc2776a82356808.md) | 155 | `result-track:10a70e1e4cc2776a823568086beaa94cbca7f4348ea4c4720ce4765e327c5c87` |
| 7 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-wellfounded--940851d87d8dd6e88ed82a18.md) | 160 | `result-track:940851d87d8dd6e88ed82a18dc56c1ce6d3c627e9366e92e8f6b52337cfdc4e5` |
| 8 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-wellfounded--1a33146733f06854fd46f8e9.md) | 164 | `result-track:1a33146733f06854fd46f8e99e62dac7df19fa8277c83da3aa4bfd109505ab47` |
| 9 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/lex-wellfoundedlt--b72935c087293ece424fc8ba.md) | 172 | `declaration-track:b72935c087293ece424fc8ba51caf22ec88fa56fa894e6268190fc5bf84d43d2` |
| 10 | `theorem` | [Pi.Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/pi-lex-wellfounded--aec6de2acaffb07911e10b0a.md) | 184 | `result-track:aec6de2acaffb07911e10b0acb4fd70b4e71d5f1114440d746097f1320d7fe67` |
| 11 | `instance` | [Pi.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/pi-lex-wellfoundedlt--bf857032ee18b33d5d3a38be.md) | 194 | `declaration-track:bf857032ee18b33d5d3a38be02c65f848fa47faf816fc508f3cd3dbde4a4f8ed` |
| 12 | `instance` | [Function.Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/function-lex-wellfoundedlt--570b12a1b49379cd704db9db.md) | 199 | `declaration-track:570b12a1b49379cd704db9db7880e272e3cdeec7dc79081f6f8cd9abe3a276c3` |
| 13 | `theorem` | [DFinsupp.Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/dfinsupp-lex-wellfounded-of-finite--e014a68e63b3077326aaf07b.md) | 204 | `result-track:e014a68e63b3077326aaf07b2c84a7babd5704eaea8ec73c80d4e74ab720987b` |
| 14 | `instance` | [DFinsupp.Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/dfinsupp-lex-wellfoundedlt-of-finite--99da86b2b89056f1c71a964f.md) | 210 | `declaration-track:99da86b2b89056f1c71a964f40ea26105aaf11173d5d4ea20f531886a4429744` |
| 15 | `theorem` | [DFinsupp.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/dfinsupp-wellfoundedlt--4f232196a071cf3fc8b74c52.md) | 215 | `result-track:4f232196a071cf3fc8b74c523fbdde06e0c85813078e1d74b6fad06b38b73082` |
| 16 | `instance` | [DFinsupp.wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/dfinsupp-wellfoundedlt--4e08fcbdc614a8a3f31f0355.md) | 235 | `declaration-track:4e08fcbdc614a8a3f31f0355b4ab0ee394bfc3b57059b03903f6c88d269adb4d` |
| 17 | `instance` | [Pi.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/pi-wellfoundedlt--09704323a09b65c72cea80e2.md) | 240 | `declaration-track:09704323a09b65c72cea80e207876ab6acd0ecb7b67240c1828ce9fac1ce8ce2` |
| 18 | `instance` | [Function.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/function-wellfoundedlt--0323dc6f04e1a56d2045507d.md) | 251 | `declaration-track:0323dc6f04e1a56d2045507dcca9ffc1efdf5fb9f06ac5f0fa52fcb5775fb06b` |
| 19 | `instance` | [DFinsupp.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant22acb138e63cb522ee0923bb9ab866e07a66bcd09fe6de9ec0d8ed221332c939.lean/declarations/dfinsupp-wellfoundedlt-of-finite--4c8d5c4427822ca6462c97f7.md) | 256 | `declaration-track:4c8d5c4427822ca6462c97f70b36ef2dfdadab5775663cedbf60a7af42687eb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
