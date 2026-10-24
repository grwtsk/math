# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.LevelOne.Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606cf3cd5b75b04d9d44ae4b783478469e04161f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606cf3cd5b75b04d9d44ae4b783478469e04161f`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Modular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.QExpansion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_one_half_le_im_and_norm_le](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/exists-one-half-le-im-and-norm-le--65e423a52c8c8a475a9690c8.md) | 37 | `result-track:65e423a52c8c8a475a9690c81aa17e2df22c6669eda213fce0009ab084026871` |
| 2 | `lemma` | [wt_eq_zero_of_eq_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/wt-eq-zero-of-eq-const--560c61d97133e866dea0a6ad.md) | 46 | `result-track:560c61d97133e866dea0a6ad6a88a82af3fb60b6cabf6e7b6862b4bc0cd6cec0` |
| 3 | `theorem` | [cuspFunction_eqOn_const_of_nonpos_wt](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/cuspfunction-eqon-const-of-nonpos-wt--d54b1aa3e7933bba3fa1d802.md) | 63 | `result-track:d54b1aa3e7933bba3fa1d80242e439787a5a4aa1118b21b92a247694da3e2bf9` |
| 4 | `theorem` | [levelOne_nonpos_wt_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/levelone-nonpos-wt-const--9dc25b0c8d4a9fcd816895a5.md) | 77 | `result-track:9dc25b0c8d4a9fcd816895a566702d272acf7f6dba1633dfeb89aa053c3256d6` |
| 5 | `lemma` | [levelOne_neg_weight_eq_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/levelone-neg-weight-eq-zero--1aa3eb9a60c12c7fb3234331.md) | 86 | `result-track:1aa3eb9a60c12c7fb32343315a34b106eb3aecd5351fd5888a942d49306ddb4f` |
| 6 | `lemma` | [levelOne_weight_zero_const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/levelone-weight-zero-const--39aa188008085318fa20b562.md) | 92 | `result-track:39aa188008085318fa20b562b16d10c7f6da98a24aa71fa31a171926e32829f4` |
| 7 | `lemma` | [ModularForm.levelOne_weight_zero_rank_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/modularform-levelone-weight-zero-rank-one--0cca5ca13813cb315ad65fed.md) | 98 | `result-track:0cca5ca13813cb315ad65fed4575438af63d2b081841d6fb2dd46f16eab567d6` |
| 8 | `lemma` | [ModularForm.levelOne_neg_weight_rank_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/LevelOne/Variant349ec8bd9f6406fe9d3ff8af43a99164363da27f490f278795a29f573ee407d6.lean/declarations/modularform-levelone-neg-weight-rank-zero--1e52766ff8d82b09da4b527a.md) | 103 | `result-track:1e52766ff8d82b09da4b527a85d38cb09e55aa43c93dcb516c129d7693ad7fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
