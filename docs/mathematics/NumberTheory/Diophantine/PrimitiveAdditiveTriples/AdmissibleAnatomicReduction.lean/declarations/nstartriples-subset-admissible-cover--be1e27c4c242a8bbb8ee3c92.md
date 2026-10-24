# nStarTriples_subset_admissible_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:172fd2d4-85e5-a6ba-5207-ec0c9ebce5be",
  "kind": "theorem",
  "lexical_name": "nStarTriples_subset_admissible_cover",
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
  "slug": "nstartriples-subset-admissible-cover--be1e27c4c242a8bbb8ee3c92",
  "source": {
    "blob": "b03bc40563f4fbc0d88dfabc9a0d7d09411e881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 307,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be1e27c4c242a8bbb8ee3c9269c13a22650256dacd8f2defbc86e97c1832fd3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:172fd2d4-85e5-a6ba-5207-ec0c9ebce5be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nStarTriples_subset_admissible_cover
    {lam ε : ℝ} (hlam : 0 ≤ lam) (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (X : ℕ) :
    nStarTriples lam X ⊆
      coveredTriples (admissibleParameters d lam ε X) := by
  classical
  intro t ht
  have hmem := mem_nStarTriples.mp ht
  have htcX : t.c ≤ X := hmem.1
  have htaX : t.a ≤ X := (Nat.le_of_lt t.a_lt_c).trans htcX
  have htbX : t.b ≤ X := (Nat.le_of_lt t.b_lt_c).trans htcX
  obtain ⟨xa, a₀, ha, ha₀, hxa_cop, ha_low, ha_up, ha₀_pos, hxa_pos, hxa_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.a_pos htaX
  obtain ⟨xb, b₀, hb, hb₀, hxb_cop, hb_low, hb_up, hb₀_pos, hxb_pos, hxb_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.b_pos htbX
  obtain ⟨xc, c₀, hc, hc₀, hxc_cop, hc_low, hc_up, hc₀_pos, hxc_pos, hxc_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := ε) hε_pos hε (d := d) hd t.c_pos htcX
  let ea : Fin d → ℕ := fun i ↦ Nat.log 2 (xa i)
  let eb : Fin d → ℕ := fun i ↦ Nat.log 2 (xb i)
  let ec : Fin d → ℕ := fun i ↦ Nat.log 2 (xc i)
  let r : Fin 3 → ℕ := ![a₀, b₀, c₀]
  let raw : RawIndex d := ⟨ea, eb, ec, r⟩
  let p : Parameters d := parametersOfIndex raw
  let q : Point d := ⟨xa, xb, xc⟩
  have hea : ea ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxa_le i)
  have heb : eb ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxb_le i)
  have hec : ec ∈ dyadicExponentTuples d X := by
    rw [mem_dyadicExponentTuples]
    intro i
    exact Nat.log_mono_right (hxc_le i)
  have hr : r ∈ residualTuples (residualCap ε X) := by
    rw [mem_residualTuples]
    intro i
    fin_cases i
    · change 1 ≤ a₀ ∧ a₀ ≤ residualCap ε X
      exact ⟨ha₀_pos, residual_le_cap ha₀⟩
    · change 1 ≤ b₀ ∧ b₀ ≤ residualCap ε X
      exact ⟨hb₀_pos, residual_le_cap hb₀⟩
    · change 1 ≤ c₀ ∧ c₀ ≤ residualCap ε X
      exact ⟨hc₀_pos, residual_le_cap hc₀⟩
  have hp_candidate : p ∈ parameterCandidates d X (residualCap ε X) := by
    apply Finset.mem_image.mpr
    refine ⟨raw, ?_, rfl⟩
    simp [rawParameterIndices, raw, hea, heb, hec, hr]
  have htotalA : p.totalA xa = t.a := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalA, monomial] using ha.symm
  have htotalB : p.totalB xb = t.b := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalB, monomial] using hb.symm
  have htotalC : p.totalC xc = t.c := by
    simpa [p, raw, r, parametersOfIndex, Parameters.totalC, monomial] using hc.symm
  have hda : ∀ i, ClosedDyadic (xa i) (p.A i) := by
    intro i
    exact closedDyadic_dyadicScale (hxa_pos i)
  have hdb : ∀ i, ClosedDyadic (xb i) (p.B i) := by
    intro i
    exact closedDyadic_dyadicScale (hxb_pos i)
  have hdc : ∀ i, ClosedDyadic (xc i) (p.C i) := by
    intro i
    exact closedDyadic_dyadicScale (hxc_pos i)
  have hprimitive : SupportPrimitive p q := by
    constructor
    · exact (t.coprime_ab.coprime_dvd_left
        (htotalA ▸ carrierA_dvd_totalA p xa)).coprime_dvd_right
          (htotalB ▸ carrierB_dvd_totalB p xb)
    constructor
    · exact (t.coprime_ac.coprime_dvd_left
        (htotalA ▸ carrierA_dvd_totalA p xa)).coprime_dvd_right
          (htotalC ▸ carrierC_dvd_totalC p xc)
    · exact (t.coprime_bc.coprime_dvd_left
        (htotalB ▸ carrierB_dvd_totalB p xb)).coprime_dvd_right
          (htotalC ▸ carrierC_dvd_totalC p xc)
  have hq : q ∈ boxFinset p := by
    rw [mem_boxFinset]
    exact ⟨hda, hdb, hdc,
      by simpa [q, htotalA] using t.a_pos,
      by simpa [q, htotalB] using t.b_pos,
      by simpa [q, htotalC] using t.c_pos,
      by simpa [q, htotalA, htotalB, htotalC] using t.sum_eq,
      hprimitive⟩
  have hadmissible : ExplicitAdmissible lam ε X p := by
    apply explicitAdmissible_of_factorizations hlam ht p xa xb xc hda hdb hdc
      htotalA htotalB htotalC
    · simpa [p, raw, r, parametersOfIndex] using ha₀_pos
    · simpa [p, raw, r, parametersOfIndex] using hb₀_pos
    · simpa [p, raw, r, parametersOfIndex] using hc₀_pos
    · simpa [p, raw, r, parametersOfIndex] using ha₀
    · simpa [p, raw, r, parametersOfIndex] using hb₀
    · simpa [p, raw, r, parametersOfIndex] using hc₀
    · simpa [supportProduct] using ha_low
    · simpa [supportProduct] using hb_low
    · simpa [supportProduct] using hc_low
    · simpa [supportProduct] using ha_up
    · simpa [supportProduct] using hb_up
    · simpa [supportProduct] using hc_up
  have hp : p ∈ admissibleParameters d lam ε X := by
    exact Finset.mem_filter.mpr ⟨hp_candidate, hadmissible⟩
  have hmap : boxToTriple p ⟨q, hq⟩ = t := by
    apply PrimitiveAdditiveTriple.coordinates_injective
    simp [boxToTriple, q, htotalA, htotalB]
  rw [coveredTriples]
  apply Finset.mem_biUnion.mpr
  refine ⟨p, hp, ?_⟩
  apply Finset.mem_image.mpr
  exact ⟨⟨q, hq⟩, by simp, hmap⟩

/-- Exact finite pigeonhole bound with the source-derived admissibility
constraints and every fixed loss displayed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03bc40563f4fbc0d88dfabc9a0d7d09411e881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
