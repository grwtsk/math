# Verification target: GRWTSK.Geometry.DifferentialGeometry.Manifold.Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5a01e8891c0b7cbed0afdd81a86278d2ec1ba55`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.Atlas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/instance--bcfc697c754bca87a8082869.md) | 26 | `declaration-track:bcfc697c754bca87a80828695e3c5a2d157221c099774c2d281e48050eb9695c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/instance--18e5a79c7f0175641e5af601.md) | 29 | `declaration-track:18e5a79c7f0175641e5af6017fe8425f45bb1419e899c13b13758a4c09d710b6` |
| 3 | `theorem` | [contMDiff_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-coe--ec3ec6962ea1d893690a6f13.md) | 33 | `result-track:ec3ec6962ea1d893690a6f13d69698d0c1ba5c53aaee4a0ceb44f8c480094092` |
| 4 | `theorem` | [mdifferentiable_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-coe--15ccf12f8a88cfe1cc9251fd.md) | 39 | `result-track:15ccf12f8a88cfe1cc9251fd82eed910a84f54ab5068afd940faec9d915febfd` |
| 5 | `lemma` | [contMDiffAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiffat-ofcomplex--8786fe05899cb181e78c979b.md) | 42 | `result-track:8786fe05899cb181e78c979b0e70a78a3da16c59b157aac4e49afea229f5ace2` |
| 6 | `lemma` | [mdifferentiableAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiableat-ofcomplex--a45a9a1799902df268c647e0.md) | 60 | `result-track:a45a9a1799902df268c647e021e80d5db507c822922bc60c35562f731a444bf2` |
| 7 | `lemma` | [contMDiffAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiffat-iff--f0b5c887be18ae63456300fd.md) | 64 | `result-track:f0b5c887be18ae63456300fde5db189c58cc7d22a4f5d9ed44521fa88bd16488` |
| 8 | `lemma` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiableat-iff--0dc0920a613e7c1beff1ad61.md) | 71 | `result-track:0dc0920a613e7c1beff1ad61b0c3a8bbe7f3daa2998647f255469884cd0e446f` |
| 9 | `lemma` | [mdifferentiable_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-iff--3952154dd83b34822f588dd3.md) | 78 | `result-track:3952154dd83b34822f588dd3faea773b745ae8dd3787a9a2e2ebb816070ff2c9` |
| 10 | `lemma` | [contMDiff_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-num--8ec0f065064bbe5345eba1fc.md) | 84 | `result-track:8ec0f065064bbe5345eba1fc0d36f8d98dca6f9f4968890911bc28ccbf90f023` |
| 11 | `lemma` | [contMDiff_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-denom--3cfcb18dacb0572ab57809c1.md) | 87 | `result-track:3cfcb18dacb0572ab57809c175f8e24a61b3d00988bcda1440b38432600aa9cd` |
| 12 | `lemma` | [contMDiff_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-denom-zpow--29f1a5829a3d43c67771ee48.md) | 90 | `result-track:29f1a5829a3d43c67771ee48d4f8eb0c1eed374af80ce8298f2bb095baf68d95` |
| 13 | `lemma` | [contMDiff_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-inv-denom--2e851db47763467193169b46.md) | 96 | `result-track:2e851db47763467193169b46c0d4abd9a4f01eb3952a94dfa488d8d6cdade138` |
| 14 | `lemma` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/contmdiff-smul--9d6bb6bd31fbb458dc234585.md) | 101 | `result-track:9d6bb6bd31fbb458dc2345852e38f0bf5c1e6a466ccc1997770543c61a74f1f3` |
| 15 | `lemma` | [mdifferentiable_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-num--677ab3bf24780d9b7ee6c2a3.md) | 106 | `result-track:677ab3bf24780d9b7ee6c2a3e31ea560c0a9f6ea89a7e82b5949bee7b30a03f6` |
| 16 | `lemma` | [mdifferentiable_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-denom--0e801b3e315db18bbbae9ffc.md) | 110 | `result-track:0e801b3e315db18bbbae9ffc49c998a75e31a8abaf8d619ee9a4090df9796175` |
| 17 | `lemma` | [mdifferentiable_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-denom-zpow--802fab082be4052b75bccc72.md) | 114 | `result-track:802fab082be4052b75bccc725dff924f653ef0fbc8714ac94f87b6db84df6ca1` |
| 18 | `lemma` | [mdifferentiable_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-inv-denom--5387e6b5a78e4e4452db3690.md) | 118 | `result-track:5387e6b5a78e4e4452db3690b9e1bf1185956ce6071db83f8bfbcf96699a9c01` |
| 19 | `lemma` | [mdifferentiable_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variantca0687aa3227015c30c7304c1e4e4573b6f17b7fdd14a98eb8f8e1e800eed382.lean/declarations/mdifferentiable-smul--f9dc3673cc57cbb159ea3c16.md) | 123 | `result-track:f9dc3673cc57cbb159ea3c1693bf38c3ba55c9644d50b183079b95cb2136c08d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
