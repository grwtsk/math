# _root_.Zeta23.XiPrime.FamilyHyps.windowAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d65f5a2f-0b25-44e0-cc97-89351aa5bfe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:199c97b3-0f92-a2ab-f41a-7d72f198977c",
  "kind": "theorem",
  "lexical_name": "_root_.Zeta23.XiPrime.FamilyHyps.windowAt",
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
  "slug": "root-zeta23-xiprime-familyhyps-windowat--981d4eadc6041dd58a617b8f",
  "source": {
    "blob": "545614fe9736c8813f20df2657488a97b4f6ec48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:981d4eadc6041dd58a617b8f21f4087cdf1ab5dec3cb46c6fb984c3107a33677",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:199c97b3-0f92-a2ab-f41a-7d72f198977c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Zeta23.XiPrime.FamilyHyps.windowAt {Pf : ℝ → Params} (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 1 ≤ C ∧ ∀ T : ℝ, T₁ ≤ T → WindowAt (Pf T) T C := by
  obtain ⟨lam, hlam0, _, hlam⟩ := hPf.lam_const
  obtain ⟨C, T₀, hW⟩ := hPf.window
  refine ⟨max C 1, max T₀ (max 1 (2 * Real.pi * Real.exp (1 / lam))), le_max_right _ _,
    fun T hT => ?_⟩
  have hT₀ : T₀ ≤ T := le_trans (le_max_left _ _) hT
  have hT1 : 1 ≤ T := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hT
  have hTe : 2 * Real.pi * Real.exp (1 / lam) ≤ T :=
    le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hT
  obtain ⟨hcd, hsupp, -, habs, hder⟩ := hW T hT₀
  have hL : 1 ≤ (Pf T).L T := by
    have h2π : 0 < 2 * Real.pi := by positivity
    have hlog : 1 / lam ≤ Real.log (T / (2 * Real.pi)) := by
      rw [Real.le_log_iff_exp_le (by positivity), le_div_iff₀ h2π]
      calc Real.exp (1 / lam) * (2 * Real.pi) = 2 * Real.pi * Real.exp (1 / lam) := mul_comm _ _
        _ ≤ T := hTe
    show 1 ≤ (Pf T).lam * l T
    rw [hlam T, l]
    calc (1 : ℝ) = lam * (1 / lam) := by field_simp
      _ ≤ lam * Real.log (T / (2 * Real.pi)) := mul_le_mul_of_nonneg_left hlog hlam0.le
  have hd : ∀ j : ℕ, 1 ≤ j → j ≤ 3 → ∫ u, |iteratedDeriv j ((Pf T).phi T) u| ≤ max C 1 :=
    fun j h1 h3 => ((hder j h1 h3).2).trans (le_max_left _ _)
  refine ⟨hT1, hL, le_max_right _ _, hcd, hsupp, habs, ?_, ?_, ?_⟩
  · simpa only [iteratedDeriv_one] using hd 1 le_rfl (by norm_num)
  · simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hd 2 (by norm_num) (by norm_num)
  · simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hd 3 (by norm_num) le_rfl

namespace WindowAt

variable {P : Params} {T C : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variant4fe2154de34c5e74aea47fa501a21d3ca9247772ef040c0acc638a902ddef889.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545614fe9736c8813f20df2657488a97b4f6ec48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
