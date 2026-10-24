# integrateInterval1WithInv_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9583b3c6-77f4-12c9-24b1-8b9b4b399dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:928fe0cc-c076-edb3-5d47-d3f556b16417",
  "kind": "theorem",
  "lexical_name": "integrateInterval1WithInv_correct",
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
  "slug": "integrateinterval1withinv-correct--c5c43f129a8c6367d4a65614",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2193,
    "line": 2134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c43f129a8c6367d4a65614e2f8d697a62580aa4450a1073d510c0023fcf570",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928fe0cc-c076-edb3-5d47-d3f556b16417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2134–2193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrateInterval1WithInv_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (bound : IntervalRat)
    (hsome : integrateInterval1WithInv e I = some bound)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ bound := by
  unfold integrateInterval1WithInv at hsome
  cases h_eval : evalInterval?1 e I with
  | none =>
    simp only [h_eval] at hsome
    cases hsome
  | some J =>
    simp only [h_eval] at hsome
    cases hsome
    -- Bounds from evalInterval?1
    have hbounds : ∀ x : ℝ, x ∈ I → Expr.eval (fun _ => x) e ∈ J := fun x hx =>
      evalInterval?1_correct e hsupp I J h_eval x hx
    have hlo : ∀ x ∈ Set.Icc (I.lo : ℝ) (I.hi : ℝ),
        (J.lo : ℝ) ≤ Expr.eval (fun _ => x) e := by
      intro x hx; exact (hbounds x hx).1
    have hhi : ∀ x ∈ Set.Icc (I.lo : ℝ) (I.hi : ℝ),
        Expr.eval (fun _ => x) e ≤ (J.hi : ℝ) := by
      intro x hx; exact (hbounds x hx).2
    have hIle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
    have ⟨h_lower, h_upper⟩ := LeanCert.Engine.integral_bounds_of_bounds hIle hInt hlo hhi
    have hwidth : (I.width : ℝ) = (I.hi : ℝ) - (I.lo : ℝ) := by
      simp only [IntervalRat.width, Rat.cast_sub]
    have hwidth_nn : (0 : ℝ) ≤ I.width := by exact_mod_cast IntervalRat.width_nonneg I
    have hJ_le : (J.lo : ℝ) ≤ J.hi := by exact_mod_cast J.le
    have h_lo' : (I.width : ℝ) * J.lo ≤
        ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e := by
      calc (I.width : ℝ) * J.lo = J.lo * I.width := by ring
         _ = J.lo * ((I.hi : ℝ) - I.lo) := by rw [hwidth]
         _ ≤ ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e := h_lower
    have h_hi' : ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e ≤
        (I.width : ℝ) * J.hi := by
      calc ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e
         ≤ J.hi * ((I.hi : ℝ) - I.lo) := h_upper
       _ = J.hi * I.width := by rw [hwidth]
       _ = (I.width : ℝ) * J.hi := by ring
    have h1 : (I.width : ℝ) * J.lo ≤ I.width * J.hi :=
      mul_le_mul_of_nonneg_left hJ_le hwidth_nn
    rw [IntervalRat.mem_def]
    constructor
    · have hcorner : (IntervalRat.mul (IntervalRat.singleton I.width) J).lo =
          min (min (I.width * J.lo) (I.width * J.hi))
              (min (I.width * J.lo) (I.width * J.hi)) := rfl
      simp only [hcorner, min_self, Rat.cast_min, Rat.cast_mul]
      calc (↑I.width * ↑J.lo) ⊓ (↑I.width * ↑J.hi)
          = ↑I.width * ↑J.lo := min_eq_left h1
        _ ≤ ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e := h_lo'
    · have hcorner : (IntervalRat.mul (IntervalRat.singleton I.width) J).hi =
          max (max (I.width * J.lo) (I.width * J.hi))
              (max (I.width * J.lo) (I.width * J.hi)) := rfl
      simp only [hcorner, max_self, Rat.cast_max, Rat.cast_mul]
      calc ∫ x in (↑I.lo)..(↑I.hi), Expr.eval (fun _ => x) e
          ≤ ↑I.width * ↑J.hi := h_hi'
        _ = (↑I.width * ↑J.lo) ⊔ (↑I.width * ↑J.hi) := (max_eq_right h1).symm

/-- Check if the computed integration bound contains a target value.
    Returns false if interval evaluation fails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L2134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
