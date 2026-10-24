# Verification target: GRWTSK.Algebra.GroupTheory.Schreier.Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e716d4f45075c879034aa00a8cd40433af7067",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e716d4f45075c879034aa00a8cd40433af7067`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closure_mul_image_mul_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/closure-mul-image-mul-eq-top--4b82c7d7c0b0f2c7a40adca6.md) | 37 | `result-track:4b82c7d7c0b0f2c7a40adca6c6e3f1dbaafa88259586847b3336d9f919c018ba` |
| 2 | `theorem` | [closure_mul_image_eq](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/closure-mul-image-eq--4228bfdfb4fc9543d4e9970a.md) | 64 | `result-track:4228bfdfb4fc9543d4e9970aec08b90a60bd8288daca4d2212aeee6d332e3b32` |
| 3 | `theorem` | [closure_mul_image_eq_top](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/closure-mul-image-eq-top--327e7b7f1866dcbd5eaca82f.md) | 85 | `result-track:327e7b7f1866dcbd5eaca82f64d21abfb50c6ca5172bdb0324ffdc2e5bf54361` |
| 4 | `theorem` | [closure_mul_image_eq_top'](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/closure-mul-image-eq-top--5567a9601be5ab3a4e24fa87.md) | 95 | `result-track:5567a9601be5ab3a4e24fa87790ae29d456d72c8df2b5d6538b15b9e68edad46` |
| 5 | `theorem` | [exists_finset_card_le_mul](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/exists-finset-card-le-mul--d2bbef8934babcc0f2164ed9.md) | 105 | `result-track:d2bbef8934babcc0f2164ed9ebbec408fc8d3abaa3ef828d89509efa9eb939b2` |
| 6 | `instance` | [fg_of_index_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/fg-of-index-ne-zero--d9d23fe05924a4443889d03b.md) | 129 | `declaration-track:d9d23fe05924a4443889d03ba8473a044becd0fa3eb0664ace660cec23e4294e` |
| 7 | `theorem` | [rank_le_index_mul_rank](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/rank-le-index-mul-rank--8cb98a6bc1b2b942152d1e81.md) | 135 | `result-track:8cb98a6bc1b2b942152d1e8173314e18cb050a65accfb46020e8c7c41cda7903` |
| 8 | `theorem` | [card_commutator_dvd_index_center_pow](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/card-commutator-dvd-index-center-pow--2cf39f6f964e18d140e2ed11.md) | 150 | `result-track:2cf39f6f964e18d140e2ed11a5cdcac4ed88f77a7081705a1cd867e0cc8d7939` |
| 9 | `def` | [cardCommutatorBound](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/cardcommutatorbound--eaabc82783b4e9c8f0adfe46.md) | 182 | `declaration-track:eaabc82783b4e9c8f0adfe46d1b9f0fbe89199921427896fd42fa59dd53d6846` |
| 10 | `theorem` | [card_commutator_le_of_finite_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/card-commutator-le-of-finite-commutatorset--7ed58f4573073edf760fd1dc.md) | 188 | `result-track:7ed58f4573073edf760fd1dcb90fafa158044ad197e1ef835563a0cc88522b38` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Schreier/Variant31411bd6bea84b6ad0be7323ac84b098546ee63211f62fa748b9739bb0302ae2.lean/declarations/instance--aaf96585a332521997d21941.md) | 205 | `declaration-track:aaf96585a332521997d219413b20e792675b44951fe12f1ff3a442a1dacbba2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
