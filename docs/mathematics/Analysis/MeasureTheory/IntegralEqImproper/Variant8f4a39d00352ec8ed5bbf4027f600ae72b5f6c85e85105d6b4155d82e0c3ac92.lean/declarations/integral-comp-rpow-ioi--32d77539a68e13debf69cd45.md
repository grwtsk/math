# integral_comp_rpow_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f18b36-e8a5-2ceb-b6e9-daa40b7f593f",
  "kind": "theorem",
  "lexical_name": "integral_comp_rpow_Ioi",
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
  "slug": "integral-comp-rpow-ioi--32d77539a68e13debf69cd45",
  "source": {
    "blob": "a9cd29cd83cffc82b346ff6c62d50ebd2c26c519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1079,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d77539a68e13debf69cd457ad5697f0992f58b4c2f1bec3230155c0822651b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f18b36-e8a5-2ceb-b6e9-daa40b7f593f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1079–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_comp_rpow_Ioi (g : ℝ → E) {p : ℝ} (hp : p ≠ 0) :
    (∫ x in Ioi 0, (|p| * x ^ (p - 1)) • g (x ^ p)) = ∫ y in Ioi 0, g y := by
  let S := Ioi (0 : ℝ)
  have a1 : ∀ x : ℝ, x ∈ S → HasDerivWithinAt (fun t : ℝ => t ^ p) (p * x ^ (p - 1)) S x :=
    fun x hx => (hasDerivAt_rpow_const (Or.inl (mem_Ioi.mp hx).ne')).hasDerivWithinAt
  have a2 : InjOn (fun x : ℝ => x ^ p) S := by
    rcases lt_or_gt_of_ne hp with (h | h)
    · apply StrictAntiOn.injOn
      intro x hx y hy hxy
      rw [← inv_lt_inv₀ (rpow_pos_of_pos hx p) (rpow_pos_of_pos hy p), ← rpow_neg (le_of_lt hx),
        ← rpow_neg (le_of_lt hy)]
      exact rpow_lt_rpow (le_of_lt hx) hxy (neg_pos.mpr h)
    exact StrictMonoOn.injOn fun x hx y _ hxy => rpow_lt_rpow (mem_Ioi.mp hx).le hxy h
  have a3 : (fun t : ℝ => t ^ p) '' S = S := by
    ext1 x; rw [mem_image]; constructor
    · rintro ⟨y, hy, rfl⟩; exact rpow_pos_of_pos hy p
    · intro hx; refine ⟨x ^ (1 / p), rpow_pos_of_pos hx _, ?_⟩
      rw [← rpow_mul (le_of_lt hx), one_div_mul_cancel hp, rpow_one]
  have := integral_image_eq_integral_abs_deriv_smul measurableSet_Ioi a1 a2 g
  rw [a3] at this; rw [this]
  refine setIntegral_congr_fun measurableSet_Ioi ?_
  intro x hx; dsimp only
  rw [abs_mul, abs_of_nonneg (rpow_nonneg (le_of_lt hx) _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant8f4a39d00352ec8ed5bbf4027f600ae72b5f6c85e85105d6b4155d82e0c3ac92.lean#L1079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cd29cd83cffc82b346ff6c62d50ebd2c26c519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
