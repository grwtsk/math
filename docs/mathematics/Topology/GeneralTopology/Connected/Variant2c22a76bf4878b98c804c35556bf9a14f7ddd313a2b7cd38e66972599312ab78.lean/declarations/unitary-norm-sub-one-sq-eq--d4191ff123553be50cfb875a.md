# Unitary.norm_sub_one_sq_eq

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
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2453688-c3d8-deb5-46c6-2efe4ec8d3f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a6ce909-b3dc-84ca-73f7-1853d0aae803",
  "kind": "lemma",
  "lexical_name": "Unitary.norm_sub_one_sq_eq",
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
  "slug": "unitary-norm-sub-one-sq-eq--d4191ff123553be50cfb875a",
  "source": {
    "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4191ff123553be50cfb875ae95d3bb37d1bd42d1a01f2b566665e505d201c96",
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

Occurrence: `result:7a6ce909-b3dc-84ca-73f7-1853d0aae803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.norm_sub_one_sq_eq {u : A} (hu : u ∈ unitary A) {x : ℝ}
    (hz : IsLeast (re '' (spectrum ℂ u)) x) :
    ‖u - 1‖ ^ 2 = 2 * (1 - x) := by
  obtain (_ | _) := subsingleton_or_nontrivial A
  · exfalso; apply hz.nonempty.of_image.ne_empty; simp
  rw [← cfc_id' ℂ u, ← cfc_one ℂ u, ← cfc_sub ..]
  have h_eqOn : (spectrum ℂ u).EqOn (fun z ↦ ‖z - 1‖ ^ 2) (fun z ↦ 2 * (1 - z.re)) :=
    Complex.norm_sub_one_sq_eqOn_sphere.mono <| spectrum.subset_circle_of_unitary (𝕜 := ℂ) hu
  have h₂ : IsGreatest ((fun z ↦ 2 * (1 - z.re)) '' (spectrum ℂ u)) (2 * (1 - x)) := by
    have : Antitone (fun y : ℝ ↦ 2 * (1 - y)) := by intro _ _ _; simp only; gcongr
    simpa [Set.image_image] using this.map_isLeast hz
  have h₃ : IsGreatest ((‖· - 1‖ ^ 2) '' spectrum ℂ u) (‖cfc (· - 1 : ℂ → ℂ) u‖ ^ 2) := by
    have := pow_left_monotoneOn (n := 2) |>.mono (s₂ := ((‖· - 1‖) '' spectrum ℂ u)) (by simp)
    simpa [Set.image_image] using this.map_isGreatest (IsGreatest.norm_cfc (fun z : ℂ ↦ z - 1) u)
  exact h₃.unique (h_eqOn.image_eq ▸ h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf99dad2c9f818337c724519473d18c1e69d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
