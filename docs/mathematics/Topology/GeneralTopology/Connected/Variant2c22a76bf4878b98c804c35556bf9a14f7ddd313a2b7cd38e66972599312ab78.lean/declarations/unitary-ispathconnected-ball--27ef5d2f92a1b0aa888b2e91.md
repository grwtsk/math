# Unitary.isPathConnected_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f35643c4-1d7e-b8e6-2f59-bc7ee04792d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:357865fa-983f-f38e-367a-f666f88a058d",
  "kind": "lemma",
  "lexical_name": "Unitary.isPathConnected_ball",
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
  "slug": "unitary-ispathconnected-ball--27ef5d2f92a1b0aa888b2e91",
  "source": {
    "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 316,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ef5d2f92a1b0aa888b2e915ce3a23ab0d8843cae83de2485296b831ebb0201",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357865fa-983f-f38e-367a-f666f88a058d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.isPathConnected_ball (u : unitary A) (δ : ℝ) (hδ₀ : 0 < δ) (hδ₂ : δ < 2) :
    IsPathConnected (ball (u : unitary A) δ) := by
  suffices IsPathConnected (ball (1 : unitary A) δ) by
    convert! this |>.image (f := (u * ·)) (by fun_prop)
    ext v
    rw [← inv_mul_cancel u]
    simp [-inv_mul_cancel, Subtype.dist_eq, dist_eq_norm, ← mul_sub]
  refine ⟨1, by simpa, fun {u} hu ↦ ?_⟩
  have hu : ‖(u - 1 : A)‖ < δ := by simpa [Subtype.dist_eq, dist_eq_norm] using hu
  refine ⟨path 1 u (hu.trans hδ₂), fun t ↦ ?_⟩
  simpa [Subtype.dist_eq, dist_eq_norm] using
    norm_expUnitary_smul_argSelfAdjoint_sub_one_le u t.2 (hu.trans hδ₂) |>.trans_lt hu

/-- The unitary group in a C⋆-algebra is locally path connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf99dad2c9f818337c724519473d18c1e69d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
