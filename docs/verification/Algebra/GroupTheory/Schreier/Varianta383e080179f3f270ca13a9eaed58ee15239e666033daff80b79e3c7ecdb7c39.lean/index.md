# Verification target: GRWTSK.Algebra.GroupTheory.Schreier.Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8af0a83385325c4288019e4f928922583badfec",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8af0a83385325c4288019e4f928922583badfec`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Commutator.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_dvd_exponent_pow_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/card-dvd-exponent-pow-rank--aaa530944ad6861000b57a9f.md) | 45 | `result-track:aaa530944ad6861000b57a9f1b62bebf72bc0f2271d335b4ed47205b84393e15` |
| 2 | `theorem` | [card_dvd_exponent_pow_rank'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/card-dvd-exponent-pow-rank--adf51baf1fe4cc6f3cccc4ce.md) | 60 | `result-track:adf51baf1fe4cc6f3cccc4ce93086e3223e0a80b24cfc8b40e4196178e7b720c` |
| 3 | `theorem` | [closure_mul_image_mul_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/closure-mul-image-mul-eq-top--b40015acb02e585cace0bac5.md) | 73 | `result-track:b40015acb02e585cace0bac5dc108d0d6c92acabf66b0cd7f1db880fe5accfbf` |
| 4 | `theorem` | [closure_mul_image_eq](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/closure-mul-image-eq--106d730a72ce4a94adc00ab8.md) | 99 | `result-track:106d730a72ce4a94adc00ab8f74c24f321c9a3690f1c8bc794bdb93ff53f628e` |
| 5 | `theorem` | [closure_mul_image_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/closure-mul-image-eq-top--d59c4805f5d39c5bb4f46fc5.md) | 119 | `result-track:d59c4805f5d39c5bb4f46fc53064ddd628812cae49e9ea5274cf7c82b5f7a048` |
| 6 | `theorem` | [closure_mul_image_eq_top'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/closure-mul-image-eq-top--467ed0f1ba94e48c1ec83b1e.md) | 128 | `result-track:467ed0f1ba94e48c1ec83b1ecac70e34aa635761261f0c513acf2b7230c03068` |
| 7 | `theorem` | [exists_finset_card_le_mul](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/exists-finset-card-le-mul--33fde802b924bea1987ff020.md) | 137 | `result-track:33fde802b924bea1987ff020ea142627396a1cd422d036dbb3cec75fea304521` |
| 8 | `instance` | [fg_of_index_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/fg-of-index-ne-zero--74c41a53e85d1c0aabb74c91.md) | 159 | `declaration-track:74c41a53e85d1c0aabb74c91d653506935fda83214d88ce664a0824da31d3e69` |
| 9 | `theorem` | [rank_le_index_mul_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/rank-le-index-mul-rank--4d851a26f32fcb22005de960.md) | 164 | `result-track:4d851a26f32fcb22005de960a4b4ccb7932ffa9b2356ecb126b4dfcc430555c5` |
| 10 | `theorem` | [card_commutator_dvd_index_center_pow](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/card-commutator-dvd-index-center-pow--21b8eeaaa43d89a581f0d0c7.md) | 178 | `result-track:21b8eeaaa43d89a581f0d0c7316126bb6e6f1d60e734f69c0f6307bf5101c917` |
| 11 | `def` | [cardCommutatorBound](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/cardcommutatorbound--8e989cd0e855e99a435fd331.md) | 209 | `declaration-track:8e989cd0e855e99a435fd3315c3b0211677b128fb2398b18309f131e775da1d4` |
| 12 | `theorem` | [card_commutator_le_of_finite_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/card-commutator-le-of-finite-commutatorset--e42a1191109cd1091e84e32f.md) | 214 | `result-track:e42a1191109cd1091e84e32f608922eb9b075b3de9d0f18be6a3e072612b1e10` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Schreier/Varianta383e080179f3f270ca13a9eaed58ee15239e666033daff80b79e3c7ecdb7c39.lean/declarations/instance--cce597622e46980cbae37dc7.md) | 229 | `declaration-track:cce597622e46980cbae37dc7b329dac90c1a6257134df8e43cc80ff5fb92cd4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
