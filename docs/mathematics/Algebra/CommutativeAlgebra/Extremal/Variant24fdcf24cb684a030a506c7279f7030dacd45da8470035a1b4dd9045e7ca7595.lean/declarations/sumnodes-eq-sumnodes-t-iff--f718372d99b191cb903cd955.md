# sumNodes_eq_sumNodes_T_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54a5158-7a99-cc8b-f3b6-4bfb00abef64",
  "kind": "theorem",
  "lexical_name": "sumNodes_eq_sumNodes_T_iff",
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
  "slug": "sumnodes-eq-sumnodes-t-iff--f718372d99b191cb903cd955",
  "source": {
    "blob": "73633197ac87904f77938b2e313c01efdb70acc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f718372d99b191cb903cd95537dcdf6df3bb7794df5fbbc68d1d269651f51c4b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54a5158-7a99-cc8b-f3b6-4bfb00abef64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumNodes_eq_sumNodes_T_iff {n : ℕ} {c : ℕ → ℝ}
    (hcpos : ∀ i ≤ n, 0 < (-1) ^ i * (c i))
    {P : ℝ[X]} (hPdeg : P.degree ≤ n) (hPbnd : ∀ x ∈ Set.Icc (-1) 1, |P.eval x| ≤ 1) :
    (sumNodes n c P = sumNodes n c (T ℝ n)) ↔ P = T ℝ n := by
  refine ⟨fun h => ?_, by intro h; rw [h]⟩
  rw [sumNodes, sumNodes] at h
  apply eq_of_degrees_lt_of_eval_finset_eq ((Finset.range (n + 1)).image (node n ·))
  · apply lt_of_le_of_lt hPdeg
    rw [Nat.cast_lt, Finset.card_image_of_injOn (strictAntiOn_node n).injOn,
      Finset.card_range, Nat.lt_succ_iff]
  · rw [degree_T, Int.natAbs_natCast, Nat.cast_lt,
      Finset.card_image_of_injOn (strictAntiOn_node n).injOn,
      Finset.card_range, Nat.lt_succ_iff]
  replace h := ge_of_eq h
  contrapose! h
  obtain ⟨x, hx, hPx⟩ := h
  obtain ⟨i, hi, hix⟩ := Finset.mem_image.mp hx
  replace hi := Finset.mem_Iic.mpr (Finset.mem_range_succ_iff.mp hi)
  suffices ∑ i ≤ n, ((-1) ^ i * P.eval (node n i)) * ((-1) ^ i * c i) <
      ∑ i ≤ n, ((-1) ^ i * (T ℝ n).eval (node n i)) * ((-1) ^ i * c i) by
    simpa [negOnePow_mul_negOnePow_mul_cancel]
  have h_le {i : ℕ} (hi : i ∈ Finset.Iic n) :
    (-1) ^ i * P.eval (node n i) * ((-1) ^ i * c i) ≤
    (-1) ^ i * (T ℝ n).eval (node n i) * ((-1) ^ i * c i) := by
    refine mul_le_mul_of_nonneg_right ?_ (le_of_lt (hcpos i (Finset.mem_Iic.mp hi)))
    rw [eval_T_real_node hi, ← neg_pow', neg_neg, one_pow]
    exact negOnePow_mul_le (hPbnd _ node_mem_Icc)
  refine Finset.sum_lt_sum (fun i hi => h_le hi) ⟨i, hi, lt_of_le_of_ne (h_le hi) ?_⟩
  have := ne_of_lt (hcpos i (Finset.mem_Iic.mp hi))
  grind => ring

/-- Coefficients use to reproduce the leading coefficient of a polynomial given its values on the
Chebyshev nodes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73633197ac87904f77938b2e313c01efdb70acc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
