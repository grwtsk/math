# integer_antidiagonal_eq_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f20918d7-bf5b-fc5e-597b-cfa5713c7a85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf33552c-9adf-f7b8-fad1-d5bb71fae65d",
  "kind": "theorem",
  "lexical_name": "integer_antidiagonal_eq_admissible",
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
  "slug": "integer-antidiagonal-eq-admissible--b0ba5e3f5513c032f8415823",
  "source": {
    "blob": "fcccc485caa4689e37a81696df13246c4b7ba9be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0ba5e3f5513c032f841582330a017297aa2e9314aeee7d2b226c24f2a62cdb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf33552c-9adf-f7b8-fad1-d5bb71fae65d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_antidiagonal_eq_admissible
    (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ)
    (hdwin :
      d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊) :
    (∑ n ∈ primePowerInventory (2 * A),
      ∑ dk ∈ n.divisorsAntidiagonal,
        if dk.1 = d
        then Real.log dk.2 * closedPrimeWeight A n
        else 0) =
      ∑ k ∈ admissibleK A d,
        sourceKernelTerm A k d := by
  have hdpos : 0 < d := by
    have hlower : 1 ≤ sourceLower A := by
      unfold sourceLower
      nlinarith
    have hfloor : 1 ≤ ⌊sourceLower A⌋₊ :=
      Nat.le_floor hlower
    have hdgt := (Finset.mem_Ioc.mp hdwin).1
    omega
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
            · simpa [hprod] using hninv.2
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
              have hd2 : 2 ≤ d := by
                have hlower : 1 ≤ sourceLower A := by
                  unfold sourceLower
                  nlinarith
                have hdgt : ⌊sourceLower A⌋₊ < d :=
                  (Finset.mem_Ioc.mp hdwin).1
                have hfloor1 : 1 ≤ ⌊sourceLower A⌋₊ :=
                  Nat.le_floor hlower
                omega
              have hmul := Nat.mul_le_mul_left d hkIcc.1
              simpa using (hd2.trans hmul)
            · simp [hdpos.ne']
          · intro n hn
            have hdvd := (Finset.mem_filter.mp hn).2
            have hprod := Nat.mul_div_cancel' hdvd
            simp [sourceKernelTerm, closedPrimeWeight, hprod, Nat.cast_mul]

/-- Full finite integer agreement for the actual real source kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variantc491a74382fea963ff3110434f689adb9339dce44af80af4c47aa481c2c36b1e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcccc485caa4689e37a81696df13246c4b7ba9be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
