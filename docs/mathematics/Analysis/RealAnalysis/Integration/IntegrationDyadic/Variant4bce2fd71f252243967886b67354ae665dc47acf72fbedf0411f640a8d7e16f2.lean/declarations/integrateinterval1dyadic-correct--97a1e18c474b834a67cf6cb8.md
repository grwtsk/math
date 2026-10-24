# integrateInterval1Dyadic_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "503299e995e73d1768f22a63316db017b5f817b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fbeee5f-9b6e-f657-53f6-68b86e8d517f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fb14450-e866-7fff-5eb6-4ad90dc1ce91",
  "kind": "theorem",
  "lexical_name": "integrateInterval1Dyadic_correct",
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
  "slug": "integrateinterval1dyadic-correct--97a1e18c474b834a67cf6cb8",
  "source": {
    "blob": "503299e995e73d1768f22a63316db017b5f817b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a1e18c474b834a67cf6cb82c442855809bec5dfed03fe6443739b8a0dcd44f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb14450-e866-7fff-5eb6-4ad90dc1ce91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrateInterval1Dyadic_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (cfg : DyadicConfig)
    (hprec : cfg.precision ≤ 0)
    (hdom : evalDomainValidDyadic e (fun _ => IntervalDyadic.ofIntervalRat I cfg.precision) cfg)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈
      integrateInterval1Dyadic e I cfg := by
  -- Get bounds from Dyadic evaluation
  set J := evalDyadic1 e I cfg with hJ_def
  have hbounds : ∀ x : ℝ, x ∈ I → Expr.eval (fun _ => x) e ∈ J := by
    intro x hx
    have hmem_dyad : x ∈ IntervalDyadic.ofIntervalRat I cfg.precision :=
      IntervalDyadic.mem_ofIntervalRat hx cfg.precision hprec
    have henv : envMemDyadic (fun _ => x) (fun _ => IntervalDyadic.ofIntervalRat I cfg.precision) :=
      fun _ => hmem_dyad
    have heval := evalIntervalDyadic_correct_withInv e hsupp _ _ henv cfg hprec hdom
    show Expr.eval (fun _ => x) e ∈ J
    simp only [hJ_def, evalDyadic1]
    exact IntervalDyadic.mem_toIntervalRat.mpr heval
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
  show ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈ integrateInterval1Dyadic e I cfg
  simp only [integrateInterval1Dyadic, ← hJ_def, IntervalRat.mem_def]
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

/-! ### Partitioned integration -/

/-- Collect per-subinterval Dyadic integration bounds. Total (no Option). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503299e995e73d1768f22a63316db017b5f817b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
