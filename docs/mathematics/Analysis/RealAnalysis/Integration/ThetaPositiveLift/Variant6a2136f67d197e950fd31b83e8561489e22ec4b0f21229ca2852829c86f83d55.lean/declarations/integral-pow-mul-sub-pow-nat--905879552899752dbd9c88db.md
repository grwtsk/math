# integral_pow_mul_sub_pow_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dcdf5af-6eec-bf3f-f8a4-e2dd4a74b01a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23d6757b-64fb-924b-f77e-6abafc251f6f",
  "kind": "theorem",
  "lexical_name": "integral_pow_mul_sub_pow_nat",
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
  "slug": "integral-pow-mul-sub-pow-nat--905879552899752dbd9c88db",
  "source": {
    "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:905879552899752dbd9c88db7d5b1f284ed16bfce88817ab57d416a544c4d8d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d6757b-64fb-924b-f77e-6abafc251f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_pow_mul_sub_pow_nat (a b : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b) =
      u ^ (a + b + 1) * (a.factorial : ℝ) * (b.factorial : ℝ) /
        ((a + b + 1).factorial : ℝ) := by
  rcases hu.eq_or_lt with rfl | hu
  · simp
  have h := Complex.betaIntegral_scaled ((a : ℂ) + 1) ((b : ℂ) + 1) hu
  have hexp : (a : ℂ) + 1 + ((b : ℂ) + 1) - 1 = ((a + b + 1 : ℕ) : ℂ) := by
    push_cast
    ring
  rw [hexp, betaIntegral_nat_factorials] at h
  simp only [add_sub_cancel_right, Complex.cpow_natCast] at h
  have hcast :
      (∫ t in (0 : ℝ)..u, (t : ℂ) ^ a * ((u : ℂ) - t) ^ b) =
        ((∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b : ℝ) : ℂ) := by
    simp only [← Complex.ofReal_sub, ← Complex.ofReal_pow, ← Complex.ofReal_mul,
      intervalIntegral.integral_ofReal]
  rw [hcast] at h
  apply Complex.ofReal_injective
  push_cast
  exact h.trans (by ring)

/-- Exact finite beta convolution paying the even tail order and basis normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
