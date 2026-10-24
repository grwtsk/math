# combinedMultiplier_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "464f82914e07e3669507e39ac57c6f6fda212e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2b825e7-7a14-394a-960e-a26440689b09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04b6857d-8d7f-a421-caa1-79ab025871cf",
  "kind": "theorem",
  "lexical_name": "combinedMultiplier_norm_le",
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
  "slug": "combinedmultiplier-norm-le--9e1c8e960005cbd3471c31ea",
  "source": {
    "blob": "464f82914e07e3669507e39ac57c6f6fda212e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1c8e960005cbd3471c31eaadad103e02ed51e409b29b4879336b79d40923db",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04b6857d-8d7f-a421-caa1-79ab025871cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combinedMultiplier_norm_le (c : ℝ) (hc : 1 < c) (s : ℂ) (hs : s.re = c) :
    ‖combinedMultiplier s‖ ≤ rightLineMajorant c := by
  have hsone : 1 < s.re := by simpa [hs] using hc
  rw [combinedMultiplier, ← LSeries_vonMangoldt_eq_deriv_riemannZeta_div hsone]
  calc
    _ ≤ ∑' n : ℕ, ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) s n‖ :=
      norm_tsum_le_tsum_norm (LSeriesSummable_vonMangoldt hsone).norm
    _ = ∑' n : ℕ, ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (c : ℂ) n‖ := by
      apply tsum_congr
      intro n
      simp only [LSeries.norm_term_eq, hs, Complex.ofReal_re]
    _ = rightLineMajorant c := norm_series_eq_majorant c hc

/-- The majorant is nonnegative; no totalized divergent series is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464f82914e07e3669507e39ac57c6f6fda212e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
