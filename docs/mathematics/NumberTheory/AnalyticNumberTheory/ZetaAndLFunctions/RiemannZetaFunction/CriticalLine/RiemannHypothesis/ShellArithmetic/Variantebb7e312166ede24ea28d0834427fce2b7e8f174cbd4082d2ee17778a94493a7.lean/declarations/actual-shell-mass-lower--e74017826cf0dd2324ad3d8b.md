# actual_shell_mass_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec761d4c-afb7-3473-9d12-c0086041e605",
  "kind": "theorem",
  "lexical_name": "actual_shell_mass_lower",
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
  "slug": "actual-shell-mass-lower--e74017826cf0dd2324ad3d8b",
  "source": {
    "blob": "93b28958275480b536cb783317548c5e54560511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantebb7e312166ede24ea28d0834427fce2b7e8f174cbd4082d2ee17778a94493a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74017826cf0dd2324ad3d8b5f61794527ca881216a85bfccb95867c7384b858",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantebb7e312166ede24ea28d0834427fce2b7e8f174cbd4082d2ee17778a94493a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec761d4c-afb7-3473-9d12-c0086041e605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shell_mass_lower {lo hi : ℝ} (hlo : 6 ≤ lo) (hlen : 12 ≤ hi - lo) :
    (hi - lo) / (12 * Real.sqrt hi) ≤ absoluteShellMass lo hi := by
  let T := (sixIndices lo hi).image (fun k ↦ 6 * k)
  have hinj : Function.Injective (fun k : ℕ ↦ 6 * k) := by intro a b h; dsimp only at h; omega
  have hsub : T ⊆ shell lo hi := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    have hloc := selected_six_atom_location hlo hlen hk
    exact Finset.mem_Ioc.mpr ⟨(Nat.floor_lt (by linarith : 0 ≤ lo)).mpr hloc.2.1,
      Nat.le_floor hloc.2.2⟩
  have hfirst : ((sixIndices lo hi).card : ℝ) / Real.sqrt hi ≤
      ∑ k ∈ sixIndices lo hi, |coefficient (6 * k)| := by
    calc
      _ = ∑ _k ∈ sixIndices lo hi, 1 / Real.sqrt hi := by simp [div_eq_mul_inv]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ selected_six_coefficient_lower hlo hlen hk)
  have himage : (∑ k ∈ sixIndices lo hi, |coefficient (6 * k)|) =
      ∑ n ∈ T, |coefficient n| := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hinj h)]
  rw [himage] at hfirst
  have hall : ((sixIndices lo hi).card : ℝ) / Real.sqrt hi ≤ absoluteShellMass lo hi := by
    apply hfirst.trans
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub (fun n hn hnt ↦ abs_nonneg _)
  have hcount := six_indices_card_lower (by linarith : 0 ≤ lo) hlen
  have hprice := div_le_div_of_nonneg_right hcount (Real.sqrt_nonneg hi)
  have hid : ((hi - lo) / 12) / Real.sqrt hi = (hi - lo) / (12 * Real.sqrt hi) := by ring
  rw [hid] at hprice
  exact hprice.trans hall

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantebb7e312166ede24ea28d0834427fce2b7e8f174cbd4082d2ee17778a94493a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShellArithmetic/Variantebb7e312166ede24ea28d0834427fce2b7e8f174cbd4082d2ee17778a94493a7.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b28958275480b536cb783317548c5e54560511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
