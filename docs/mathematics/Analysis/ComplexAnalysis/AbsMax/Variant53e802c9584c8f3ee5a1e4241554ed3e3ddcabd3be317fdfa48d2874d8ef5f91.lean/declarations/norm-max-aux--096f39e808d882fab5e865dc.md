# norm_max_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6512cafc7708ee890dc957b9115d6182acc79db0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83fcabf0-dffe-fbd0-6966-277621622bec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54691c08-1d71-a37a-a720-128751b9b84c",
  "kind": "theorem",
  "lexical_name": "norm_max_aux₁",
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
  "slug": "norm-max-aux--096f39e808d882fab5e865dc",
  "source": {
    "blob": "6512cafc7708ee890dc957b9115d6182acc79db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 105,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096f39e808d882fab5e865dc89546347f3ad2ce8f74d2143b0f8003c87a4afda",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54691c08-1d71-a37a-a720-128751b9b84c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_max_aux₁ [CompleteSpace F] {f : ℂ → F} {z w : ℂ}
    (hd : DiffContOnCl ℂ f (ball z (dist w z)))
    (hz : IsMaxOn (norm ∘ f) (closedBall z (dist w z)) z) : ‖f w‖ = ‖f z‖ := by
  -- Consider a circle of radius `r = dist w z`.
  set r : ℝ := dist w z
  have hw : w ∈ closedBall z r := mem_closedBall.2 le_rfl
  -- Assume the converse. Since `‖f w‖ ≤ ‖f z‖`, we have `‖f w‖ < ‖f z‖`.
  refine (isMaxOn_iff.1 hz _ hw).antisymm (not_lt.1 ?_)
  rintro hw_lt : ‖f w‖ < ‖f z‖
  have hr : 0 < r := dist_pos.2 (ne_of_apply_ne (norm ∘ f) hw_lt.ne)
  -- Due to Cauchy integral formula, it suffices to prove the following inequality.
  suffices ‖∮ ζ in C(z, r), (ζ - z)⁻¹ • f ζ‖ < 2 * π * ‖f z‖ by
    refine this.ne ?_
    have A : (∮ ζ in C(z, r), (ζ - z)⁻¹ • f ζ) = (2 * π * I : ℂ) • f z :=
      hd.circleIntegral_sub_inv_smul (mem_ball_self hr)
    simp [A, norm_smul, Real.pi_pos.le]
  suffices ‖∮ ζ in C(z, r), (ζ - z)⁻¹ • f ζ‖ < 2 * π * r * (‖f z‖ / r) by
    rwa [mul_assoc, mul_div_cancel₀ _ hr.ne'] at this
  /- This inequality is true because `‖(ζ - z)⁻¹ • f ζ‖ ≤ ‖f z‖ / r` for all `ζ` on the circle and
    this inequality is strict at `ζ = w`. -/
  have hsub : sphere z r ⊆ closedBall z r := sphere_subset_closedBall
  refine circleIntegral.norm_integral_lt_of_norm_le_const_of_lt hr ?_ ?_ ⟨w, rfl, ?_⟩
  · show ContinuousOn (fun ζ : ℂ => (ζ - z)⁻¹ • f ζ) (sphere z r)
    refine ((continuousOn_id.sub continuousOn_const).inv₀ ?_).smul (hd.continuousOn_ball.mono hsub)
    exact fun ζ hζ => sub_ne_zero.2 (ne_of_mem_sphere hζ hr.ne')
  · show ∀ ζ ∈ sphere z r, ‖(ζ - z)⁻¹ • f ζ‖ ≤ ‖f z‖ / r
    rintro ζ (hζ : ‖ζ - z‖ = r)
    rw [le_div_iff₀ hr, norm_smul, norm_inv, hζ, mul_comm, mul_inv_cancel_left₀ hr.ne']
    exact hz (hsub hζ)
  show ‖(w - z)⁻¹ • f w‖ < ‖f z‖ / r
  rw [norm_smul, norm_inv, ← div_eq_inv_mul]
  exact (div_lt_div_iff_of_pos_right hr).2 hw_lt

/-!
Now we drop the assumption `CompleteSpace F` by embedding `F` into its completion.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6512cafc7708ee890dc957b9115d6182acc79db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
