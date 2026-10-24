# integer_antidiagonal_eq_admissible_of_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb07d657-3fc8-55df-11a6-d5ea6ea131dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab5390ed-5335-95db-3d68-161d00b246b8",
  "kind": "theorem",
  "lexical_name": "integer_antidiagonal_eq_admissible_of_two_le",
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
  "slug": "integer-antidiagonal-eq-admissible-of-two-le--21b3cb2729a09963cc2240dc",
  "source": {
    "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21b3cb2729a09963cc2240dc4cf3b4cfc60912bb6e9719b19cc750e5fe57a81c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5390ed-5335-95db-3d68-161d00b246b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_antidiagonal_eq_admissible_of_two_le
    (A : ℝ) (_hA : 1 ≤ A)
    (d : ℕ)
    (hd2 : 2 ≤ d) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  have hdpos : 0 < d := by omega
  calc
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
        ∑ n ∈ primePowerInventory (2 * A),
          if d ∣ n ∧ d ≠ 0
          then Real.log (n / d : ℕ) * closedPrimeWeight A n
          else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : n ≠ 0 := by
        have hn2 := (Finset.mem_Icc.mp hn).1
        omega
      exact antidiagonal_first_factor A d n hn0
    _ = _ := by
      let S : Finset ℕ :=
        (primePowerInventory (2 * A)).filter (fun n => d ∣ n)
      calc
        (∑ n ∈ primePowerInventory (2 * A),
          if d ∣ n ∧ d ≠ 0
          then Real.log (n / d : ℕ) * closedPrimeWeight A n
          else 0) =
            ∑ n ∈ S,
              Real.log (n / d : ℕ) * closedPrimeWeight A n := by
          symm
          unfold S
          rw [Finset.sum_filter]
          apply Finset.sum_congr rfl
          intro n hn
          by_cases hdvd : d ∣ n
          · simp [hdvd, hdpos.ne']
          · simp [hdvd]
        _ =
            ∑ k ∈ admissibleK A d,
              sourceKernelTerm A k d := by
          apply Finset.sum_bij (fun n hn => n / d)
          · intro n hn
            have hnS := (Finset.mem_filter.mp hn)
            have hninv := Finset.mem_Icc.mp hnS.1
            have hdvd := hnS.2
            have hkpos0 : 0 < n / d :=
              Nat.div_pos (Nat.le_of_dvd (by omega) hdvd) hdpos
            have hkpos : 1 ≤ n / d := hkpos0
            have hprod : d * (n / d) = n :=
              Nat.mul_div_cancel' hdvd
            apply Finset.mem_filter.mpr
            refine ⟨Finset.mem_Icc.mpr ⟨hkpos, ?_⟩, ?_⟩
            · exact le_trans (Nat.div_le_self n d) hninv.2
            · simpa only [hprod, sourceKernelCutoff, sourceUpper] using hninv.2
          · intro n₁ hn₁ n₂ hn₂ heq
            have h₁ := (Finset.mem_filter.mp hn₁).2
            have h₂ := (Finset.mem_filter.mp hn₂).2
            calc
              n₁ = d * (n₁ / d) := (Nat.mul_div_cancel' h₁).symm
              _ = d * (n₂ / d) := by rw [heq]
              _ = n₂ := Nat.mul_div_cancel' h₂
          · intro k hk
            have hk' := Finset.mem_filter.mp hk
            have hkIcc := Finset.mem_Icc.mp hk'.1
            refine ⟨d * k, ?_, ?_⟩
            · apply Finset.mem_filter.mpr
              refine ⟨Finset.mem_Icc.mpr ⟨?_, hk'.2⟩, dvd_mul_right d k⟩
              have hmul : d ≤ d * k := by
                simpa only [mul_one] using Nat.mul_le_mul_left d hkIcc.1
              simpa using (hd2.trans hmul)
            · simp [hdpos.ne']
          · intro n hn
            have hdvd := (Finset.mem_filter.mp hn).2
            have hprod := Nat.mul_div_cancel' hdvd
            unfold sourceKernelTerm closedPrimeWeight
            rw [← Nat.cast_mul, hprod]


/-- The unit-divisor term has exactly the missing zero summand `log 1 = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
