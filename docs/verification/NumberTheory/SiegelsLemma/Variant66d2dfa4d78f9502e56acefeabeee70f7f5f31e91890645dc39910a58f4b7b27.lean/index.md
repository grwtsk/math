# Verification target: GRWTSK.NumberTheory.SiegelsLemma.Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00ff8d79e77e36009f6f5315936e2e994893fa12",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00ff8d79e77e36009f6f5315936e2e994893fa12`.

Source path: `GRWTSK/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Pi.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [image_T_subset_S](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/image-t-subset-s--3cfdc240b4222956c5a7baf8.md) | 78 | `result-track:3cfdc240b4222956c5a7baf8928bd12a9037308915b3bf29abf0cff993f14929` |
| 2 | `lemma` | [card_T_eq](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/card-t-eq--51979d9c764bb3fdd407c207.md) | 102 | `result-track:51979d9c764bb3fdd407c2077bd19dbf3dbd893533f349df2b672ce8b99bf718` |
| 3 | `lemma` | [N_le_P_add_one](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/n-le-p-add-one--cd8a2796e09cd81530a178dd.md) | 108 | `result-track:cd8a2796e09cd81530a178ddbec525d28fcd931a28d55ef063db0fbc1afb16c3` |
| 4 | `lemma` | [card_S_eq](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/card-s-eq--834fdb0403ea7466f5625ab7.md) | 120 | `result-track:834fdb0403ea7466f5625ab7647758135ae94a19c868b0d3df799ca53fe56371` |
| 5 | `lemma` | [one_le_norm_A_of_ne_zero](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/one-le-norm-a-of-ne-zero--be764aa31bba2b2b0e7f7f93.md) | 128 | `result-track:be764aa31bba2b2b0e7f7f9397e3577875cd5a67b66a82007645fef77901dd91` |
| 6 | `lemma` | [card_S_lt_card_T](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/card-s-lt-card-t--12d7469d5899f5a1c92fffb1.md) | 143 | `result-track:12d7469d5899f5a1c92fffb1e44bd325e10ce09591fd281ebf271e7e79978028` |
| 7 | `theorem` | [exists_ne_zero_int_vec_norm_le](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/exists-ne-zero-int-vec-norm-le--eca026beb281519acb7583ee.md) | 184 | `result-track:eca026beb281519acb7583ee0b8d1e2288b11949aa43aee73a17f6ccf46b99cc` |
| 8 | `theorem` | [exists_ne_zero_int_vec_norm_le'](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66d2dfa4d78f9502e56acefeabeee70f7f5f31e91890645dc39910a58f4b7b27.lean/declarations/exists-ne-zero-int-vec-norm-le--75a53ebb3d3de4c670982970.md) | 217 | `result-track:75a53ebb3d3de4c670982970c91376048ad557c897cc5fb7e86903c7a11bbc9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
