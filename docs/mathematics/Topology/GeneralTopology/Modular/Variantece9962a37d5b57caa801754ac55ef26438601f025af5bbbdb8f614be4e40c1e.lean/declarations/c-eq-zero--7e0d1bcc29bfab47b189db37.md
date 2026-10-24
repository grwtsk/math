# c_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54f4e2dc-6742-190b-4168-d0d4c95639f3",
  "kind": "theorem",
  "lexical_name": "c_eq_zero",
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
  "slug": "c-eq-zero--7e0d1bcc29bfab47b189db37",
  "source": {
    "blob": "0b65e86e231f39c0a13cd4f3f817f39ac55e169e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 485,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e0d1bcc29bfab47b189db37e314dde94931819c0c505118d4639d6a87a1018f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f4e2dc-6742-190b-4168-d0d4c95639f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem c_eq_zero (hz : z ∈ 𝒟ᵒ) (hg : g • z ∈ 𝒟ᵒ) : g 1 0 = 0 := by
  have hp : ∀ {g' : SL(2, ℤ)}, g' • z ∈ 𝒟ᵒ → g' 1 0 ≠ 1 := by
    intro g' hg'
    by_contra hc
    let a := g' 0 0
    let d := g' 1 1
    have had : T ^ (-a) * g' = S * T ^ d := by
      rw [g_eq_of_c_eq_one hc]
      dsimp [a, d]
      group
    let w := T ^ (-a) • g' • z
    have h₁ : w = S • T ^ d • z := by simp only [w, ← mul_smul, had]
    replace h₁ : normSq w < 1 := h₁.symm ▸ normSq_S_smul_lt_one (one_lt_normSq_T_zpow_smul hz d)
    have h₂ : 1 < normSq w := one_lt_normSq_T_zpow_smul hg' (-a)
    linarith
  have hn : g 1 0 ≠ -1 := by
    intro hc
    replace hc : (-g) 1 0 = 1 := by simp [← neg_eq_iff_eq_neg.mpr hc]
    replace hg : -g • z ∈ 𝒟ᵒ := (SL_neg_smul g z).symm ▸ hg
    exact hp hg hc
  specialize hp hg
  rcases Int.abs_le_one_iff.mp <| abs_c_le_one hz hg with ⟨⟩ <;> tauto

/-- Second Fundamental Domain Lemma: if both `z` and `g • z` are in the open domain `𝒟ᵒ`,
where `z : ℍ` and `g : SL(2,ℤ)`, then `z = g • z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variantece9962a37d5b57caa801754ac55ef26438601f025af5bbbdb8f614be4e40c1e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b65e86e231f39c0a13cd4f3f817f39ac55e169e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
