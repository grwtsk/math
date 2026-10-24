# Verification target: GRWTSK.Geometry.DifferentialGeometry.Manifold.Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ece48e7c611b8db7639c0bfc7ad52f46ed44670",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ece48e7c611b8db7639c0bfc7ad52f46ed44670`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.Atlas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/instance--b5a2a66722ac3d5df3383f89.md) | 34 | `declaration-track:b5a2a66722ac3d5df3383f89a2179c8c17c0239e60dca047a4e4dcba4e47cd87` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/instance--dde8ce8f3c7b70745709c173.md) | 37 | `declaration-track:dde8ce8f3c7b70745709c173aae59448035acdbe0f64aee8b1c9229504a31185` |
| 3 | `theorem` | [contMDiff_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-coe--9bfeb46b2f17d702ff1e4285.md) | 41 | `result-track:9bfeb46b2f17d702ff1e4285f98d4667ee94f42a9666381ee5ffdeb85839ca01` |
| 4 | `theorem` | [mdifferentiable_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-coe--62cd30c2401cde5166927c35.md) | 47 | `result-track:62cd30c2401cde5166927c354e9d712d6f36f55d524ac5823038bb9b90fc1641` |
| 5 | `lemma` | [contMDiffAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiffat-ofcomplex--6a7a3a689a7b90a9675ac73f.md) | 50 | `result-track:6a7a3a689a7b90a9675ac73fc2984af66cef34d525e6c1071bda29c7c2ba5567` |
| 6 | `lemma` | [mdifferentiableAt_ofComplex](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiableat-ofcomplex--6226c1805d033d72e71eb8d4.md) | 68 | `result-track:6226c1805d033d72e71eb8d4d7bc9a449607b27f9a79048f9f578306e775e545` |
| 7 | `lemma` | [contMDiffAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiffat-iff--9a2a3a74561df4f23b32ec93.md) | 72 | `result-track:9a2a3a74561df4f23b32ec9390f64d6709d631409f34f1ce561e0a3ad1d8040f` |
| 8 | `lemma` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiableat-iff--50e3adef06fb9911d8d81bbf.md) | 79 | `result-track:50e3adef06fb9911d8d81bbf52e013bc2ef52d466d723934b0a70d729b57e095` |
| 9 | `lemma` | [mdifferentiable_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-iff--a2a2b3f92720f4fabf34b23b.md) | 86 | `result-track:a2a2b3f92720f4fabf34b23bce073be0a9c6531d9272f2ff267fe59949010df2` |
| 10 | `lemma` | [contMDiff_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-num--4f44c787cabb5de3012a195f.md) | 92 | `result-track:4f44c787cabb5de3012a195ff28d2607d5924bcdd61ab7137e795062bbd184ba` |
| 11 | `lemma` | [contMDiff_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-denom--ec059489379122756875c188.md) | 95 | `result-track:ec059489379122756875c188efa36e4a7a02a1bcc86a4688df978ebf58c41851` |
| 12 | `lemma` | [contMDiff_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-denom-zpow--9a413f4d9bfb35fad51c3836.md) | 98 | `result-track:9a413f4d9bfb35fad51c3836de04a2bc8c7fce2ee75dfd80e934ea852b92b96b` |
| 13 | `lemma` | [contMDiff_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-inv-denom--03bc1663660062f0161e88a1.md) | 104 | `result-track:03bc1663660062f0161e88a16360eec5265617dc41c3b13a5a32f88556bc87d2` |
| 14 | `lemma` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/contmdiff-smul--a16d4f595480aa320cb0f17e.md) | 109 | `result-track:a16d4f595480aa320cb0f17e0555b0a68378852a2d3abd74a5944f7e586884c6` |
| 15 | `lemma` | [mdifferentiable_num](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-num--d60fa320d2935c3a59951367.md) | 114 | `result-track:d60fa320d2935c3a59951367568e40dfcf1c70fc7b62b86e5b533246aec5c98d` |
| 16 | `lemma` | [mdifferentiable_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-denom--b707bfa091da25089aa9bdbd.md) | 118 | `result-track:b707bfa091da25089aa9bdbdeea4497922af3b3b14b430376c4e0c866460e22a` |
| 17 | `lemma` | [mdifferentiable_denom_zpow](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-denom-zpow--aff0a80a65f966eeb03f4ebc.md) | 122 | `result-track:aff0a80a65f966eeb03f4ebc70959108682b3e6ccc94cf9ebf3d573fc7299c0e` |
| 18 | `lemma` | [mdifferentiable_inv_denom](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-inv-denom--c2ad32dcc1e329433f0db5e3.md) | 126 | `result-track:c2ad32dcc1e329433f0db5e35da3e11aa3b578712d340034baae34c85a162241` |
| 19 | `lemma` | [mdifferentiable_smul](../../../../../mathematics/Geometry/DifferentialGeometry/Manifold/Variant0ba6325866c58f10187c3ed9ecda52bae7c5cc9a57aff0594ad233a7b0330545.lean/declarations/mdifferentiable-smul--3619f53d68b641341de8e7da.md) | 131 | `result-track:3619f53d68b641341de8e7da4208bbdb18e3156c0e888539fe24e173acaef07a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
