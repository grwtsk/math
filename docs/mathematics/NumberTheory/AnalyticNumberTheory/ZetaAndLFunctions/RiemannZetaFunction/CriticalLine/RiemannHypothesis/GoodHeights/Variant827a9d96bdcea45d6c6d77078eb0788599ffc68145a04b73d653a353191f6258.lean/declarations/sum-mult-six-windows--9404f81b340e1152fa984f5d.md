# sum_mult_six_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b37bee9-a0a4-bea9-ab2a-9171355907a1",
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
  "slug": "sum-mult-six-windows--9404f81b340e1152fa984f5d",
  "source": {
    "blob": "d97c35408e53dc199598cbe28b616fc5cf347344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9404f81b340e1152fa984f5d7c40990502100e8eb881feee1946b05bf5ca9775",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b37bee9-a0a4-bea9-ab2a-9171355907a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–154.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97c35408e53dc199598cbe28b616fc5cf347344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
