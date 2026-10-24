# c_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:319401c6-2430-2563-e71f-853d6f321d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9527114-5596-079c-57c9-6ab1375baec6",
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
  "slug": "c-eq-zero--191f21a65df0c7fae4d57275",
  "source": {
    "blob": "f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 513,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:191f21a65df0c7fae4d57275e32c66d80add8cf27ef3f0f09eba58fd4ec7fc9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9527114-5596-079c-57c9-6ab1375baec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem c_eq_zero (hz : z ∈ 𝒟ᵒ) (hg : g • z ∈ 𝒟ᵒ) : (↑ₘg) 1 0 = 0 := by
  have hp : ∀ {g' : SL(2, ℤ)}, g' • z ∈ 𝒟ᵒ → (↑ₘg') 1 0 ≠ 1 := by
    intro g' hg'
    by_contra hc
    let a := (↑ₘg') 0 0
    let d := (↑ₘg') 1 1
    have had : T ^ (-a) * g' = S * T ^ d := by rw [g_eq_of_c_eq_one hc]; group
    let w := T ^ (-a) • g' • z
    have h₁ : w = S • T ^ d • z := by simp only [← mul_smul, had]
    replace h₁ : normSq w < 1 := h₁.symm ▸ normSq_S_smul_lt_one (one_lt_normSq_T_zpow_smul hz d)
    have h₂ : 1 < normSq w := one_lt_normSq_T_zpow_smul hg' (-a)
    linarith
  have hn : (↑ₘg) 1 0 ≠ -1 := by
    intro hc
    replace hc : (↑ₘ(-g)) 1 0 = 1; · simp [← neg_eq_iff_eq_neg.mpr hc]
    replace hg : -g • z ∈ 𝒟ᵒ := (SL_neg_smul g z).symm ▸ hg
    exact hp hg hc
  specialize hp hg
  rcases Int.abs_le_one_iff.mp <| abs_c_le_one hz hg with ⟨⟩ <;> tauto
#align modular_group.c_eq_zero ModularGroup.c_eq_zero

/-- Second Main Fundamental Domain Lemma: if both `z` and `g • z` are in the open domain `𝒟ᵒ`,
where `z : ℍ` and `g : SL(2,ℤ)`, then `z = g • z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
