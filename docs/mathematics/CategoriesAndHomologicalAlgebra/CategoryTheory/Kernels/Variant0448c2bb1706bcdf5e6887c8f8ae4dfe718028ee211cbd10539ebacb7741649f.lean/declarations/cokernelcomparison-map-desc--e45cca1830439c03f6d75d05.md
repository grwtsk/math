# cokernelComparison_map_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4c73b46-a526-8df0-5a84-5cce64242be1",
  "kind": "theorem",
  "lexical_name": "cokernelComparison_map_desc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "cokernelcomparison-map-desc--e45cca1830439c03f6d75d05",
  "source": {
    "blob": "094edfbc4fcf82652f00b5ce2ed644d55f22968b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1167,
    "line": 1161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e45cca1830439c03f6d75d0582b6e94a5dc714d4ecf5b117d3430fb30e8a52a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4c73b46-a526-8df0-5a84-5cce64242be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1161–1167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cokernelComparison_map_desc [HasCokernel f] [HasCokernel (G.map f)] {Z : C} {h : Y ⟶ Z}
    (w : f ≫ h = 0) :
    cokernelComparison f G ≫ G.map (cokernel.desc _ h w) =
      cokernel.desc _ (G.map h) (by simp only [← G.map_comp, w, Functor.map_zero]) := by
  ext; simp [← G.map_comp]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean#L1161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094edfbc4fcf82652f00b5ce2ed644d55f22968b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
