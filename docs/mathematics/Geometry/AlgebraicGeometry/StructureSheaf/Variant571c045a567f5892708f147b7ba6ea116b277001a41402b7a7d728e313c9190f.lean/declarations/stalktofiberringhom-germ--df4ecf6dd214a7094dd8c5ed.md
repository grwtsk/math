# stalkToFiberRingHom_germ

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
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d318067b-7043-ec5f-4101-59eb760679f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f59e277-297e-a846-663a-305799165925",
  "kind": "theorem",
  "lexical_name": "stalkToFiberRingHom_germ",
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
  "slug": "stalktofiberringhom-germ--df4ecf6dd214a7094dd8c5ed",
  "source": {
    "blob": "8ae40f9026bbd9e9887a89f933432c1b0acab2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4ecf6dd214a7094dd8c5ed267c4495c243afcc6110ca54362feed9284975f7",
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

Occurrence: `result:6f59e277-297e-a846-663a-305799165925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkToFiberRingHom_germ (U : Opens (ProjectiveSpectrum.top 𝒜))
    (x : ProjectiveSpectrum.top 𝒜) (hx : x ∈ U) (s : (Proj.structureSheaf 𝒜).1.obj (op U)) :
    stalkToFiberRingHom 𝒜 x ((Proj.structureSheaf 𝒜).presheaf.germ _ x hx s) = s.1 ⟨x, hx⟩ :=
  RingHom.ext_iff.1 (CommRingCat.hom_ext_iff.mp (germ_comp_stalkToFiberRingHom 𝒜 U x hx)) s

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variant571c045a567f5892708f147b7ba6ea116b277001a41402b7a7d728e313c9190f.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae40f9026bbd9e9887a89f933432c1b0acab2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
