# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7621e9ea6958eb01002efdaadc0052df1a8824a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7621e9ea6958eb01002efdaadc0052df1a8824a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toFinset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/tofinset-prod--2fe21a81a1ce69ed17740427.md) | 35 | `result-track:2fe21a81a1ce69ed177404276920f09babdbc36bb62d70eb874e330eaf06a498` |
| 2 | `theorem` | [toFinset_off_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/tofinset-off-diag--8696dd143faf6bc4d7b41e28.md) | 40 | `result-track:8696dd143faf6bc4d7b41e2897239276e827c3ed5f98e0930c37866e611e6a1f` |
| 3 | `instance` | [instFintypeProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/instfintypeprod--25c27c8bbc196b8ff8a6235b.md) | 46 | `declaration-track:25c27c8bbc196b8ff8a6235b204adb0476a57265440ddee7607946e25a8b3adb` |
| 4 | `lemma` | [univ_product_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/univ-product-univ--f8da2d3d077b52452529a83f.md) | 52 | `result-track:f8da2d3d077b52452529a83fbec77901f8a435406d277fb98b8b4661f500e855` |
| 5 | `lemma` | [product_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/product-eq-univ--89d805e978b25181e7264059.md) | 54 | `result-track:89d805e978b25181e7264059a9af9fd3a33e515e60c40182c7f9affb5dfc96b6` |
| 6 | `theorem` | [Fintype.card_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/fintype-card-prod--3ac3d20ce6783444116fafed.md) | 60 | `result-track:3ac3d20ce6783444116fafed9a8b00cff5a9bffcd6fcde1390019985f82ddf1b` |
| 7 | `theorem` | [infinite_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/infinite-prod--1f1bde64bae7a1afcf5ba706.md) | 67 | `result-track:1f1bde64bae7a1afcf5ba70619550b3fce54138128c821881c15cffcff425760` |
| 8 | `instance` | [Pi.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/pi-infinite-of-left--5e8c04593e13c90016bbace3.md) | 76 | `declaration-track:5e8c04593e13c90016bbace39c4b46c8a93f162bb620fd6a46a9aa287dfba4b5` |
| 9 | `theorem` | [Pi.infinite_of_exists_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/pi-infinite-of-exists-right--fa97cb578f1556253e6a7ab3.md) | 85 | `result-track:fa97cb578f1556253e6a7ab3e0cdf711a6b64e72c0b6f67a7b73f6eecb03d961` |
| 10 | `instance` | [Pi.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/pi-infinite-of-right--743e62429b9217926f95d285.md) | 92 | `declaration-track:743e62429b9217926f95d2857185ec47bdba8331c4bf24f47dc2d79680d78ffe` |
| 11 | `instance` | [Function.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/function-infinite-of-left--1dcb6273e9a100236c0d0c14.md) | 97 | `declaration-track:1dcb6273e9a100236c0d0c143333f5b78fda5cda5f6ae8db76acbf7fa7c4735c` |
| 12 | `instance` | [Function.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant6ebca952597c9d77db46dc0ff4a422859fa5a828a30734342668b40251c58662.lean/declarations/function-infinite-of-right--3e26e4631c0f31f65d17fd9f.md) | 102 | `declaration-track:3e26e4631c0f31f65d17fd9f7514da620745f82a8282752079ca15ef89d6cda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
