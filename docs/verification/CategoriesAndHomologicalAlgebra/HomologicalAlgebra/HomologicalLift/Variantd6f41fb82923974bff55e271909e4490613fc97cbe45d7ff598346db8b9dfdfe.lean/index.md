# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalLift.Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe61fa7f7613c1154acd45cb546d5c2ffedc96c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe61fa7f7613c1154acd45cb546d5c2ffedc96c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Torsion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntegralChainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/integralchaincomplex--f73b2d60957788c3f1459556.md) | 35 | `declaration-track:f73b2d60957788c3f1459556addfcc587254ce20938329b88978e42c955412c9` |
| 2 | `structure` | [HomologicalLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologicallift--de3c2e2835694f91767d23f1.md) | 41 | `declaration-track:de3c2e2835694f91767d23f143df2fd020fb019e6a783743df61a619d46d1b92` |
| 3 | `def` | [homologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso--60f1a250aef566393415a355.md) | 58 | `declaration-track:60f1a250aef566393415a35527980f83c5ff64dc5e6057bb46133a81ec8fb4e2` |
| 4 | `def` | [homologyAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyaddequiv--023222b03f678e8cc0596520.md) | 63 | `declaration-track:023222b03f678e8cc059652034ca4ceb9081fb3434f5711f337a09c0a1023459` |
| 5 | `theorem` | [homologyAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyaddequiv-apply--b50278f98bef53f33bc8c37a.md) | 68 | `result-track:b50278f98bef53f33bc8c37a40383db83e40ed2c967b234a75f7c459aaed7ed5` |
| 6 | `theorem` | [homologyIso_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso-hom-inv--fe57f176e91803dc2a81a174.md) | 73 | `result-track:fe57f176e91803dc2a81a174a2ca55e309b23e2e3eb74d35a89f91c7dbf8d220` |
| 7 | `theorem` | [homologyIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso-inv-hom--e6fd3373fec3f3f452b39efd.md) | 78 | `result-track:e6fd3373fec3f3f452b39efd06fe6e0596f79ab46f2ef1031b021b76783f0ac6` |
| 8 | `theorem` | [homologyIso_isOfFinAddOrder_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso-isoffinaddorder-iff--9f27fc779d9d1c94aad7509e.md) | 83 | `result-track:9f27fc779d9d1c94aad7509e141b0d43df1f1154b3318929cd574da5c545592f` |
| 9 | `theorem` | [homologyIso_isOfFinOrder_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso-isoffinorder-iff--fb9100e8d12dc48b06f26e43.md) | 92 | `result-track:fb9100e8d12dc48b06f26e43cca67550e9846d362b6acf3fd524da3830c953d3` |
| 10 | `theorem` | [homologyIso_addOrderOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologyiso-addorderof--56452af072b2d05d9345c636.md) | 99 | `result-track:56452af072b2d05d9345c6368b8ee3af51cf219965546cf5eea079845c1a55fc` |
| 11 | `def` | [homologyTorsionEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalLift/Variantd6f41fb82923974bff55e271909e4490613fc97cbe45d7ff598346db8b9dfdfe.lean/declarations/homologytorsionequiv--23dd6c559fc32aada9a42d78.md) | 106 | `declaration-track:23dd6c559fc32aada9a42d78433c9ccb1f03c9e6aabfb94fbbf76d26ffe29bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
