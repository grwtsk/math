# linearSum_bounded_by_sumAbs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:216f72ed-df33-aab0-9411-730581cb8da6",
  "kind": "theorem",
  "lexical_name": "linearSum_bounded_by_sumAbs",
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
  "slug": "linearsum-bounded-by-sumabs--cf3e127e6cbb565738e75d65",
  "source": {
    "blob": "a3c906d8899028f064ac01abf4b1db912db27469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf3e127e6cbb565738e75d65b4a74ef8f8fd258bdfd4db538c1388e8233da46e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216f72ed-df33-aab0-9411-730581cb8da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem linearSum_bounded_by_sumAbs (coeffs : List ℚ) (eps : NoiseAssignment)
    (hvalid : validNoise eps) (hlen : eps.length = coeffs.length) :
    |linearSum coeffs eps| ≤ sumAbs coeffs := by
  simp only [linearSum]
  induction coeffs generalizing eps with
  | nil =>
    simp only [List.zipWith, List.sum_nil, abs_zero]
    have h : sumAbs [] = 0 := by simp [sumAbs]
    simp only [h, Rat.cast_zero, le_refl]
  | cons c cs ih =>
    cases eps with
    | nil => simp at hlen
    | cons e es =>
      simp only [List.length_cons, add_left_inj] at hlen
      have hvalid_e : -1 ≤ e ∧ e ≤ 1 := hvalid e (by simp)
      have hvalid_es : validNoise es := fun x hx => hvalid x (List.mem_cons_of_mem e hx)
      simp only [List.zipWith, List.sum_cons]
      have ih_bound := ih es hvalid_es hlen
      have h_abs_e : |e| ≤ 1 := abs_le.mpr hvalid_e
      have h_ce : |(↑c : ℝ) * e| ≤ |(↑c : ℝ)| := by
        calc |(↑c : ℝ) * e| = |(↑c : ℝ)| * |e| := abs_mul _ _
          _ ≤ |(↑c : ℝ)| * 1 := by nlinarith [abs_nonneg (↑c : ℝ)]
          _ = |(↑c : ℝ)| := by ring
      have h_sumAbs_cons : (sumAbs (c :: cs) : ℝ) = (|c| : ℝ) + (sumAbs cs : ℝ) := by
        simp only [sumAbs, List.foldl_cons]
        rw [sumAbs_foldl_add]
        push_cast
        ring
      have h_abs_cast : |(↑c : ℝ)| = ((|c| : ℚ) : ℝ) := (Rat.cast_abs c).symm
      calc |↑c * e + (List.zipWith (fun c e => ↑c * e) cs es).sum|
          ≤ |↑c * e| + |(List.zipWith (fun c e => ↑c * e) cs es).sum| := abs_add_le _ _
        _ ≤ |(↑c : ℝ)| + (sumAbs cs : ℝ) := by linarith
        _ = ((|c| : ℚ) : ℝ) + (sumAbs cs : ℝ) := by rw [h_abs_cast]
        _ = (sumAbs (c :: cs) : ℝ) := by rw [h_sumAbs_cons, h_abs_cast]

/-! ### Multiplication Soundness Infrastructure -/

/-- The total deviation of v from c0 is bounded by deviationBound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c906d8899028f064ac01abf4b1db912db27469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
