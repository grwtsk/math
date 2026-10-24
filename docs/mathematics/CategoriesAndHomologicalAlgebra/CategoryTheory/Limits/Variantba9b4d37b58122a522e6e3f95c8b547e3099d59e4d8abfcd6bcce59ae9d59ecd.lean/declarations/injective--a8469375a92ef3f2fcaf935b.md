# injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5e6737d-a26e-7def-531a-d0804173737c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0138a7ed-ffc4-35c6-2d5a-b8f578b2e8f0",
  "kind": "lemma",
  "lexical_name": "injective",
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
  "slug": "injective--a8469375a92ef3f2fcaf935b",
  "source": {
    "blob": "e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8469375a92ef3f2fcaf935bafe5823659cac3cc4a0bdaa2140c77cb1604b765",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0138a7ed-ffc4-35c6-2d5a-b8f578b2e8f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective (j : J) (x₁ x₂ : c.pt.obj (X.obj j))
    (h : c.pt.map (cX.ι.app j) x₁ = c.pt.map (cX.ι.app j) x₂) :
    ∃ (j' : J) (α : j ⟶ j'),
    c.pt.map (X.map α) x₁ = c.pt.map (X.map α) x₂ := by
  have := isFiltered_of_isCardinalFiltered J κ
  let y₁ := Types.isLimitEquivSections (hc (X.obj j)) x₁
  let y₂ := Types.isLimitEquivSections (hc (X.obj j)) x₂
  have hy₁ : (Types.isLimitEquivSections (hc (X.obj j))).symm y₁ = x₁ := by simp [y₁]
  have hy₂ : (Types.isLimitEquivSections (hc (X.obj j))).symm y₂ = x₂ := by simp [y₂]
  have H (k : K) := (Types.FilteredColimit.isColimit_eq_iff' (ht := hF k)
    (x := y₁.1 k) (y := y₂.1 k)).1 (by
      simp only [y₁, y₂, Types.isLimitEquivSections_apply]
      dsimp at h ⊢
      simp only [← NatTrans.naturality_apply, h])
  let j₁ (k : K) : J := (H k).choose
  let f (k : K) : j ⟶ j₁ k := (H k).choose_spec.choose
  have hf (k : K) : (F.obj k).map (X.map (f k)) (y₁.1 k) =
      (F.obj k).map (X.map (f k)) (y₂.1 k) :=
    (H k).choose_spec.choose_spec
  have hK' := hasCardinalLT_of_hasCardinalLT_arrow hK
  let ψ (k : K) : j ⟶ IsCardinalFiltered.max j₁ hK' :=
    f k ≫ IsCardinalFiltered.toMax j₁ hK' k
  refine ⟨IsCardinalFiltered.coeq ψ hK', IsCardinalFiltered.toCoeq ψ hK', ?_⟩
  apply (Types.isLimitEquivSections (hc _)).injective
  ext k
  simp only [Types.isLimitEquivSections_apply, ← hy₁, ← hy₂]
  have h₁ := Types.isLimitEquivSections_symm_apply (hc (X.obj j)) y₁ k
  have h₂ := Types.isLimitEquivSections_symm_apply (hc (X.obj j)) y₂ k
  dsimp at h₁ h₂ ⊢
  simp [h₁, h₂, ← IsCardinalFiltered.coeq_condition ψ hK' k, ψ, hf]

end isColimitMapCocone

/-- Auxiliary definition for `isCardinalAccessible_of_isLimit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba9b4d37b58122a522e6e3f95c8b547e3099d59e4d8abfcd6bcce59ae9d59ecd.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e334df4d2d13ad7387cdfaf9661aa1f23ab05ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
