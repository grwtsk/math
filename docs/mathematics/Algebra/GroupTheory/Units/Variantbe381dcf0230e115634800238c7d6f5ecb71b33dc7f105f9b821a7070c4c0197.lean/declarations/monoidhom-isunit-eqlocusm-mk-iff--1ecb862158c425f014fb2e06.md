# MonoidHom.isUnit_eqLocusM_mk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7ab074e2b19f533cffc3fd3114d406f38a32f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74ead007-0b44-cebd-2ecd-095700b9bd4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f14cc097-10a4-d65e-57a3-5a25bdeeb442",
  "kind": "theorem",
  "lexical_name": "MonoidHom.isUnit_eqLocusM_mk_iff",
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
  "slug": "monoidhom-isunit-eqlocusm-mk-iff--1ecb862158c425f014fb2e06",
  "source": {
    "blob": "1b7ab074e2b19f533cffc3fd3114d406f38a32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 344,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ecb862158c425f014fb2e06adf30e24f336fb707289e68d3798d6a90602d501",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f14cc097-10a4-d65e-57a3-5a25bdeeb442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.isUnit_eqLocusM_mk_iff {N : Type*} [Monoid N] (f g : M →* N) {r : M}
    (hr : f r = g r) : IsUnit (⟨r, hr⟩ : f.eqLocusM g) ↔ IsUnit r := by
  refine ⟨fun h ↦ h.map (SubmonoidClass.subtype _), fun h ↦ ?_⟩
  obtain ⟨s, hs⟩ := isUnit_iff_exists.mp h
  suffices ∃ a, r * a = 1 ∧ f a = g a ∧ a * r = 1 by
    simpa [isUnit_iff_exists, ← Subtype.val_inj]
  refine ⟨s, hs.left, ?_, hs.right⟩
  rw [← mul_one (f s), ← map_one g, ← hs.left, map_mul, ← mul_assoc, ← hr, ← map_mul,
    hs.right, map_one, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7ab074e2b19f533cffc3fd3114d406f38a32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
