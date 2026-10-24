# coverage_integral_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 607,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5311628-a646-e6ba-9f61-fbf1516527c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d04f801-6917-23d3-22f8-70c7766e10f6",
  "kind": "theorem",
  "lexical_name": "coverage_integral_sum",
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
  "slug": "coverage-integral-sum--09cf0be503e8197b928cfcf1",
  "source": {
    "blob": "335e39587dbaa85521f4e8fc941808c68eeeb679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 607,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09cf0be503e8197b928cfcf1cfdc042a394bd053c47c936a41f8b4e359c9d38f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d04f801-6917-23d3-22f8-70c7766e10f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverage_integral_sum (f : ℝ → ℝ) (entries : List PartitionEntry)
    (domain : IntervalRat) (hcov : checkCoverage entries domain = true)
    (hInt : IntervalIntegrable f MeasureTheory.volume domain.lo domain.hi) :
    ∫ x in (domain.lo : ℝ)..(domain.hi : ℝ), f x =
      (entries.map (fun e => ∫ x in (e.domain.lo : ℝ)..(e.domain.hi : ℝ), f x)).sum := by
  have hne : entries ≠ [] := coverage_nonempty entries domain hcov
  induction entries generalizing domain with
  | nil => exact absurd rfl hne
  | cons e es ih =>
    simp only [List.map_cons, List.sum_cons]
    cases es with
    | nil =>
      -- Single entry: e covers the whole domain
      simp only [List.map_nil, List.sum_nil, add_zero]
      have hfirst := coverage_first_starts [e] domain hcov (by simp)
      have hlast := coverage_last_ends [e] domain hcov (by simp)
      simp only [List.head_cons, List.getLast_singleton] at hfirst hlast
      rw [hfirst, hlast]
    | cons e' es' =>
      -- Multiple entries: use integral additivity
      have hfirst := coverage_first_starts (e :: e' :: es') domain hcov (by simp)
      simp only [List.head_cons] at hfirst
      have hadj := coverage_adjacent (e :: e' :: es') domain hcov 0 (by simp)
      simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hadj
      -- Key: split integral at e.domain.hi
      have hhi_le : e.domain.hi ≤ domain.hi := coverage_first_hi_le (e :: e' :: es') domain hcov (by simp)
      have hlo_le : domain.lo ≤ e.domain.hi := by
        have h := e.domain.le; rw [hfirst] at h; exact h
      -- Build tail domain
      let tailDomain : IntervalRat := ⟨e.domain.hi, domain.hi, hhi_le⟩
      -- Show tail has coverage
      have hcontig := coverage_tail_contiguous e (e' :: es') domain hcov
      have htail_cov : checkCoverage (e' :: es') tailDomain = true :=
        contiguous_to_coverage_tail e' es' e.domain.hi domain hcontig hadj.symm hhi_le
      -- Integrability on subintervals
      have hInt_e : IntervalIntegrable f MeasureTheory.volume e.domain.lo e.domain.hi := by
        apply integrable_subinterval f domain.lo domain.hi e.domain.lo e.domain.hi
          (Rat.cast_le.mpr domain.le) (Rat.cast_le.mpr e.domain.le)
        · exact Rat.cast_le.mpr (le_of_eq hfirst.symm)
        · exact Rat.cast_le.mpr hhi_le
        · exact hInt
      have hInt_tail : IntervalIntegrable f MeasureTheory.volume tailDomain.lo tailDomain.hi := by
        apply integrable_subinterval f domain.lo domain.hi tailDomain.lo tailDomain.hi
          (Rat.cast_le.mpr domain.le) (Rat.cast_le.mpr tailDomain.le)
        · exact Rat.cast_le.mpr hlo_le
        · exact le_refl _
        · exact hInt
      -- Use IH on tail (es = e' :: es')
      -- IH signature: domain → coverage → integrability → nonempty → result
      have hne_tail : (e' :: es') ≠ [] := by simp
      have ih_result := ih tailDomain htail_cov hInt_tail hne_tail
      -- Use integral additivity: ∫[a,b] + ∫[b,c] = ∫[a,c]
      have h_add := intervalIntegral.integral_add_adjacent_intervals hInt_e hInt_tail
      -- tailDomain = ⟨e.domain.hi, domain.hi, _⟩, so tailDomain.hi = domain.hi
      have htail_hi_eq : (tailDomain.hi : ℝ) = (domain.hi : ℝ) := rfl
      -- Substitute in h_add and ih_result
      simp only [htail_hi_eq] at h_add ih_result
      -- Goal: ∫[domain.lo, domain.hi] = ∫[e.lo, e.hi] + sum(rest)
      -- hfirst: e.domain.lo = domain.lo (in ℚ)
      -- h_add: ∫[e.lo, e.hi] + ∫[e.hi, domain.hi] = ∫[e.lo, domain.hi]
      -- ih_result: ∫[e.hi, domain.hi] = sum(rest)
      have hfirst_cast : (e.domain.lo : ℝ) = (domain.lo : ℝ) := by exact_mod_cast hfirst
      rw [← hfirst_cast]
      -- Goal: ∫[e.lo, domain.hi] = ∫[e.lo, e.hi] + sum(rest)
      rw [← h_add, ih_result]

/-- **Main Soundness Theorem for Certificate-Based Integration**

If verifyCertificate returns true, the actual integral is in the target interval.
This is the key theorem that makes certificate-based verification sound.

The proof proceeds as follows:
1. Extract the three conditions from verifyCertificate = true
2. Use coverage_integral_sum to write total integral as sum of partition integrals
3. Use partition_bound_correct to show each partition integral ∈ its bound
4. Use sum_mem_sum_intervals to show the sum of integrals ∈ sum of bounds
5. Use checkSumInTarget to show sum of bounds ⊆ target
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CertificateIntegration/Variant6a4574cf8c5d7f698236040192b508d4a77a48272f733eb6c1eb36a76d539e14.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335e39587dbaa85521f4e8fc941808c68eeeb679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
