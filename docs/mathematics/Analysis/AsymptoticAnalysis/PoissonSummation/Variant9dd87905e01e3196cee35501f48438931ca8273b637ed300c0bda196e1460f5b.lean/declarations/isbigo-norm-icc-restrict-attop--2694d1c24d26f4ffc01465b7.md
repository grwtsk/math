# isBigO_norm_Icc_restrict_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6692eac-1c05-1113-655d-7f6047d86bfd",
  "kind": "theorem",
  "lexical_name": "isBigO_norm_Icc_restrict_atTop",
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
  "slug": "isbigo-norm-icc-restrict-attop--2694d1c24d26f4ffc01465b7",
  "source": {
    "blob": "8181ba79b818c7c1f68d9f16495945a97778fbec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 141,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2694d1c24d26f4ffc01465b70efaba1b1af748b3fb8d586114e3e1e97765ee11",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6692eac-1c05-1113-655d-7f6047d86bfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_norm_Icc_restrict_atTop {f : C(ℝ, E)} {b : ℝ} (hb : 0 < b)
    (hf : IsBigO atTop f fun x : ℝ => |x| ^ (-b)) (R S : ℝ) :
    IsBigO atTop (fun x : ℝ => ‖f.restrict (Icc (x + R) (x + S))‖) fun x : ℝ => |x| ^ (-b) := by
  -- First establish an explicit estimate on decay of inverse powers.
  -- This is logically independent of the rest of the proof, but of no mathematical interest in
  -- itself, so it is proved using `async` rather than being formulated as a separate lemma.
  have claim :
    ∀ x : ℝ, max 0 (-2 * R) < x → ∀ y : ℝ, x + R ≤ y → y ^ (-b) ≤ (1 / 2) ^ (-b) * x ^ (-b) := by
    intro x hx y hy
    rw [max_lt_iff] at hx
    have hxR : 0 < x + R := by
      rcases le_or_lt 0 R with (h | h)
      · exact add_pos_of_pos_of_nonneg hx.1 h
      · rw [← sub_lt_iff_lt_add, zero_sub]
        refine' lt_trans _ hx.2
        rwa [neg_mul, neg_lt_neg_iff, two_mul, add_lt_iff_neg_left]
    have hy' : 0 < y := hxR.trans_le hy
    have : y ^ (-b) ≤ (x + R) ^ (-b) := by
      rw [rpow_neg hy'.le, rpow_neg hxR.le,
        inv_le_inv (rpow_pos_of_pos hy' _) (rpow_pos_of_pos hxR _)]
      exact rpow_le_rpow hxR.le hy hb.le
    refine' this.trans _
    rw [← mul_rpow one_half_pos.le hx.1.le, rpow_neg (mul_pos one_half_pos hx.1).le,
      rpow_neg hxR.le]
    refine' inv_le_inv_of_le (rpow_pos_of_pos (mul_pos one_half_pos hx.1) _) _
    exact rpow_le_rpow (mul_pos one_half_pos hx.1).le (by linarith) hb.le
  -- Now the main proof.
  obtain ⟨c, hc, hc'⟩ := hf.exists_pos
  simp only [IsBigO, IsBigOWith, eventually_atTop] at hc' ⊢
  obtain ⟨d, hd⟩ := hc'
  refine' ⟨c * (1 / 2) ^ (-b), ⟨max (1 + max 0 (-2 * R)) (d - R), fun x hx => _⟩⟩
  rw [ge_iff_le, max_le_iff] at hx
  have hx' : max 0 (-2 * R) < x := by linarith
  rw [max_lt_iff] at hx'
  rw [norm_norm,
    ContinuousMap.norm_le _
      (mul_nonneg (mul_nonneg hc.le <| rpow_nonneg_of_nonneg one_half_pos.le _) (norm_nonneg _))]
  refine' fun y => (hd y.1 (by linarith [hx.1, y.2.1])).trans _
  have A : ∀ x : ℝ, 0 ≤ |x| ^ (-b) := fun x => by positivity
  rw [mul_assoc, mul_le_mul_left hc, norm_of_nonneg (A _), norm_of_nonneg (A _)]
  convert claim x (by linarith only [hx.1]) y.1 y.2.1
  · apply abs_of_nonneg; linarith [y.2.1]
  · exact abs_of_pos hx'.1
set_option linter.uppercaseLean3 false in
#align is_O_norm_Icc_restrict_at_top isBigO_norm_Icc_restrict_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8181ba79b818c7c1f68d9f16495945a97778fbec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
