# angle_eq_iff_oangle_eq_or_sameRay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff126ff59cf88bb8d18d57beb160f00eaba233bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 996,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f958ffb2-db41-cbdf-27b1-4497321f329b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17afe913-f27b-138c-e460-9548457a7b65",
  "kind": "lemma",
  "lexical_name": "angle_eq_iff_oangle_eq_or_sameRay",
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
  "slug": "angle-eq-iff-oangle-eq-or-sameray--800e98dc0462e2889b25e6b3",
  "source": {
    "blob": "ff126ff59cf88bb8d18d57beb160f00eaba233bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1033,
    "line": 996,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:800e98dc0462e2889b25e6b317f0707ab5c11d33579025b73a730dad52c5ba3b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17afe913-f27b-138c-e460-9548457a7b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 996–1033.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma angle_eq_iff_oangle_eq_or_sameRay {x y z : V} (hx : x ≠ 0) (hz : z ≠ 0) :
    InnerProductGeometry.angle x y = InnerProductGeometry.angle y z ↔
      o.oangle x y = o.oangle y z ∨ SameRay ℝ x z := by
  by_cases hy : y = 0
  · simp [hy]
  by_cases hr : SameRay ℝ x z
  · obtain ⟨r, hrp, rfl⟩ := hr.exists_pos_left hx hz
    simp [hr, hrp, InnerProductGeometry.angle_comm]
  simp only [hr, or_false]
  by_cases hs : (o.oangle x y).sign = (o.oangle y z).sign
  · rw [o.angle_eq_iff_oangle_eq_of_sign_eq hx hy hy hz hs]
  · have hn : o.oangle x y ≠ o.oangle y z := by grind
    simp only [hn, iff_false]
    intro he
    apply hr
    by_cases hs' : (o.oangle x y).sign = -(o.oangle y z).sign
    · rw [o.angle_eq_iff_oangle_eq_neg_of_sign_eq_neg hx hy hy hz hs'] at he
      rw [← o.oangle_eq_zero_iff_sameRay, ← o.oangle_add hx hy hz]
      simp [he]
    · have h0 : (o.oangle x y).sign = 0 ∨ (o.oangle y z).sign = 0 := by
        revert hs hs'
        generalize (o.oangle x y).sign = sxy
        generalize (o.oangle y z).sign = syz
        decide +revert
      have h0' : InnerProductGeometry.angle y z = 0 ∨ InnerProductGeometry.angle y z = π := by
        rcases h0 with h0 | h0
          <;> simpa [*] using o.eq_zero_or_angle_eq_zero_or_pi_of_sign_oangle_eq_zero h0
      rcases h0' with h0' | h0'
      · rw [h0'] at he
        obtain ⟨-, r, hr0, rfl⟩ := InnerProductGeometry.angle_eq_zero_iff.1 h0'
        obtain ⟨-, r', hr'0, rfl⟩ := InnerProductGeometry.angle_eq_zero_iff.1 he
        simp_all
      · rw [h0'] at he
        obtain ⟨-, r, hr0, rfl⟩ := InnerProductGeometry.angle_eq_pi_iff.1 h0'
        obtain ⟨-, r', hr'0, rfl⟩ := InnerProductGeometry.angle_eq_pi_iff.1 he
        simp_all

end Orientation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta3488190ad1efec95c67781fc32893afd56c19b9598c3bde58af4cea3d73ed6f.lean#L996).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff126ff59cf88bb8d18d57beb160f00eaba233bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
