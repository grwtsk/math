# sum_mult_six_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dba3f39a75f2bde58693a7099808443cac7773ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50e85b4e-b5ea-4a06-6448-2fbfb6fb2c4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c27f3bd3-27eb-3247-68b4-e035ca2f3dce",
  "kind": "lemma",
  "lexical_name": "sum_mult_six_windows",
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
  "slug": "sum-mult-six-windows--c56fc860f5505e99b4490c79",
  "source": {
    "blob": "dba3f39a75f2bde58693a7099808443cac7773ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56fc860f5505e99b4490c7965063e4b5541181d6342b08e5ace512c96979211",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c27f3bd3-27eb-3247-68b4-e035ca2f3dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mult_six_windows {A₀ : ℝ}
    (hLC : Tail.LocalCount (fun ρ : zetaZeroConfig.carrier => (ρ : ℂ).im)
      (fun ρ : zetaZeroConfig.carrier => zetaZeroConfig.mult ρ) A₀)
    {a : ℤ} (F : Finset zetaZeroConfig.carrier)
    (hF : ∀ ρ ∈ F, (a : ℝ) < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ (a : ℝ) + 6) :
    ∑ ρ ∈ F, (zetaZeroConfig.mult ρ : ℝ) ≤ 6 * (A₀ * Real.log (|(a : ℝ)| + 9)) := by
  classical
  have hA₀ := hLC.A₀_pos.le
  -- key k : ℕ with a + k < Im ≤ a + k + 1
  set key : zetaZeroConfig.carrier → ℕ := fun ρ => (⌈(ρ : ℂ).im⌉ - a - 1).toNat with hkey
  have hkey_spec : ∀ ρ ∈ F, ((a : ℝ) + key ρ < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ (a : ℝ) + key ρ + 1)
      ∧ key ρ < 6 := by
    intro ρ hρ
    obtain ⟨h1, h2⟩ := hF ρ hρ
    have hc1 := Int.le_ceil (ρ : ℂ).im
    have hc2 := Int.ceil_lt_add_one (ρ : ℂ).im
    have hlo : a + 1 ≤ ⌈(ρ : ℂ).im⌉ := by
      have : (a : ℝ) < ⌈(ρ : ℂ).im⌉ := lt_of_lt_of_le h1 hc1
      have : a < ⌈(ρ : ℂ).im⌉ := by exact_mod_cast this
      omega
    have hhi : ⌈(ρ : ℂ).im⌉ ≤ a + 6 := by
      have : (⌈(ρ : ℂ).im⌉ : ℝ) < (a : ℝ) + 6 + 1 := by linarith
      have : ⌈(ρ : ℂ).im⌉ < a + 6 + 1 := by exact_mod_cast this
      omega
    have hk : ((key ρ : ℕ) : ℤ) = ⌈(ρ : ℂ).im⌉ - a - 1 := by
      simp only [hkey]; rw [Int.toNat_of_nonneg (by omega)]
    have hkR : ((key ρ : ℕ) : ℝ) = (⌈(ρ : ℂ).im⌉ : ℝ) - a - 1 := by exact_mod_cast hk
    refine ⟨⟨by linarith, by linarith⟩, ?_⟩
    have : ((key ρ : ℕ) : ℤ) < 6 := by omega
    exact_mod_cast this
  have h := Tail.sum_mult_le_of_windows F (fun ρ => zetaZeroConfig.mult ρ) key 6
    (C := A₀ * Real.log (|(a : ℝ)| + 9)) (fun ρ hρ => (hkey_spec ρ hρ).2) (fun k hk => by
      have hw := hLC.window ((a : ℝ) + k) (F.filter fun ρ => key ρ = k) (fun ρ hρ => by
        simp only [Finset.mem_filter] at hρ
        have := (hkey_spec ρ hρ.1).1
        rw [hρ.2] at this; exact this)
      refine hw.trans (mul_le_mul_of_nonneg_left ?_ hA₀)
      apply Real.log_le_log (by positivity)
      have : |(a : ℝ) + k| ≤ |(a : ℝ)| + k := by
        calc |(a:ℝ) + k| ≤ |(a:ℝ)| + |(k:ℝ)| := abs_add_le _ _
          _ = |(a:ℝ)| + k := by rw [Nat.abs_cast]
      have hk6 : (k : ℝ) < 6 := by exact_mod_cast hk
      linarith)
  simpa using h

/-- card ≤ total multiplicity (each nontrivial zero has multiplicity ≥ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba3f39a75f2bde58693a7099808443cac7773ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
