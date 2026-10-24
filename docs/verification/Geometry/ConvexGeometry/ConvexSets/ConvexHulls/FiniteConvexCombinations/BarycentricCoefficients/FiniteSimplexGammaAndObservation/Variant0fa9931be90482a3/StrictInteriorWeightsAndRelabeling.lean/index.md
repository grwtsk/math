# Verification target: GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.StrictInteriorWeightsAndRelabeling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9305bbaa7bf19cee29b4c91e336a9b5b8b9f8b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/index.md) · [Full source](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9305bbaa7bf19cee29b4c91e336a9b5b8b9f8b`.

Source path: `GRWTSK/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.ConvexGeometry.ConvexSets.ConvexHulls.FiniteConvexCombinations.BarycentricCoefficients.FiniteSimplexGammaAndObservation.Variant0fa9931be90482a3.NormalizedWeightsAndRelabeling`](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/NormalizedWeightsAndRelabeling.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InteriorSimplexPoint](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/declarations/interiorsimplexpoint--9667b8994d91d3f4a5606275.md) | 39 | `declaration-track:9667b8994d91d3f4a560627597252603feb4eda81e1a75c2fa9530c9ceda318e` |
| 2 | `instance` | [instCoeFunInteriorSimplexPoint](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/declarations/instcoefuninteriorsimplexpoint--ac47a2f049415fbae9091fe2.md) | 47 | `declaration-track:ac47a2f049415fbae9091fe2e6f4c6291ca0fa660606bf7f346c4b3e7a9be722` |
| 3 | `theorem` | [ext](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/declarations/ext--96ed1c206c3de9727d53d569.md) | 52 | `result-track:96ed1c206c3de9727d53d5692d9d6e4d5d5c3a5c927edf465760fd60ff15f380` |
| 4 | `def` | [reindex](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/declarations/reindex--0c1740ff7d0010822b0d78f5.md) | 64 | `declaration-track:0c1740ff7d0010822b0d78f522070224f928e76a36ce1686b7cd5db4c438ce40` |
| 5 | `theorem` | [reindex_apply](../../../../../../../../../../mathematics/Geometry/ConvexGeometry/ConvexSets/ConvexHulls/FiniteConvexCombinations/BarycentricCoefficients/FiniteSimplexGammaAndObservation/Variant0fa9931be90482a3/StrictInteriorWeightsAndRelabeling.lean/declarations/reindex-apply--2bb05a103bcae7a6be042d24.md) | 70 | `result-track:2bb05a103bcae7a6be042d240e0faad650ea9bb4ed227602c82e3457ad3bdecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
