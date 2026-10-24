# norm_coe_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e462f04f-5d37-54b2-929d-04ceb10cc5ad",
  "kind": "theorem",
  "lexical_name": "norm_coe_mul",
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
  "slug": "norm-coe-mul--f531ce6225f1c459a5be7ca2",
  "source": {
    "blob": "38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f531ce6225f1c459a5be7ca2e1721fecc949d286150953d4b2330db261b62efe",
  "verification": {
    "reference": "docs/verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e462f04f-5d37-54b2-929d-04ceb10cc5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coe_mul (x : ℝ) (t : ℝ) :
    ‖(↑(t * x) : AddCircle (t * p))‖ = |t| * ‖(x : AddCircle p)‖ := by
  have aux : ∀ {a b c : ℝ}, a ∈ zmultiples b → c * a ∈ zmultiples (c * b) := fun {a b c} h => by
    simp only [mem_zmultiples_iff] at h ⊢
    obtain ⟨n, rfl⟩ := h
    exact ⟨n, (mul_smul_comm n c b).symm⟩
  rcases eq_or_ne t 0 with (rfl | ht); · simp
  have ht' : |t| ≠ 0 := (not_congr abs_eq_zero).mpr ht
  simp only [quotient_norm_eq, Real.norm_eq_abs]
  conv_rhs => rw [← smul_eq_mul, ← Real.sInf_smul_of_nonneg (abs_nonneg t)]
  simp only [QuotientAddGroup.mk'_apply, QuotientAddGroup.eq_iff_sub_mem]
  congr 1
  ext z
  rw [mem_smul_set_iff_inv_smul_mem₀ ht']
  show
    (∃ y, y - t * x ∈ zmultiples (t * p) ∧ |y| = z) ↔ ∃ w, w - x ∈ zmultiples p ∧ |w| = |t|⁻¹ * z
  constructor
  · rintro ⟨y, hy, rfl⟩
    refine' ⟨t⁻¹ * y, _, by rw [abs_mul, abs_inv]⟩
    rw [← inv_mul_cancel_left₀ ht x, ← inv_mul_cancel_left₀ ht p, ← mul_sub]
    exact aux hy
  · rintro ⟨w, hw, hw'⟩
    refine' ⟨t * w, _, by rw [← (eq_inv_mul_iff_mul_eq₀ ht').mp hw', abs_mul]⟩
    rw [← mul_sub]
    exact aux hw
#align add_circle.norm_coe_mul AddCircle.norm_coe_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
