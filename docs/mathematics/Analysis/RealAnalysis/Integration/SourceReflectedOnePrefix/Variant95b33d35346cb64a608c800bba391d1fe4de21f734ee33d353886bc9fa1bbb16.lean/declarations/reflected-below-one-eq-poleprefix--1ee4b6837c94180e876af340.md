# reflected_below_one_eq_polePrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58a39237e1ae3a43092dc50248b13e75573813db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a5bb8a4-ca8e-f30e-68ff-d3dc66922a9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84a48f5b-e4a6-403a-8796-9ec5262418cd",
  "kind": "theorem",
  "lexical_name": "reflected_below_one_eq_polePrefix",
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
  "slug": "reflected-below-one-eq-poleprefix--1ee4b6837c94180e876af340",
  "source": {
    "blob": "58a39237e1ae3a43092dc50248b13e75573813db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee4b6837c94180e876af3407a6a59739fa943b7fc07e10d80ff92900fa52a17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a48f5b-e4a6-403a-8796-9ec5262418cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflected_below_one_eq_polePrefix (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in Ioo (0 : ℝ) 1, reflectedSample A x u) = polePrefix A x := by
  have hp : 0 < A := by linarith
  have himage : (fun t : ℝ => Real.exp (t - x)) '' Iio x = Ioo (0 : ℝ) 1 := by
    ext u
    constructor
    · rintro ⟨t, ht, rfl⟩
      exact ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩
    · intro hu
      refine ⟨x + Real.log u, ?_, ?_⟩
      · dsimp only [mem_Iio]
        linarith [Real.log_neg hu.1 hu.2]
      · rw [add_sub_cancel_left, Real.exp_log hu.1]
  have h := integral_image_eq_integral_abs_deriv_smul measurableSet_Iio
    (fun t _ => (((hasDerivAt_id t).sub_const x).exp).hasDerivWithinAt)
    (fun a _ b _ hab => sub_right_inj.mp (Real.exp_injective hab)) (reflectedSample A x)
  rw [himage] at h
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul] at h
  rw [h]
  have he : (fun t : ℝ => Real.exp (t - x) * reflectedSample A x (Real.exp (t - x))) =
      fun t => Real.exp (-x / 2) * (Real.exp (t / 2) * actualQ A t) := by
    funext t
    simp only [reflectedSample, if_pos (Real.exp_pos _), Real.log_exp,
      show x + (t - x) = t by ring]
    have hw : Real.exp (t - x) * Real.exp (-(t - x) / 2) =
        Real.exp (-x / 2) * Real.exp (t / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [← mul_assoc, hw]
    ring
  rw [he, integral_const_mul, weighted_q_prefix_integral A x hp, positivePolePrimitive,
    show -x / 2 = -(x / 2) by ring, Real.exp_neg, ← mul_assoc,
    inv_mul_cancel₀ (Real.exp_ne_zero (x / 2)), one_mul]

/-- The unit right-sampling remainder retains q(x) minus the exact below-one prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a39237e1ae3a43092dc50248b13e75573813db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
