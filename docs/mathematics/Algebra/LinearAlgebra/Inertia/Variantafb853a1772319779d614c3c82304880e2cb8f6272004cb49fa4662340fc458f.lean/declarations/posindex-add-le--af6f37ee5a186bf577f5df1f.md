# posIndex_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d1de40376288d80e4938f69d81479c62835bf16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afb853a1772319779d614c3c82304880e2cb8f6272004cb49fa4662340fc458f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de0ec1d4-3765-0f62-2b94-512b8c8052da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdfa5be3-771d-7267-bdad-b6e3166b73e9",
  "kind": "theorem",
  "lexical_name": "posIndex_add_le",
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
  "slug": "posindex-add-le--af6f37ee5a186bf577f5df1f",
  "source": {
    "blob": "0d1de40376288d80e4938f69d81479c62835bf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inertia/Variantafb853a1772319779d614c3c82304880e2cb8f6272004cb49fa4662340fc458f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6f37ee5a186bf577f5df1feb94cd110f17d14d87933296540c56ec8c63d605",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inertia/Variantafb853a1772319779d614c3c82304880e2cb8f6272004cb49fa4662340fc458f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdfa5be3-771d-7267-bdad-b6e3166b73e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posIndex_add_le {Q₁ Q₂ : Matrix m m 𝕜}
    (hQ₁ : Q₁.IsHermitian) (hQ₂ : Q₂.IsHermitian) :
    posIndex (hQ₁.add hQ₂) ≤ posIndex hQ₁ + posIndex hQ₂ := by
  -- Any `(Q₁+Q₂)`-pos-def subspace `Vp` satisfies: `(Q₁)₊ + (Q₂)₊` is
  -- injective on it (same argument as the hard direction, with
  -- `P := (Q₁)₊ + (Q₂)₊` which dominates `Q₁+Q₂`). Hence
  -- `dim Vp ≤ rank((Q₁)₊ + (Q₂)₊) ≤ rank(Q₁)₊ + rank(Q₂)₊`.
  obtain ⟨Vp, hposV, hdimV⟩ := posIndex_eq_max_finrank_posDefOn (hQ₁.add hQ₂)
  rw [← hdimV]
  set P := hermPosPart hQ₁ + hermPosPart hQ₂
  set L : (m → 𝕜) →ₗ[𝕜] (m → 𝕜) := P.mulVecLin
  -- `P − (Q₁+Q₂) = (Q₁)₋ + (Q₂)₋` is PSD, so on `ker P`, `hermForm (Q₁+Q₂) ≤ 0`.
  have hPsub : P - (Q₁ + Q₂) = hermNegPart hQ₁ + hermNegPart hQ₂ := by
    simp only [P, ← hermPosPart_sub_hermNegPart hQ₁, ← hermPosPart_sub_hermNegPart hQ₂]
    abel
  have hPsub_psd : (P - (Q₁ + Q₂)).PosSemidef := by
    rw [hPsub]; exact (hermNegPart_posSemidef hQ₁).add (hermNegPart_posSemidef hQ₂)
  have hinj : Function.Injective (L.domRestrict Vp) := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    rintro ⟨x, hxV⟩ hxL
    simp only [LinearMap.mem_ker, LinearMap.domRestrict_apply] at hxL
    have hxL' : P *ᵥ x = 0 := hxL
    simp only [mem_bot]
    by_contra hne
    have hne' : x ≠ 0 := fun h => hne (Subtype.ext h)
    have hform_le : hermForm (Q₁ + Q₂) x ≤ 0 := by
      have : hermForm (Q₁ + Q₂) x = hermForm P x - hermForm (P - (Q₁ + Q₂)) x := by
        rw [hermForm_sub]; ring
      rw [this, show hermForm P x = 0 by unfold hermForm; rw [hxL']; simp]
      linarith [hermForm_nonneg_of_posSemidef hPsub_psd x]
    exact absurd (hposV x hxV hne') (not_lt.mpr hform_le)
  calc Module.finrank 𝕜 Vp
      = Module.finrank 𝕜 (LinearMap.range (L.domRestrict Vp)) :=
        (LinearMap.finrank_range_of_inj hinj).symm
    _ ≤ Module.finrank 𝕜 (LinearMap.range L) := by
        apply Submodule.finrank_mono
        rintro y ⟨⟨x, hxV⟩, rfl⟩; exact ⟨x, rfl⟩
    _ = P.rank := rfl
    _ ≤ (hermPosPart hQ₁).rank + (hermPosPart hQ₂).rank := by
        -- `rank(A+B) ≤ rank A + rank B` via `range(A+B) ⊆ range A ⊔ range B`.
        unfold Matrix.rank
        refine le_trans (Submodule.finrank_mono ?_)
          (Submodule.finrank_add_le_finrank_add_finrank _ _)
        rintro _ ⟨x, rfl⟩
        simp only [P, mulVecLin_apply, add_mulVec]
        exact Submodule.add_mem_sup ⟨x, rfl⟩ ⟨x, rfl⟩
    _ = posIndex hQ₁ + posIndex hQ₂ := by rw [rank_hermPosPart, rank_hermPosPart]

end RHLinalg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inertia/Variantafb853a1772319779d614c3c82304880e2cb8f6272004cb49fa4662340fc458f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inertia/Variantafb853a1772319779d614c3c82304880e2cb8f6272004cb49fa4662340fc458f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d1de40376288d80e4938f69d81479c62835bf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
