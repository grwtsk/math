# norm_wt_le_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1091,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc52be8d-2455-de24-a1d9-3ac65a08a143",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5439ce70-d6c5-7a8e-2401-3706955793c3",
  "kind": "theorem",
  "lexical_name": "norm_wt_le_zero",
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
  "slug": "norm-wt-le-zero--ca2e28eed7655bf4f1d5d31a",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1126,
    "line": 1091,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca2e28eed7655bf4f1d5d31a6a1246d213dec79fc6d384bdea430618fa4922c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5439ce70-d6c5-7a8e-2401-3706955793c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1091–1126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_wt_le_zero {s : ℂ} (hxi : xi s ≠ 0) : ∃ C : ℝ, ∀ ρ : ℂ, IsNontrivialZero ρ →
    ‖wt s ρ‖ ≤ C / (1 + Complex.normSq (gammaOf ρ)) := by
  have hxi' : xi (reflect s) ≠ 0 := by
    rw [xi_reflect]; exact (map_ne_zero _).mpr hxi
  obtain ⟨c, hc, h⟩ := exists_normSq_sub_ge hxi
  obtain ⟨c', hc', h'⟩ := exists_normSq_sub_ge hxi'
  refine ⟨‖reflect s - s‖ / 2 * (1 / c + 1 / c'), fun ρ hρ => ?_⟩
  have hz : xi ρ = 0 := (xi_eq_zero_iff ρ).mpr hρ
  have h1 : s - ρ ≠ 0 := sub_ne_zero.mpr (fun e => hxi (e ▸ hz))
  have h2 : reflect s - ρ ≠ 0 := sub_ne_zero.mpr (fun e => hxi' (e ▸ hz))
  set N : ℝ := 1 + Complex.normSq (gammaOf ρ) with hNdef
  have hN : 0 < N := by rw [hNdef]; linarith [Complex.normSq_nonneg (gammaOf ρ)]
  have ha : c * N ≤ ‖s - ρ‖ ^ 2 := by rw [Complex.sq_norm]; exact h ρ hρ
  have hb : c' * N ≤ ‖reflect s - ρ‖ ^ 2 := by rw [Complex.sq_norm]; exact h' ρ hρ
  have ha0 : 0 < ‖s - ρ‖ := norm_pos_iff.mpr h1
  have hb0 : 0 < ‖reflect s - ρ‖ := norm_pos_iff.mpr h2
  rw [wt_eq s ρ h1 h2, norm_div, norm_mul]
  -- 1/(ab) ≤ (1/a² + 1/b²)/2 ≤ (1/(cN) + 1/(c′N))/2
  have key : 1 / (‖s - ρ‖ * ‖reflect s - ρ‖) ≤ (1 / (c * N) + 1 / (c' * N)) / 2 := by
    have hab : 1 / (‖s - ρ‖ * ‖reflect s - ρ‖) ≤ (1 / ‖s - ρ‖ ^ 2 + 1 / ‖reflect s - ρ‖ ^ 2) / 2 := by
      rw [div_add_div _ _ (by positivity) (by positivity), div_div,
        div_le_div_iff₀ (by positivity) (by positivity)]
      nlinarith [sq_nonneg (‖s - ρ‖ - ‖reflect s - ρ‖), mul_pos ha0 hb0]
    have h3 : 1 / ‖s - ρ‖ ^ 2 ≤ 1 / (c * N) :=
      one_div_le_one_div_of_le (by positivity) ha
    have h4 : 1 / ‖reflect s - ρ‖ ^ 2 ≤ 1 / (c' * N) :=
      one_div_le_one_div_of_le (by positivity) hb
    linarith
  calc ‖reflect s - s‖ / (‖s - ρ‖ * ‖reflect s - ρ‖)
      = ‖reflect s - s‖ * (1 / (‖s - ρ‖ * ‖reflect s - ρ‖)) := by ring
    _ ≤ ‖reflect s - s‖ * ((1 / (c * N) + 1 / (c' * N)) / 2) :=
        mul_le_mul_of_nonneg_left key (norm_nonneg _)
    _ = ‖reflect s - s‖ / 2 * (1 / c + 1 / c') / N := by
        field_simp

/-- Σ_ρ m_ρ φ(ρ) converges absolutely whenever |φ(ρ)| ≤ C/(1 + |γ_ρ|²) on the zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L1091).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
