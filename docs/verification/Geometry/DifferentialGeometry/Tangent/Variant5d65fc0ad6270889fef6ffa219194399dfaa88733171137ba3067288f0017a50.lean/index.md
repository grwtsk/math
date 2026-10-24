# Verification target: GRWTSK.Geometry.DifferentialGeometry.Tangent.Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cf2492c26aa09b2160529af10aabf04aa3b45b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cf2492c26aa09b2160529af10aabf04aa3b45b8`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Atlas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.UniqueDifferential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Tangent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentMap_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/tangentmap-chart--4f56fa18d6b1f51565e85aa5.md) | 41 | `result-track:4f56fa18d6b1f51565e85aa553767637341d66e4f1671a74f01e50a40ba9312f` |
| 2 | `theorem` | [tangentMap_chart_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/tangentmap-chart-symm--97bab64efba9a9770037e191.md) | 53 | `result-track:97bab64efba9a9770037e191d0b9bcef30c9e7777fe56499fa45c89fe9b5adcd` |
| 3 | `lemma` | [mfderiv_chartAt_eq_tangentCoordChange](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/mfderiv-chartat-eq-tangentcoordchange--2089c04259c31f304113c44e.md) | 65 | `result-track:2089c04259c31f304113c44eea34237396e790d527609c42d7fe6977068f9785` |
| 4 | `theorem` | [UniqueMDiffOn.tangentBundle_proj_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/uniquemdiffon-tangentbundle-proj-preimage--45bba781cf4cac57fa2fda6e.md) | 72 | `result-track:45bba781cf4cac57fa2fda6eb331f634321a079ada97dfde69237f3a94186570` |
| 5 | `lemma` | [inTangentCoordinates_eq_mfderiv_comp](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/intangentcoordinates-eq-mfderiv-comp--941265baaf29815e3a1673be.md) | 79 | `result-track:941265baaf29815e3a1673bed8bfd85a41d3863375205bbba62800d3a5d0b08f` |
| 6 | `def` | [tangentBundleModelSpaceDiffeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50.lean/declarations/tangentbundlemodelspacediffeomorph--33b718acfd3d16f102fb63aa.md) | 103 | `declaration-track:33b718acfd3d16f102fb63aa381e940961e8b0b6dfe4090ad4c0094a1c87a56a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
