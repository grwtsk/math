# exists_unitInterval_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae5c238ddc4274ddb2184d7ac50dc37960a16b09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f170b44-c625-c48e-8653-c70bb7fef798",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78914404-7f4e-0658-1473-710e4ecaf830",
  "kind": "lemma",
  "lexical_name": "exists_unitInterval_gt",
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
  "slug": "exists-unitinterval-gt--451284bf01c30ff472ca04a3",
  "source": {
    "blob": "ae5c238ddc4274ddb2184d7ac50dc37960a16b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451284bf01c30ff472ca04a30430b7678f7ad97a86d8d85af8abd16bd0ef11e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78914404-7f4e-0658-1473-710e4ecaf830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_unitInterval_gt {t₀ : unitInterval} (ht₀ : t₀ < 1) {δ : ℝ} (hδ : 0 < δ) :
    ∃ t₁, t₀ < t₁ ∧ dist t₀ t₁ < δ := by
  let s₀ := (t₀ : ℝ) -- t₀ is in unitInterval
  let s₁ := min (s₀ + δ / 2) 1
  have h_s₀_delta_pos : 0 ≤ s₀ + δ / 2 := add_nonneg t₀.2.1 (by positivity)
  have hs₁ : 0 ≤ s₁ := le_min h_s₀_delta_pos zero_le_one
  have hs₁' : s₁ ≤ 1 := min_le_right ..
  refine ⟨⟨s₁, hs₁, hs₁'⟩, lt_min ((lt_add_iff_pos_right _).mpr (half_pos hδ)) ht₀, ?_⟩
  have h_le : s₁ ≤ s₀ + δ / 2 := min_le_left _ _
  have h_ge : s₀ ≤ s₁ := le_min (by linarith) t₀.2.2
  rw [Subtype.dist_eq, dist_comm, dist_eq, abs_of_nonneg (by linarith)]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5c238ddc4274ddb2184d7ac50dc37960a16b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
