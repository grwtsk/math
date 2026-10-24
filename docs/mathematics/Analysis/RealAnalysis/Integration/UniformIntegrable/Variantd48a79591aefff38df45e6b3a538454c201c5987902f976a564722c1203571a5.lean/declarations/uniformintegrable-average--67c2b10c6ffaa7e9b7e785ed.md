# uniformIntegrable_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef60dea3-4848-a359-725f-c967b6b3b503",
  "kind": "theorem",
  "lexical_name": "uniformIntegrable_average",
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
  "slug": "uniformintegrable-average--67c2b10c6ffaa7e9b7e785ed",
  "source": {
    "blob": "313652b796b799acabeca063febbf5151bb2cc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 924,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c2b10c6ffaa7e9b7e785ed412dccc720aa2e11171e449100f2c5281e40c637",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef60dea3-4848-a359-725f-c967b6b3b503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformIntegrable_average
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (hp : 1 ≤ p) {f : ℕ → α → E} (hf : UniformIntegrable f p μ) :
    UniformIntegrable (fun (n : ℕ) => (n : ℝ)⁻¹ • (∑ i ∈ Finset.range n, f i)) p μ := by
  obtain ⟨hf₂, hf₃⟩ := hf
  refine ⟨unifIntegrable_iff'.2 fun ε hε ↦ ?_, ?_⟩
  · obtain ⟨δ, hδ₁, hδ₂⟩ := (unifIntegrable_iff.1 hf₂) ε hε
    refine ⟨δ, hδ₁, fun n s hs hle ↦ ?_⟩
    simp_rw [Finset.smul_sum]
    refine (eLpNorm_sum_le hp).trans ?_
    obtain rfl | hn := eq_or_ne n 0
    · simp
    have hnorm (i : ℕ) : eLpNorm ((n : ℝ)⁻¹ • f i) p (μ.restrict s) =
        ‖(n : ℝ)⁻¹‖ₑ * eLpNorm (f i) p (μ.restrict s) :=
      eLpNorm_const_smul _ _ _ _
    simp_rw [hnorm, ← Finset.mul_sum]
    rw [enorm_inv (by positivity), Real.enorm_natCast, ← ENNReal.div_eq_inv_mul]
    refine div_le_of_le_mul' ?_
    have key := Finset.sum_le_card_nsmul (.range n) (fun i ↦ eLpNorm (f i) p (μ.restrict s)) ε
    simp only [Finset.mem_range, Finset.card_range, nsmul_eq_mul] at key
    exact key fun i _ ↦ hδ₂ i s hle
  · obtain ⟨C, hC⟩ := hf₃
    simp_rw [Finset.smul_sum]
    refine ⟨C, fun n => (eLpNorm_sum_le hp).trans ?_⟩
    obtain rfl | hn := eq_or_ne n 0
    · simp
    have hnorm (i : ℕ) : eLpNorm ((n : ℝ)⁻¹ • f i) p μ = ‖(n : ℝ)⁻¹‖ₑ * eLpNorm (f i) p μ :=
      eLpNorm_const_smul _ _ _ _
    simp_rw [hnorm, ← Finset.mul_sum]
    rw [enorm_inv (by positivity), Real.enorm_natCast, ← ENNReal.div_eq_inv_mul]
    refine div_le_of_le_mul' ?_
    simpa using Finset.sum_le_card_nsmul (.range n) _ _ fun i _ => hC i

/-- The averaging of a uniformly integrable real-valued sequence is also uniformly integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variantd48a79591aefff38df45e6b3a538454c201c5987902f976a564722c1203571a5.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313652b796b799acabeca063febbf5151bb2cc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
