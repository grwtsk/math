# Verification target: GRWTSK.Analysis.MeasureTheory.Defs.Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d9aa201e4dab7dff464bbdc3133d1f0e9c7e496",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d9aa201e4dab7dff464bbdc3133d1f0e9c7e496`.

Source path: `GRWTSK/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/declarations/outermeasure--75bfea21c3e446ab916f99f7.md) | 55 | `declaration-track:75bfea21c3e446ab916f99f7829e2903a0b244089f3b4473292ebbe5494ac03a` |
| 2 | `class` | [OuterMeasureClass](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/declarations/outermeasureclass--e0cf34a5a9ccc732d6458f47.md) | 66 | `declaration-track:e0cf34a5a9ccc732d6458f474517d6c18666297046a1302ea62280e9f3d09eb1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/declarations/instance--be970903b6931f19f10133e7.md) | 74 | `declaration-track:be970903b6931f19f10133e741115311ca2548c741f45892ce66ea71d8fcaaef` |
| 4 | `theorem` | [measureOf_eq_coe](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/declarations/measureof-eq-coe--250d351849d3023de6c61ea2.md) | 78 | `result-track:250d351849d3023de6c61ea200346baafc33da4d816b8032c1a167afa9c3a57e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Defs/Variantd89d4ed4fce71d0273cb05d749c21d0fc0e3bfed30d3f5f5d1a7d4e9951ff0f2.lean/declarations/instance--4760dc14c8708a6f8e3dd04d.md) | 80 | `declaration-track:4760dc14c8708a6f8e3dd04d718acc3926cce0c5c3e0e921fe2d042f5cecde3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
