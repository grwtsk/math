# Complex.isConnected_of_upperHalfPlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3327119a09952c0aff29779fa66fd53887d84cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97ce49f0-c18b-9b3c-6f8c-74037cf7fbe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fdde99e-042b-73a6-05a3-ddcccbc5a3dd",
  "kind": "lemma",
  "lexical_name": "Complex.isConnected_of_upperHalfPlane",
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
  "slug": "complex-isconnected-of-upperhalfplane--bfeb03bac16d770111b0834e",
  "source": {
    "blob": "3327119a09952c0aff29779fa66fd53887d84cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfeb03bac16d770111b0834efac357a7e5b9f0ffcaa5aebee6b91c441de4903c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fdde99e-042b-73a6-05a3-ddcccbc5a3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Complex.isConnected_of_upperHalfPlane {r} {s : Set ℂ} (hs₁ : {z | r < z.im} ⊆ s)
    (hs₂ : s ⊆ {z | r ≤ z.im}) : IsConnected s := by
  refine .subset_closure ?_ hs₁ (by simpa only [closure_setOf_lt_im] using hs₂)
  exact (convex_halfSpace_im_gt r).isConnected ⟨(r + 1) * I, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3327119a09952c0aff29779fa66fd53887d84cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
