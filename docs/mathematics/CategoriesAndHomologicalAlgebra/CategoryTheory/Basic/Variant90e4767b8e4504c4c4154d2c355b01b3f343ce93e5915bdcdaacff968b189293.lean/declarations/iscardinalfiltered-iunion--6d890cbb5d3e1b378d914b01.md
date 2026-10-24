# isCardinalFiltered_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b781dc70-f603-44fc-d3ce-5c3efe44927a",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_iUnion",
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
  "slug": "iscardinalfiltered-iunion--6d890cbb5d3e1b378d914b01",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d890cbb5d3e1b378d914b01621229eb6adc44b187765a04391d6ff220f1e8e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b781dc70-f603-44fc-d3ce-5c3efe44927a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_iUnion :
    IsCardinalFiltered (⋃ (j : κ₁.ord.ToType), transfiniteIterate (φ Y m) j A) κ₁ := by
  suffices ∀ ⦃K : Type w⦄ (j : κ₁.ord.ToType) (f : K → (transfiniteIterate (φ Y m) j A : Set _))
      (hK : HasCardinalLT K κ₁),
      ∃ (x : (transfiniteIterate (φ Y m) (Order.succ j) A : Set _)),
          ∀ (k : K), (f k).val ≤ x.val by
    refine isCardinalFiltered_preorder _ _ (fun K f hK ↦ ?_)
    rw [← hasCardinalLT_iff_cardinal_mk_lt] at hK
    have (k : K) : ∃ (j : κ₁.ord.ToType), (f k).val ∈ transfiniteIterate (φ Y m) j A := by
      simpa only [Set.mem_iUnion] using (f k).prop
    choose a ha using this
    obtain ⟨⟨z, hz⟩, hz'⟩ := this (IsCardinalFiltered.max a hK) (fun k ↦
      ⟨(f k).val, monotone_transfiniteIterate_φ Y hY' m A
          (leOfHom (IsCardinalFiltered.toMax a hK k)) (ha k)⟩) hK
    exact ⟨⟨z, Set.subset_iUnion _ _ hz⟩, hz'⟩
  intro K j f hK
  obtain ⟨⟨x, hx⟩, hx'⟩ := hφ₀ Y hY' m hm _
    (hasCardinalLT_transfiniteIterate_φ h₀ Y hY m A hA _) f hK
  refine ⟨⟨x, ?_⟩, hx'⟩
  have : NoMaxOrder κ₁.ord.ToType := noMaxOrder (IsRegular.aleph0_le Fact.out)
  rwa [transfiniteIterate_succ _ _ _ (not_isMax j),
    φ_eq _ _ _ (hasCardinalLT_transfiniteIterate_φ h₀ Y hY m A hA _)]

end existsIsCardinalFilteredSetOfExistsCofinal

open existsIsCardinalFilteredSetOfExistsCofinal in
/-- This is the implication (iii) → (iv) in the characterizations
of `SharplyLT κ₁ κ₂` in the docstring of this file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
