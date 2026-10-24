# symmetricRieszQuotient_noninteger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:212f7620-60c5-9e94-ac55-0ad43272b01a",
  "kind": "theorem",
  "lexical_name": "symmetricRieszQuotient_noninteger",
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
  "slug": "symmetricrieszquotient-noninteger--f6a9e4fb52c271795b0d4bcd",
  "source": {
    "blob": "e086f62a7417d154af4f993c89b52d6fdc9b9df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a9e4fb52c271795b0d4bcdf054d1d548bdda4f643ac31a3eb28c0b3f2380e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212f7620-60c5-9e94-ac55-0ad43272b01a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricRieszQuotient_noninteger (N : ℕ) (x h : ℝ)
    (hx : 1 < x) (hN : ⌊x⌋₊ ≤ N) (hh : 0 < h)
    (hleft : h ≤ x - (⌊x⌋₊ : ℝ))
    (hright : h ≤ (⌊x⌋₊ : ℝ) + 1 - x) :
    symmetricRieszQuotient N x h = psiHalf x := by
  classical
  have hnot : (⌊x⌋₊ : ℝ) ≠ x := by intro he; rw [he] at hleft; linarith
  have hsum : (∑ m ∈ Finset.Icc 2 N,
      if m ≤ ⌊x⌋₊ then ArithmeticFunction.vonMangoldt m else 0) = _root_.Chebyshev.psi x := by
    rw [← Finset.sum_filter]
    have hset : (Finset.Icc 2 N).filter (fun m => m ≤ ⌊x⌋₊) = Finset.Icc 2 ⌊x⌋₊ := by
      ext m
      simp only [Finset.mem_filter, Finset.mem_Icc]
      omega
    rw [hset, _root_.Chebyshev.psi_eq_sum_Icc]
    apply Finset.sum_subset
    · intro m hm
      obtain ⟨hm, hm'⟩ := Finset.mem_Icc.mp hm
      exact Finset.mem_Icc.mpr ⟨by omega, hm'⟩
    · intro m hm hmissing
      have hm2 : m < 2 := by
        have hm' := Finset.mem_Icc.mp hm
        simp only [Finset.mem_Icc, not_and_or, not_le] at hmissing
        omega
      interval_cases m <;> simp
  have hnum : firstRieszPrefix N (x + h) - firstRieszPrefix N (x - h) =
      2 * h * ∑ m ∈ Finset.Icc 2 N,
        if m ≤ ⌊x⌋₊ then ArithmeticFunction.vonMangoldt m else 0 := by
    unfold firstRieszPrefix
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    by_cases hm : m ≤ ⌊x⌋₊
    · have hmr : (m : ℝ) ≤ (⌊x⌋₊ : ℝ) := by exact_mod_cast hm
      rw [if_pos hm, max_eq_left (by linarith), max_eq_left (by linarith)]
      ring
    · have hmr : (⌊x⌋₊ : ℝ) + 1 ≤ m := by
        exact_mod_cast (show ⌊x⌋₊ + 1 ≤ m by omega)
      rw [if_neg hm, max_eq_right (by linarith), max_eq_right (by linarith)]
      ring
  rw [symmetricRieszQuotient, hnum, hsum,
    psiHalf_eq_psi_of_not_integer (by linarith) hnot]
  field_simp

/-- Every noninteger x>1 admits a strictly positive reconstruction radius;
the radius depends on the actual distance to the neighboring integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e086f62a7417d154af4f993c89b52d6fdc9b9df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
