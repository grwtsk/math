# LSeries_eventually_eq_zero_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43a78bdc10b471f3ee5b3a2be34587b390eff487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53cb925ac5949be1aed98972bab0d96b3d3d90ecca08e8d1e28f563f314121a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:307e25b0-40eb-7eba-6dec-0d15a56a1d22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5165c3e-f96d-1840-25f6-6cf73a33dc19",
  "kind": "lemma",
  "lexical_name": "LSeries_eventually_eq_zero_iff'",
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
  "slug": "lseries-eventually-eq-zero-iff--c69d6e0dc45c674f788c7f1f",
  "source": {
    "blob": "43a78bdc10b471f3ee5b3a2be34587b390eff487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant53cb925ac5949be1aed98972bab0d96b3d3d90ecca08e8d1e28f563f314121a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c69d6e0dc45c674f788c7f1f96a40875ab0404d36e072eb180339337abebe9df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant53cb925ac5949be1aed98972bab0d96b3d3d90ecca08e8d1e28f563f314121a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5165c3e-f96d-1840-25f6-6cf73a33dc19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_eventually_eq_zero_iff' {f : ℕ → ℂ} :
    (fun x : ℝ ↦ LSeries f x) =ᶠ[atTop] 0 ↔ (∀ n ≠ 0, f n = 0) ∨ abscissaOfAbsConv f = ⊤ := by
  by_cases h : abscissaOfAbsConv f = ⊤
  · simpa [h] using!
      Eventually.of_forall <| by simp [LSeries_eq_zero_of_abscissaOfAbsConv_eq_top h]
  · simp only [ne_eq, h, or_false]
    refine ⟨fun H ↦ ?_, fun H ↦ Eventually.of_forall fun x ↦ ?_⟩
    · let F (n : ℕ) : ℂ := if n = 0 then 0 else f n
      have hF₀ : F 0 = 0 := rfl
      have hF {n : ℕ} (hn : n ≠ 0) : F n = f n := ite_eq_right hn
      suffices ∀ n, F n = 0 from fun n hn ↦ (hF hn).symm.trans (this n)
      have ha : ¬ abscissaOfAbsConv F = ⊤ := abscissaOfAbsConv_congr hF ▸ h
      have h' (x : ℝ) : LSeries F x = LSeries f x := LSeries_congr hF x
      have H' (n : ℕ) : (fun x : ℝ ↦ n ^ (x : ℂ) * LSeries F x) =ᶠ[atTop] fun _ ↦ 0 := by
        simp only [h']
        rw [eventuallyEq_iff_exists_mem] at H ⊢
        obtain ⟨s, hs⟩ := H
        exact ⟨s, hs.1, fun x hx ↦ by simp [hs.2 hx]⟩
      intro n
      induction n using Nat.strongRecOn with | ind n ih =>
      -- it suffices to show that `n ^ x * LSeries F x` tends to `F n` as `x` tends to `∞`
      suffices Tendsto (fun x : ℝ ↦ n ^ (x : ℂ) * LSeries F x) atTop (nhds (F n)) by
        replace this := this.congr' <| H' n
        simp only [tendsto_const_nhds_iff] at this
        exact this.symm
      cases n with
      | zero => exact Tendsto.congr' (H' 0).symm <| by simp [hF₀]
      | succ n =>
          simpa using! LSeries.tendsto_cpow_mul_atTop (fun m hm ↦ ih m <| lt_succ_of_le hm) <|
            Ne.lt_top ha
    · simp [LSeries_congr (fun {n} ↦ H n) x, show (fun _ : ℕ ↦ (0 : ℂ)) = 0 from rfl]

open Nat in
/-- Assuming `f 0 = 0`, the `LSeries` of `f` is zero if and only if either `f = 0` or the
L-series converges nowhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant53cb925ac5949be1aed98972bab0d96b3d3d90ecca08e8d1e28f563f314121a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant53cb925ac5949be1aed98972bab0d96b3d3d90ecca08e8d1e28f563f314121a8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a78bdc10b471f3ee5b3a2be34587b390eff487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
