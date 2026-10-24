# IsBigO.nat_Top_of_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df3c34cc-00c8-122c-5d1a-6daf5849d546",
  "kind": "theorem",
  "lexical_name": "IsBigO.nat_Top_of_atTop",
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
  "slug": "isbigo-nat-top-of-attop--5d78c88fcdee500b4770d9ce",
  "source": {
    "blob": "3a09a10fcf49da99210c3489b775fc36a274b40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 408,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d78c88fcdee500b4770d9ceb2c084a9912e52ae903db90824919d5e793388cb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3c34cc-00c8-122c-5d1a-6daf5849d546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigO.nat_Top_of_atTop (f g : ℕ → ℝ) (h : f =O[Filter.atTop] g)
    (h0 : ∀ n, g n = 0 → f n = 0) : f =O[⊤] g := by
  simp only [Asymptotics.isBigO_top, Real.norm_eq_abs]
  rw [Asymptotics.isBigO_atTop_iff_eventually_exists] at h
  simp only [ge_iff_le, Real.norm_eq_abs, Filter.eventually_atTop] at h
  obtain ⟨N, hN⟩ := h
  specialize hN N le_rfl
  obtain ⟨c, hc⟩ := hN
  let C := Finset.max' (insert c ((Finset.range N).image (fun n ↦ |f n| * |g n|⁻¹))) (by simp)
  refine ⟨C, fun n ↦ ?_⟩
  by_cases hn : N ≤ n
  · calc |f n| ≤ c * |g n| := hc n hn
      _ ≤ C * |g n| := by
        gcongr
        apply Finset.le_max'
        simp
  · by_cases hg : g n = 0
    · simp [hg, h0]
    rw [← mul_inv_le_iff₀]
    · apply Finset.le_max'
      simp only [Finset.mem_insert, Finset.mem_image, Finset.mem_range]
      exact .inr ⟨n, by omega, rfl⟩
    · simp [hg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09a10fcf49da99210c3489b775fc36a274b40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
