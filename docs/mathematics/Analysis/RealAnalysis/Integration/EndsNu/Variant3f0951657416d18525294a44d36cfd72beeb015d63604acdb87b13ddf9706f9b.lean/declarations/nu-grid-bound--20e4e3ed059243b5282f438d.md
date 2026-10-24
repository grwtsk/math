# nu_grid_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62536a23-cc71-56ac-8ca4-a18f44ea5312",
  "kind": "theorem",
  "lexical_name": "nu_grid_bound",
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
  "slug": "nu-grid-bound--20e4e3ed059243b5282f438d",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 777,
    "line": 720,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e4e3ed059243b5282f438d2299ab8c6b04f7bf0ddd9177afa3ec59fd929b62",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62536a23-cc71-56ac-8ca4-a18f44ea5312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_grid_bound (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hBl : p.l ≤ B) (hL2l : p.L ≤ 2 * p.l)
    (hT : 2 * π * Real.exp 8 ≤ p.T) :
    ∫ τ in (p.I)ᶜ, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ CN2 cϱ * (B * (p.L * p.l)) := by
  have hl8 : 8 ≤ p.l := Setting.le_l_of_T hT
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hL := hF.L_pos
  have hc4 := hF.four_le_cϱ
  have hc : (0:ℝ) ≤ cϱ := by linarith
  have hB : 0 ≤ B := by linarith
  have hLl : p.L ≤ 2 * p.l := hL2l
  have hpoly : 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + p.L * cϱ * B) ≤ 100 * (1 + cϱ) * (B * (p.L * p.l)) := by
    have hLl64 : 64 ≤ p.L * p.l := by
      have := mul_le_mul hL8 hl8 (by norm_num) hL.le; linarith
    have hL2 : p.L ^ 2 ≤ 2 * (p.L * p.l) := by
      rw [sq]; nlinarith [mul_le_mul_of_nonneg_left hLl hL.le]
    -- divide out B ≥ 0
    set M := p.L * p.l with hM
    have hcM : 0 ≤ cϱ * M := by positivity
    have e1 : (4:ℝ) ≤ M := by linarith
    have e2 : 4 * p.L ≤ M := by
      rw [hM]; nlinarith [mul_nonneg hL.le (by linarith : (0:ℝ) ≤ p.l - 4)]
    have e3 : 27 * cϱ * p.L ≤ 4 * (cϱ * M) := by
      have h27 : 27 * p.L ≤ 4 * M := by
        rw [hM]; nlinarith [mul_nonneg hL.le (by linarith : (0:ℝ) ≤ 4 * p.l - 27)]
      have := mul_le_mul_of_nonneg_left h27 hc
      linarith
    have e4 : cϱ * p.L ^ 2 ≤ cϱ * (2 * M) := mul_le_mul_of_nonneg_left hL2 hc
    have inner : 2 * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + 2 * (p.L * cϱ) ≤ 100 * (1 + cϱ) * M := by
      have : cϱ * p.L * p.l = cϱ * M := by rw [hM]; ring
      rw [this]
      have hM0 : 0 ≤ M := by linarith
      linarith [e1, e2, e3, e4, hcM, hM0]
    have := mul_le_mul_of_nonneg_left inner hB
    have eB : 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + p.L * cϱ * B)
        = B * (2 * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
          + 2 * (p.L * cϱ)) := by ring
    have eR : 100 * (1 + cϱ) * (B * (p.L * p.l)) = B * (100 * (1 + cϱ) * M) := by
      rw [hM]; ring
    rw [eB, eR]
    exact this
  have hCN2 : 100 * (1 + cϱ) ≤ CN2 cϱ := by
    rw [CN2_def, abs_of_nonneg hc]
    have := abs_nonneg (Real.log cϱ)
    nlinarith
  calc ∫ τ in (p.I)ᶜ, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
          + p.L * cϱ * B) := nu_grid_bound_raw hνc hF hν (by linarith) hT
    _ ≤ 100 * (1 + cϱ) * (B * (p.L * p.l)) := hpoly
    _ ≤ CN2 cϱ * (B * (p.L * p.l)) :=
        mul_le_mul_of_nonneg_right hCN2 (by positivity)

/-- **N2, L-intrinsic form**: ∫_{τ∉I}|ν|σ ≤ CN2·B·L·(L + l)  (l = log(T/2π) carries the
genuine log T from the window geometry; no bandwidth cap, absorbing hypothesis `L ≤ B`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
