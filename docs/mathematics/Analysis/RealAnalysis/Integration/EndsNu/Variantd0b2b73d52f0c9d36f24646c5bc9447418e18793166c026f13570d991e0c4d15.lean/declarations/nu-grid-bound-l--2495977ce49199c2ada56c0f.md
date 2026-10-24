# nu_grid_bound_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceb183b9-79fb-1b80-4ec6-078ca82da32e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dc2f6a9-d60b-4f32-af17-234fcf735783",
  "kind": "theorem",
  "lexical_name": "nu_grid_bound_L",
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
  "slug": "nu-grid-bound-l--2495977ce49199c2ada56c0f",
  "source": {
    "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 770,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2495977ce49199c2ada56c0fb3364ae7569d1995cf6be8cd84b8566d457a691a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dc2f6a9-d60b-4f32-af17-234fcf735783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_grid_bound_L (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (hBL : p.L ≤ B)
    (hT : 2 * π * Real.exp 8 ≤ p.T) :
    ∫ τ in (p.I)ᶜ, (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|
      ≤ CN2 cϱ * (B * (p.L * (p.L + p.l))) := by
  have hl8 : 8 ≤ p.l := Setting.le_l_of_T hT
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hL := hF.L_pos
  have hc4 := hF.four_le_cϱ
  have hc : (0:ℝ) ≤ cϱ := by linarith
  have hB : 0 ≤ B := by linarith
  have hpoly : 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + p.L * cϱ * B) ≤ 100 * (1 + cϱ) * (B * (p.L * (p.L + p.l))) := by
    set M := p.L * (p.L + p.l) with hM
    have hM128 : 128 ≤ M := by rw [hM]; nlinarith
    have hcM : 0 ≤ cϱ * M := by positivity
    have e1 : (4:ℝ) ≤ M := by linarith
    have e2 : 4 * p.L ≤ M := by rw [hM]; nlinarith
    have e3 : 27 * cϱ * p.L ≤ 4 * (cϱ * M) := by
      have h27 : 27 * p.L ≤ 4 * M := by rw [hM]; nlinarith
      have := mul_le_mul_of_nonneg_left h27 hc
      linarith
    have e4 : cϱ * p.L ^ 2 ≤ cϱ * M := by
      apply mul_le_mul_of_nonneg_left _ hc; rw [hM]; nlinarith
    have e5 : cϱ * p.L * p.l ≤ cϱ * M := by
      rw [hM, mul_assoc]; apply mul_le_mul_of_nonneg_left _ hc; nlinarith
    have inner : 2 * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + 2 * (p.L * cϱ) ≤ 100 * (1 + cϱ) * M := by
      have hM0 : 0 ≤ M := by linarith
      nlinarith [e1, e2, e3, e4, e5, hcM, hM0]
    have := mul_le_mul_of_nonneg_left inner hB
    have eB : 2 * (B * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
        + p.L * cϱ * B)
        = B * (2 * (2 + 2 * p.L + 25 / 2 * cϱ * p.L + cϱ * p.L ^ 2 / 2 + cϱ * p.L * p.l)
          + 2 * (p.L * cϱ)) := by ring
    have eR : 100 * (1 + cϱ) * (B * (p.L * (p.L + p.l))) = B * (100 * (1 + cϱ) * M) := by
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
    _ ≤ 100 * (1 + cϱ) * (B * (p.L * (p.L + p.l))) := hpoly
    _ ≤ CN2 cϱ * (B * (p.L * (p.L + p.l))) :=
        mul_le_mul_of_nonneg_right hCN2 (by positivity)

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
