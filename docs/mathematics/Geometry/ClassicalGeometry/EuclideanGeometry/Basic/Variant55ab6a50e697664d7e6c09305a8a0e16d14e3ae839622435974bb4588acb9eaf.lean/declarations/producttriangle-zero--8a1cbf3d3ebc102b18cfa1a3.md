# productTriangle.zero₃₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea3935cd2a550f00810d825125b1a1ab5db534e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d258f705-8a82-e6ed-cf47-7fdda13b0fcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d6ea0ad-ff3b-9ba6-7eb5-619a7658c0c9",
  "kind": "lemma",
  "lexical_name": "productTriangle.zero₃₁",
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
  "slug": "producttriangle-zero--8a1cbf3d3ebc102b18cfa1a3",
  "source": {
    "blob": "ea3935cd2a550f00810d825125b1a1ab5db534e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 304,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a1cbf3d3ebc102b18cfa1a30fa09afc01ba1eed7e50cf083b13c0b011665dc2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d6ea0ad-ff3b-9ba6-7eb5-619a7658c0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma productTriangle.zero₃₁ [HasZeroMorphisms C]
    (h : ∀ j, (T j).mor₃ ≫ (T j).mor₁⟦(1 : ℤ)⟧' = 0) :
    (productTriangle T).mor₃ ≫ (productTriangle T).mor₁⟦1⟧' = 0 := by
  have : HasProduct (fun j => (T j).obj₂⟦(1 : ℤ)⟧) :=
    ⟨_, isLimitFanMkObjOfIsLimit (shiftFunctor C (1 : ℤ)) _ _
      (productIsProduct (fun j => (T j).obj₂))⟩
  dsimp
  change _ ≫ (Pi.lift (fun j => Pi.π _ j ≫ (T j).mor₁))⟦(1 : ℤ)⟧' = 0
  rw [assoc, ← cancel_mono (piComparison _ _), zero_comp, assoc, assoc]
  ext j
  simp only [map_lift_piComparison, assoc, limit.lift_π, Fan.mk_π_app, zero_comp,
    Functor.map_comp, ← piComparison_comp_π_assoc, IsIso.inv_hom_id_assoc,
    limMap_π_assoc, Discrete.natTrans_app, h j, comp_zero]

end

variable (C) in
/-- The functor `C ⥤ Triangle C` which sends `X` to `contractibleTriangle X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3935cd2a550f00810d825125b1a1ab5db534e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
