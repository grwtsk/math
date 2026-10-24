# Proj.stalkIso'_symm_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae40f9026bbd9e9887a89f933432c1b0acab2c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32c3560-c089-035b-0545-cd66543a0ad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c126f41e-c7d8-b84c-e0a4-d658343ee196",
  "kind": "theorem",
  "lexical_name": "Proj.stalkIso'_symm_mk",
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
  "slug": "proj-stalkiso-symm-mk--5af59bbf0a8ff376df9089bf",
  "source": {
    "blob": "8ae40f9026bbd9e9887a89f933432c1b0acab2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 368,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af59bbf0a8ff376df9089bf516392ed27b02b694df66700043bae33b0023ab5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c126f41e-c7d8-b84c-e0a4-d658343ee196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Proj.stalkIso'_symm_mk (x) (f) :
    (Proj.stalkIso' 𝒜 x).symm (.mk f) = (Proj.structureSheaf 𝒜).presheaf.germ _
      x (mem_basicOpen_den _ x f) (sectionInBasicOpen _ x f) := rfl

set_option backward.isDefEq.respectTransparency.types false in
/-- `Proj` of a graded ring as a `LocallyRingedSpace` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae40f9026bbd9e9887a89f933432c1b0acab2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
