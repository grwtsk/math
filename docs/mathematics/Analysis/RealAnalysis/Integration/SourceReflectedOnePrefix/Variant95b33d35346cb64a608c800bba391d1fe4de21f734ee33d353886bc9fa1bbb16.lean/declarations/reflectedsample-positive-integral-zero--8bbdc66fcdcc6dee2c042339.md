# reflectedSample_positive_integral_zero

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
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e49705a-029f-f99f-04d3-5821e9fbd21e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0980c913-5368-66e5-f9e6-58f3e4fabe25",
  "kind": "theorem",
  "lexical_name": "reflectedSample_positive_integral_zero",
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
  "slug": "reflectedsample-positive-integral-zero--8bbdc66fcdcc6dee2c042339",
  "source": {
    "blob": "58a39237e1ae3a43092dc50248b13e75573813db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bbdc66fcdcc6dee2c042339a4e3695f1688e97d48a82dbf7d3b88c20c8160ba",
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

Occurrence: `result:0980c913-5368-66e5-f9e6-58f3e4fabe25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedSample_positive_integral_zero (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in Ioi (0 : ℝ), reflectedSample A x u) = 0 := by
  rw [integral_comp_exp_univ]
  have he : (fun r : ℝ => Real.exp r * reflectedSample A x (Real.exp r)) =
      fun r => Real.exp (-x / 2) * (Real.exp ((r + x) / 2) * actualQ A (r + x)) := by
    funext r
    simp only [reflectedSample, if_pos (Real.exp_pos r), Real.log_exp]
    have hw : Real.exp r * Real.exp (-r / 2) =
        Real.exp (-x / 2) * Real.exp ((r + x) / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [show x + r = r + x by ring, ← mul_assoc, hw]
    ring
  rw [he, integral_const_mul, integral_add_right_eq_self
    (fun t => Real.exp (t / 2) * actualQ A t) x]
  have hz : (∫ t : ℝ, Real.exp (t / 2) * actualQ A t) = 0 := by
    simpa only [actualQ, show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring] using
      weighted_normalizedTest_integral_zero A (1 / 2) hA (by norm_num)
  rw [hz, mul_zero]

/-- The actual floor endpoint N+1 is included in the vanishing tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a39237e1ae3a43092dc50248b13e75573813db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
