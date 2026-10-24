# pole_squared_green_full_weak_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f52e861f-e080-d5d4-f2a4-0f14410ac39f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf6c3fad-c16b-468a-ba6e-4d03b58fe514",
  "kind": "theorem",
  "lexical_name": "pole_squared_green_full_weak_identity",
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
  "slug": "pole-squared-green-full-weak-identity--8a82825235a3e2cd69ad4814",
  "source": {
    "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a82825235a3e2cd69ad4814a2e51cac4a24fd27c527115f3641f9673a9adb14",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf6c3fad-c16b-468a-ba6e-4d03b58fe514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_squared_green_full_weak_identity (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) = f 0 := by
  obtain ⟨B, hB, hbound⟩ := hcf.isCompact.isBounded.exists_pos_norm_lt
  have hnonmem (t : ℝ) (ht : B ≤ |t|) : t ∉ tsupport f := by
    intro h
    have hb := hbound t h
    rw [Real.norm_eq_abs] at hb
    linarith
  have hz (k : ℕ) (t : ℝ) (ht : B ≤ |t|) : iteratedDeriv k f t = 0 :=
    iterated_deriv_eq_zero_of_not_mem_tsupport f k t (hnonmem t ht)
  have hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0 := by
    intro k _
    apply hz k (-B)
    rw [abs_neg, abs_of_pos hB]
  have hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0 := by
    intro k _
    apply hz k B
    rw [abs_of_pos hB]
  have hsupport (t : ℝ) (ht : t ∉ Icc (-B) B) :
      poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t = 0 := by
    have ha : B ≤ |t| := by
      by_contra h
      exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    have h0 : f t = 0 := by simpa using hz 0 t ha
    simp [poleSquaredDifferentialOperator, hz 4 t ha, hz 2 t ha, h0]
  calc
    _ = ∫ t, (Icc (-B) B).indicator
        (fun t ↦ poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-B) B
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht, hsupport t ht]
    _ = ∫ t in -B..B, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t :=
      zeroExtension_integral _ (-B) B (by linarith)
    _ = f 0 := pole_squared_green_weak_identity B hB f hf hleft hright

/-- The even fourth-order operator commutes exactly with translated reflection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
