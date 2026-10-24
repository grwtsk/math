# killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78eb1326304ce4be9aa8b6d287ead692c0a10f83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02c7f9f0-cfd7-06ef-d59a-f988bdf355e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6985c60-e5e5-fd63-2959-70e86df757c8",
  "kind": "lemma",
  "lexical_name": "killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero",
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
  "slug": "killingform-apply-eq-zero-of-mem-rootspace-of-add-ne-zero--1e069fae65d6b0ac1f605f02",
  "source": {
    "blob": "78eb1326304ce4be9aa8b6d287ead692c0a10f83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e069fae65d6b0ac1f605f021919b95a5d250301b50912f4563c0fb4c5cc907f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6985c60-e5e5-fd63-2959-70e86df757c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma killingForm_apply_eq_zero_of_mem_rootSpace_of_add_ne_zero {α β : H → K} {x y : L}
    (hx : x ∈ rootSpace H α) (hy : y ∈ rootSpace H β) (hαβ : α + β ≠ 0) :
    killingForm K L x y = 0 := by
  /- If `ad R L z` is semisimple for all `z ∈ H` then writing `⟪x, y⟫ = killingForm K L x y`, there
  is a slick proof of this lemma that requires only invariance of the Killing form as follows.
  For any `z ∈ H`, we have:
  `α z • ⟪x, y⟫ = ⟪α z • x, y⟫ = ⟪⁅z, x⁆, y⟫ = - ⟪x, ⁅z, y⁆⟫ = - ⟪x, β z • y⟫ = - β z • ⟪x, y⟫`.
  Since this is true for any `z`, we thus have: `(α + β) • ⟪x, y⟫ = 0`, and hence the result.
  However the semisimplicity of `ad R L z` is (a) non-trivial and (b) requires the assumption
  that `K` is a perfect field and `L` has non-degenerate Killing form. -/
  let σ : (H → K) → (H → K) := fun γ ↦ α + (β + γ)
  have hσ : ∀ γ, σ γ ≠ γ := fun γ ↦ by simpa only [σ, ← add_assoc] using add_ne_right.mpr hαβ
  let f : Module.End K L := (ad K L x) ∘ₗ (ad K L y)
  have hf : ∀ γ, MapsTo f (rootSpace H γ) (rootSpace H (σ γ)) := fun γ ↦
    (mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace K L H L α (β + γ) hx).comp <|
      mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace K L H L β γ hy
  classical
  have hds := DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top
    (LieSubmodule.iSupIndep_toSubmodule.mpr <| iSupIndep_genWeightSpace K H L)
    (LieSubmodule.iSup_toSubmodule_eq_top.mpr <| iSup_genWeightSpace_eq_top K H L)
  exact LinearMap.trace_eq_zero_of_mapsTo_ne hds σ hσ hf

/-- Elements of the `α` root space which are Killing-orthogonal to the `-α` root space are
Killing-orthogonal to all of `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variantc9e89458ea88d50347008ac21a667fee8f005287b558989965728b37e6b98ef9.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78eb1326304ce4be9aa8b6d287ead692c0a10f83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
