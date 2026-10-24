# Verification target: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.NormalizedWeightsAndRelabeling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc3285e3343c6540bf7154d42132b2e024d792fa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/index.md) · [Full source](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc3285e3343c6540bf7154d42132b2e024d792fa`.

Source path: `GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimplexPoint](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/simplexpoint--464ac03c33e55b772db7b1b1.md) | 37 | `declaration-track:464ac03c33e55b772db7b1b1ce50a397f052a6a21d2ba0945677bd5ee41c8450` |
| 2 | `instance` | [instCoeFunSimplexPoint](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/instcoefunsimplexpoint--b8b61b938c93fdaf7286bca9.md) | 46 | `declaration-track:b8b61b938c93fdaf7286bca95dcde066006ef45471c4db2cad6fd29f6504ea8c` |
| 3 | `theorem` | [ext](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/ext--0608782eec1985283d4e0eef.md) | 50 | `result-track:0608782eec1985283d4e0eefc3b1e68665fe05e52b201c5292d39e4a3ba7d6e5` |
| 4 | `def` | [reindex](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/reindex--7b7c492d2a37e15d202c0b80.md) | 61 | `declaration-track:7b7c492d2a37e15d202c0b8040b3ca371de673369e7a0fff97162de9da1ba675` |
| 5 | `theorem` | [reindex_apply](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/reindex-apply--57fcc3b751e30604f547c461.md) | 69 | `result-track:57fcc3b751e30604f547c4614fa02df9281cfde1056a3bc56ff3843188c93416` |
| 6 | `theorem` | [reindex_refl](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/reindex-refl--abb3d63ee89341bc6fcaf319.md) | 74 | `result-track:abb3d63ee89341bc6fcaf3198a9b332ae00aabc6f32eb0465933c4b8f5d1857b` |
| 7 | `theorem` | [reindex_trans](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/declarations/reindex-trans--a8b32ca2391eea70cbcaa429.md) | 80 | `result-track:a8b32ca2391eea70cbcaa429b8f97351c8161ba532a348e8f135387cc344389a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
