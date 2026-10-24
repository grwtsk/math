# exists_unitInterval_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c4549fd-42e0-90a0-99b9-9875f5e13a09",
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
  "slug": "exists-unitinterval-gt--929d23a026a35beb74a52b22",
  "source": {
    "blob": "d13892315ec353b6ee5db6e218b5be4da9141ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929d23a026a35beb74a52b22812f62ffb72db406f47bf8b1d5ed162225ac630d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c4549fd-42e0-90a0-99b9-9875f5e13a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Varianta093a2cc3fb1c1ff71b33ebfdd8325c6dd47e671cc03fdeda5eb15b84c1419d7.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13892315ec353b6ee5db6e218b5be4da9141ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
