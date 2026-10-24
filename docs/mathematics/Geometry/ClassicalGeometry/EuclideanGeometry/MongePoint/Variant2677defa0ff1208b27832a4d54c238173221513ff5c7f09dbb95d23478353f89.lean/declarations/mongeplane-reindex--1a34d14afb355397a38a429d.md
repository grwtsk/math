# mongePlane_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "083ec60696de53c7aca080ff9859c888f1c86916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73937e6f-8602-d83c-cb7b-bc40bf654607",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:924689e9-5682-6252-b0ca-1385e23fd4d8",
  "kind": "lemma",
  "lexical_name": "mongePlane_reindex",
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
  "slug": "mongeplane-reindex--1a34d14afb355397a38a429d",
  "source": {
    "blob": "083ec60696de53c7aca080ff9859c888f1c86916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 276,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a34d14afb355397a38a429d37573ac4a4ca727ec700e712e42d752aae7d3e9f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:924689e9-5682-6252-b0ca-1385e23fd4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mongePlane_reindex {m n : ℕ} (s : Simplex ℝ P (n + 2)) (e : Fin (n + 3) ≃ Fin (m + 3))
    (i₁ i₂ : Fin (m + 3)) :
    (s.reindex e).mongePlane i₁ i₂ = s.mongePlane (e.symm i₁) (e.symm i₂) := by
  obtain rfl : n = m := by simpa using Fintype.card_eq.2 ⟨e⟩
  simp_rw [mongePlane, reindex_points, reindex_range_points, Function.comp_apply, centroid_def,
    reindex]
  congr 2
  convert! Finset.affineCombination_map {e.symm i₁, e.symm i₂}ᶜ e.toEmbedding _ _ using 3
  · ext i
    simp
  · simp [Function.comp_assoc]
  · simp_rw [centroidWeights, Function.const_comp, Finset.card_compl]
    congr 4
    by_cases h : i₁ = i₂ <;> simp [h]

/-- The Monge plane associated with vertices `i₁` and `i₂` equals that
associated with `i₂` and `i₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant2677defa0ff1208b27832a4d54c238173221513ff5c7f09dbb95d23478353f89.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083ec60696de53c7aca080ff9859c888f1c86916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
