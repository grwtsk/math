# candidate_boundary_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b713bb54-f5d9-eb52-0666-792989d9b852",
  "kind": "theorem",
  "lexical_name": "candidate_boundary_majorant",
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
  "slug": "candidate-boundary-majorant--d96747ceb1ab75b6343b5b6a",
  "source": {
    "blob": "a40482344a47f8856e7be6f23641be5e5bc8ef2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96747ceb1ab75b6343b5b6a721c62de67816abcd36803c873bbb0a565c032b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b713bb54-f5d9-eb52-0666-792989d9b852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundary_majorant (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ φ : ℝ → ℝ, Integrable φ ∧ Tendsto φ atTop (nhds 0) ∧
      Tendsto φ atBot (nhds 0) ∧
      ∀ σ t : ℝ, 0 ≤ σ → ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t := by
  obtain ⟨C, hC, hdec⟩ := candidate_vertical_decay ε hε
  let K : ℝ := C * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) * h⁻¹ ^ 3
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg (by exact_mod_cast hX)
  have hK : 0 ≤ K := by dsimp only [K]; positivity
  let φ : ℝ → ℝ := fun t => K * (1 + (h * t) ^ 2)⁻¹
  have hbase : Tendsto (fun t : ℝ => 1 + (h * t) ^ 2) atTop atTop :=
    tendsto_const_nhds.add_atTop
      ((tendsto_pow_atTop (by norm_num : (2 : ℕ) ≠ 0)).comp
        (tendsto_id.const_mul_atTop hh))
  have htop : Tendsto φ atTop (nhds 0) := by
    simpa only [φ, mul_zero, Function.comp_def] using
      (tendsto_inv_atTop_zero.comp hbase).const_mul K
  have hbot : Tendsto φ atBot (nhds 0) := by
    simpa only [φ, mul_neg, neg_sq, Function.comp_def] using
      htop.comp tendsto_neg_atBot_atTop
  refine ⟨φ, (scaled_cauchy_integrable_integral h hh).1.const_mul K, htop, hbot, ?_⟩
  intro σ t hσ
  have ha : 0 ≤ h * |t| := mul_nonneg hh.le (abs_nonneg t)
  have hsq : (h * t) ^ 2 = (h * |t|) ^ 2 := by simp only [mul_pow, sq_abs]
  have hp : 1 + (h * t) ^ 2 ≤ (1 + h * |t|) ^ 3 := by
    rw [hsq]
    nlinarith [sq_nonneg (h * |t|), mul_nonneg ha (sq_nonneg (h * |t|))]
  calc
    ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ K / (1 + h * |t|) ^ 3 :=
      hdec X hX h hh hh1 σ hσ t
    _ ≤ K / (1 + (h * t) ^ 2) :=
      div_le_div_of_nonneg_left hK (by positivity) hp
    _ = φ t := div_eq_mul_inv _ _

/-- The unchanged candidate's genuine angular inverse integral vanishes at every negative time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb01a91ff1b221e3d816aacb9b7c7b386de3971ef88971a1138d55d55667d8db2.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40482344a47f8856e7be6f23641be5e5bc8ef2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
