# prime_side_line_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b02623e04e65e37288e68b82a1ed1d32090612",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41a25e0c-af10-1ef9-d6a1-a8ae622f3f4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0e1f258-0a15-7be5-a749-eea215cc7ed4",
  "kind": "theorem",
  "lexical_name": "prime_side_line_chi",
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
  "slug": "prime-side-line-chi--2f721a42548c0f20124b06fa",
  "source": {
    "blob": "59b02623e04e65e37288e68b82a1ed1d32090612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f721a42548c0f20124b06fad38d281abd716e2ca3437adfa45f400e90f292b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e1f258-0a15-7be5-a749-eea215cc7ed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_side_line_chi (hχ1 : χ ≠ 1) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k ((c:ℝ) + t * I)
        * (-logDeriv χ.LFunction (((c:ℝ):ℂ) + t * I))
      = ∑' n : ℕ, (χ n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  have h1 : ∀ t : ℝ, Hfn k ((c:ℝ) + t * I) * (-logDeriv χ.LFunction (((c:ℝ):ℂ) + t * I))
      = ∑' n : ℕ, paperFT (tilt k (c - 1/2)) t
        * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n :=
    fun t => integrand_eq_tsum_chi hχ1 hc1 t
  calc (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k ((c:ℝ) + t * I)
        * (-logDeriv χ.LFunction (((c:ℝ):ℂ) + t * I))
      = (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, ∑' n : ℕ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n := by
        rw [integral_congr_ae (Filter.Eventually.of_forall h1)]
    _ = (1 / (2 * Real.pi) : ℂ) * ∑' n : ℕ, ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n := by
        rw [line_integral_swap_chi hχ1 hk hkc hc1]
    _ = ∑' n : ℕ, (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n := by
        rw [← tsum_mul_left]
    _ = ∑' n : ℕ, (χ n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) :=
        tsum_congr fun n => per_n_line_integral_chi hk hkc n

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b02623e04e65e37288e68b82a1ed1d32090612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
