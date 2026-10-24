# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.DimensionFormula.Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de21ee2e021a2add699300561411e2a06e7fe230",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de21ee2e021a2add699300561411e2a06e7fe230`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semifield` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMulDiscriminant](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/ofmuldiscriminant--7d23467bb2423cbc1a50feb6.md) | 50 | `declaration-track:7d23467bb2423cbc1a50feb6e55acdee7eba865c78249bcf31b037f83d8f71fa` |
| 2 | `lemma` | [ofMulDiscriminant_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/ofmuldiscriminant-apply--f4bab45c3e067c43fb96302f.md) | 54 | `result-track:f4bab45c3e067c43fb96302f38c7cab8fd15e95a8dff50d6c876e5133a7490be` |
| 3 | `lemma` | [divByDiscriminant_slash_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/divbydiscriminant-slash-eq--33a3da680d7b4b4d420c9ac6.md) | 57 | `result-track:33a3da680d7b4b4d420c9ac6bc22f46852c29708c9e7d376c0edddadb35c0544` |
| 4 | `def` | [discriminantEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/discriminantequiv--6aaaa0e981147364b5954357.md) | 65 | `declaration-track:6aaaa0e981147364b5954357a3a7fdf16b20cf07476b2c6db5bd709d141ac04a` |
| 5 | `lemma` | [discriminantEquiv_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/discriminantequiv-apply--ec103b43fc0f567a40d44120.md) | 92 | `result-track:ec103b43fc0f567a40d441203d09a8353a65654e63769386c13c3144ceb69490` |
| 6 | `def` | [divDiscriminant](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/divdiscriminant--5b5c17c69124404cd45211c8.md) | 97 | `declaration-track:5b5c17c69124404cd45211c843fe17472de3fca38f18340332a593c568cf56ec` |
| 7 | `lemma` | [divDiscriminant_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/divdiscriminant-apply--3001065801e8ce72effb100f.md) | 100 | `result-track:3001065801e8ce72effb100fd4d176849e29e2560fe8e1aa8b7806d48385aa07` |
| 8 | `lemma` | [discriminant_mul_discriminantEquiv_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/discriminant-mul-discriminantequiv-apply--975d668ecb96f1b7d897f433.md) | 108 | `result-track:975d668ecb96f1b7d897f43355b97bd036dae19aabb8952771136ad19577b119` |
| 9 | `lemma` | [discriminant_mul_discriminantEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/discriminant-mul-discriminantequiv--4bb03ec29aac5b9ee073262d.md) | 113 | `result-track:4bb03ec29aac5b9ee073262d3c26efb015e16e89046ad46ddcda420f69407a34` |
| 10 | `lemma` | [discriminant_qExpansion_order](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/discriminant-qexpansion-order--8ebd377e2e820c885c67344c.md) | 119 | `result-track:8ebd377e2e820c885c67344c62754352f7954aee719d4e78e0170769206eb4fd` |
| 11 | `lemma` | [qExpansion_eq_qExpansion_discriminant_mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/qexpansion-eq-qexpansion-discriminant-mul--9874acece4e9342b7c8e2680.md) | 129 | `result-track:9874acece4e9342b7c8e26803a636b0d08bbe17b42ae13633b4021aa7d80f60a` |
| 12 | `lemma` | [ModularForm.levelOne_odd_weight_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/modularform-levelone-odd-weight-eq-zero--c295f0e3c0f7542ae9a488c0.md) | 146 | `result-track:c295f0e3c0f7542ae9a488c0e664cbee643356895c5f3dd5d231b71a2bc15a79` |
| 13 | `lemma` | [ModularForm.levelOne_odd_weight_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/modularform-levelone-odd-weight-rank-zero--f64dfd97e87b0c515f956b06.md) | 150 | `result-track:f64dfd97e87b0c515f956b06afec4a806f0d9e5dc81f006d1e8ea9ebeacb7a94` |
| 14 | `lemma` | [CuspForm.rank_eq_zero_of_weight_lt_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/cuspform-rank-eq-zero-of-weight-lt-twelve--91542b2cfa04bfb9e69768ed.md) | 155 | `result-track:91542b2cfa04bfb9e69768ed4cc6b1e5e76d9cb83a872ebc78951fd208fb3ace` |
| 15 | `lemma` | [CuspForm.rank_eq_one_of_weight_eq_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/cuspform-rank-eq-one-of-weight-eq-twelve--ed015eb85b2edc9547bd02f1.md) | 160 | `result-track:ed015eb85b2edc9547bd02f14e34b75a9643ba2639664d78ba6660cf472bcdbf` |
| 16 | `lemma` | [CuspForm.exists_smul_discriminant_of_weight_eq_twelve](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/cuspform-exists-smul-discriminant-of-weight-eq-twelve--f1535028852eb39cd2e1d475.md) | 164 | `result-track:f1535028852eb39cd2e1d475a21015457742efb4660e81256b2647308862f465` |
| 17 | `lemma` | [ModularForm.rank_eq_one_add_rank_cuspForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/modularform-rank-eq-one-add-rank-cuspform--396406a0c84c2794542279b0.md) | 171 | `result-track:396406a0c84c2794542279b0397a105e2e977e765166679a45eea3884b5c3647` |
| 18 | `lemma` | [levelOne_weight_four_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/levelone-weight-four-rank-one--84307ebf7c1681818dd2aa44.md) | 194 | `result-track:84307ebf7c1681818dd2aa4416b0dfb5de9cc5726f3d29513e6f1cc85d71c3f9` |
| 19 | `lemma` | [levelOne_weight_six_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/levelone-weight-six-rank-one--9665d4dd16a57f55c1bd58fe.md) | 199 | `result-track:9665d4dd16a57f55c1bd58fe0866289065bf3ecf5728e6502bb2a116475af8bd` |
| 20 | `lemma` | [E₄_qExpansion_coeff_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/e-qexpansion-coeff-one--cf1bcfdee015aed0cce8c52e.md) | 204 | `result-track:cf1bcfdee015aed0cce8c52e3a07a846f8be1192a98d29c49b078e4ef4735d9a` |
| 21 | `lemma` | [E₆_qExpansion_coeff_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/e-qexpansion-coeff-one--a40c66ee65972460527d5740.md) | 207 | `result-track:a40c66ee65972460527d5740142545737485791b63bb56a67a5e122a7e84ccfa` |
| 22 | `lemma` | [eq_zero_of_pow_eq_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/eq-zero-of-pow-eq-smul--bffbb043757a3e98f041a54a.md) | 213 | `result-track:bffbb043757a3e98f041a54a5a0cd2c69c7096bd11fb80d74efcc1f4f5f84c22` |
| 23 | `lemma` | [weight_two_qExpansion_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/weight-two-qexpansion-eq-zero--50ab7b61c483ab0948dce19b.md) | 225 | `result-track:50ab7b61c483ab0948dce19b441a5a898c28c128aa0438c6be69212bd737e9ca` |
| 24 | `theorem` | [levelOne_weight_two_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/levelone-weight-two-rank-zero--b26e1998246311fa23b57cd1.md) | 245 | `result-track:b26e1998246311fa23b57cd14242ec2d22fa0454b0f9822a046a23af2b7d6297` |
| 25 | `theorem` | [dimension_level_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/dimension-level-one--8bb43dfd0eee68f8c184fcb8.md) | 250 | `result-track:8bb43dfd0eee68f8c184fcb8a566e9d982be8210d64433bb45f90c16f0aea29a` |
| 26 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/instance--4229be4970d3c7391f09a1b4.md) | 274 | `declaration-track:4229be4970d3c7391f09a1b4495e448e87a97369bfdaecb68f88f44ad961ec03` |
| 27 | `theorem` | [sturm_bound_levelOne_nat](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/sturm-bound-levelone-nat--c7f67abcb0180d82c4065c8b.md) | 288 | `result-track:c7f67abcb0180d82c4065c8b1e896e41d6811733e292de638c36a318670e5354` |
| 28 | `theorem` | [sturm_bound_levelOne](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/DimensionFormula/Variant45b72e66d3acfa50cd92ca44f5202db87e33cdff94b811532611a0b99a8ddaea.lean/declarations/sturm-bound-levelone--67232825e8bde1f03512e31f.md) | 307 | `result-track:67232825e8bde1f03512e31f3c3b7928a7309380256090e2238e912bd5b650f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
