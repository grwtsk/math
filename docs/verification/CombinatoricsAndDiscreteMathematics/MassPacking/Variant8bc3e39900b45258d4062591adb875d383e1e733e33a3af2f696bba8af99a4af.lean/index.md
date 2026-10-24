# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MassPacking.Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatchedCoefficientPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition--120cba5b04215b52a93776e4.md) | 30 | `declaration-track:120cba5b04215b52a93776e4de8baf8e9245bcf402782024e7d1b829cffd4dd2` |
| 2 | `def` | [MatchedCoefficientPartition.leftChild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-leftchild--492e103e6c4eb454d5fbf37a.md) | 38 | `declaration-track:492e103e6c4eb454d5fbf37a8363e2075ba6fe5f5a95cabda4a75b13df83faea` |
| 3 | `def` | [MatchedCoefficientPartition.rightChild](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-rightchild--384a40235db8656a68a4b97d.md) | 49 | `declaration-track:384a40235db8656a68a4b97d9e172c5b86b9eea9bc13fa69d7c4c3b42fac146f` |
| 4 | `def` | [MatchedCoefficientPartition.childMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-childmass--cc96aff2fba15b218ce99641.md) | 60 | `declaration-track:cc96aff2fba15b218ce9964179181a8e75917f0a7f61186690469efad2344510` |
| 5 | `theorem` | [MatchedCoefficientPartition.sum_leftChild_norm_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-sum-leftchild-norm-sq--fd0115fb699b0048bd7160d4.md) | 69 | `result-track:fd0115fb699b0048bd7160d48108a9e9a714ee4aa40f79a5233868c872605c84` |
| 6 | `theorem` | [MatchedCoefficientPartition.sum_rightChild_norm_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-sum-rightchild-norm-sq--bcb783afa943d2a4d0cedffc.md) | 87 | `result-track:bcb783afa943d2a4d0cedffc204781e65b204aa2ac8beccbd9aaa5491c0f6763` |
| 7 | `theorem` | [MatchedCoefficientPartition.sum_childMass_le_parent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/declarations/matchedcoefficientpartition-sum-childmass-le-parent--ec0f4351579c0e08aff486d1.md) | 106 | `result-track:ec0f4351579c0e08aff486d199b441e46a273a300b775e5ce7b9c0afb79d71d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
