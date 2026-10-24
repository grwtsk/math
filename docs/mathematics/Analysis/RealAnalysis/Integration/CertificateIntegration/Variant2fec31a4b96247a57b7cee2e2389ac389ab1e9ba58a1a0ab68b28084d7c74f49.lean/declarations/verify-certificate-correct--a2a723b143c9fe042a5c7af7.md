# verify_certificate_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b5b41a4-ec85-b7c9-3088-9d7070c214d4",
  "kind": "theorem",
  "lexical_name": "verify_certificate_correct",
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
  "slug": "verify-certificate-correct--a2a723b143c9fe042a5c7af7",
  "source": {
    "blob": "823024257f25d2ab06d8e4b433ae52ba395d781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 693,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a723b143c9fe042a5c7af7c740d682c67a3fea0a3a7e470bf5481a6f668be2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b5b41a4-ec85-b7c9-3088-9d7070c214d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_certificate_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (cert : IntegralCertificate) (target : IntervalRat)
    (hverify : verifyCertificate e cert target = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e)
      MeasureTheory.volume (cert.domain.lo : ℝ) (cert.domain.hi : ℝ)) :
    ∫ x in (cert.domain.lo : ℝ)..(cert.domain.hi : ℝ),
      Expr.eval (fun _ => x) e ∈ target := by
  -- Unpack verifyCertificate into its three conditions
  simp only [verifyCertificate, Bool.and_eq_true] at hverify
  obtain ⟨⟨hcov, hbounds⟩, hsum⟩ := hverify
  -- Extract checkAllBounds
  simp only [checkAllBounds, List.all_eq_true] at hbounds
  -- Extract checkSumInTarget
  simp only [checkSumInTarget, decide_eq_true_eq] at hsum
  -- Step 1: Rewrite integral as sum of partition integrals
  have h_sum_eq := coverage_integral_sum (fun x => Expr.eval (fun _ => x) e)
    cert.partitions cert.domain hcov hInt
  rw [h_sum_eq]
  -- Define the values and bounds lists
  set integrals := cert.partitions.map fun entry =>
    ∫ x in (entry.domain.lo : ℝ)..(entry.domain.hi : ℝ), Expr.eval (fun _ => x) e with h_integrals
  set bounds := cert.partitions.map fun entry => entry.bound with h_bounds
  -- Step 2: Each partition integral is in its bound
  have hlen : integrals.length = bounds.length := by
    simp only [h_integrals, h_bounds, List.length_map]
  have hmem : ∀ i (hi : i < integrals.length),
      integrals[i] ∈ (bounds[i]'(hlen ▸ hi)) := by
    intro i hi
    simp only [h_integrals, h_bounds, List.getElem_map]
    have hi' : i < cert.partitions.length := by
      simp only [h_integrals, List.length_map] at hi; exact hi
    let entry := cert.partitions[i]'hi'
    have hcheck := hbounds entry (List.getElem_mem hi')
    have hInt_i : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e)
        MeasureTheory.volume entry.domain.lo entry.domain.hi := by
      -- Integrability on subinterval - entry ⊆ domain by coverage
      have hlo := coverage_entry_lo_ge_domain_lo cert.partitions cert.domain hcov i hi'
      have hhi := coverage_entry_hi_le_domain_hi cert.partitions cert.domain hcov i hi'
      apply integrable_subinterval _ cert.domain.lo cert.domain.hi entry.domain.lo entry.domain.hi
        (Rat.cast_le.mpr cert.domain.le) (Rat.cast_le.mpr entry.domain.le)
        (Rat.cast_le.mpr hlo) (Rat.cast_le.mpr hhi) hInt
    exact partition_bound_correct e hsupp entry hcheck hInt_i
  -- Step 3: Apply sum_mem_sum_intervals
  have h_in_sum := sum_mem_sum_intervals integrals bounds hlen hmem
  -- The sumBounds equals foldl add zero bounds
  have h_sumBounds_eq : sumBounds cert.partitions =
      bounds.foldl (fun acc I => IntervalRat.add acc I) ⟨0, 0, le_refl 0⟩ := by
    simp only [sumBounds, h_bounds]
    -- Use foldl_map: foldl f init (map g l) = foldl (fun acc x => f acc (g x)) init l
    rw [List.foldl_map]
  -- Membership in sumBounds implies membership in target
  have h_in_bounds : integrals.sum ∈ sumBounds cert.partitions := by
    rw [h_sumBounds_eq]
    exact h_in_sum
  simp only [IntervalRat.mem_def] at h_in_bounds ⊢
  constructor
  · calc (target.lo : ℝ) ≤ (sumBounds cert.partitions).lo := by exact_mod_cast hsum.1
      _ ≤ integrals.sum := h_in_bounds.1
  · calc integrals.sum ≤ (sumBounds cert.partitions).hi := h_in_bounds.2
      _ ≤ target.hi := by exact_mod_cast hsum.2

/-! ### Certificate Generation

Generate certificates from the adaptive integration algorithm.
This captures the result of the search for later verification.
-/

/-- Build a certificate entry from a successful interval evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant2fec31a4b96247a57b7cee2e2389ac389ab1e9ba58a1a0ab68b28084d7c74f49.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823024257f25d2ab06d8e4b433ae52ba395d781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
