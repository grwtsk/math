# norm_coe_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1db652083f61f73d92ca087cb3d7118c871bb9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbd253a5-3a04-2413-31cc-cdd9e0e2a13a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a79122c-2eb0-923d-ed20-f5297a49f698",
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
  "slug": "norm-coe-mul--330f13e12e5ddf8c2da5285c",
  "source": {
    "blob": "a1db652083f61f73d92ca087cb3d7118c871bb9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 44,
    "path": "GRWTSK/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:330f13e12e5ddf8c2da5285ccdf827e13b0e7531bf398d679ba4d313a35dbfe1",
  "verification": {
    "reference": "docs/verification/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a79122c-2eb0-923d-ed20-f5297a49f698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–70.

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

[Verification target and public status](../../../../../verification/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1db652083f61f73d92ca087cb3d7118c871bb9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
