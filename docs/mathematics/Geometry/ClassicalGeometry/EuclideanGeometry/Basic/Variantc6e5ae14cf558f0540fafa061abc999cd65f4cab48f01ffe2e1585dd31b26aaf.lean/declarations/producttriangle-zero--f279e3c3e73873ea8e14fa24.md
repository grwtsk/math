# productTriangle.zero₃₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09288978b7be53504d510d0c56592ec8c5e5f440",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:308f10dd-8f36-b483-c8a5-2c743f2e98ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e77a595b-c49f-11eb-47c0-43ae2b3913b2",
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
  "slug": "producttriangle-zero--f279e3c3e73873ea8e14fa24",
  "source": {
    "blob": "09288978b7be53504d510d0c56592ec8c5e5f440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 395,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f279e3c3e73873ea8e14fa24894dd5922cace5539b18f19f5012af6abb52af03",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77a595b-c49f-11eb-47c0-43ae2b3913b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–412.

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
  simp [h j]

end

set_option backward.defeqAttrib.useBackward true in
variable (C) in
/-- The functor `C ⥤ Triangle C` which sends `X` to `contractibleTriangle X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09288978b7be53504d510d0c56592ec8c5e5f440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
