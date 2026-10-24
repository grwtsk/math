# posIndex_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7b6d41-a464-02a0-e434-e7343db382f5",
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
  "slug": "posindex-add-le--77d75be4e34ba0163390addf",
  "source": {
    "blob": "946932990b7bf38154939bc4c5b53989879972f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inertia/Variantd29694ebf62c7c5efe876d822a53975274ce304d1f476f1f5da8da7e4484632e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d75be4e34ba0163390addff0d726a5ffc283a731b68e63c765fb787735edba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inertia/Variantd29694ebf62c7c5efe876d822a53975274ce304d1f476f1f5da8da7e4484632e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7b6d41-a464-02a0-e434-e7343db382f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–146.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inertia/Variantd29694ebf62c7c5efe876d822a53975274ce304d1f476f1f5da8da7e4484632e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inertia/Variantd29694ebf62c7c5efe876d822a53975274ce304d1f476f1f5da8da7e4484632e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `946932990b7bf38154939bc4c5b53989879972f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
