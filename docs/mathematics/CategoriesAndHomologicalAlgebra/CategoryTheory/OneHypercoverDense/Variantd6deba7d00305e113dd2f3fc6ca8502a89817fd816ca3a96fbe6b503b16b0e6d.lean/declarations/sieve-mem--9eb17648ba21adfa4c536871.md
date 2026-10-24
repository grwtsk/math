# sieve_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10fd80ff-8f6d-db6c-4f39-c4fba436297f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d6f1580-bba3-a511-d35e-43770317ab7f",
  "kind": "lemma",
  "lexical_name": "sieve_mem",
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
  "slug": "sieve-mem--9eb17648ba21adfa4c536871",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb17648ba21adfa4c536871423e9dbce74a7c7bf922a06e63ad0ae065e6ac6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d6f1580-bba3-a511-d35e-43770317ab7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sieve_mem : sieve data f ∈ J₀ X₀ := by
  have := IsDenseSubsite.isCoverDense J₀ J F
  have := IsDenseSubsite.isLocallyFull J₀ J F
  rw [← functorPushforward_mem_iff J₀ J F]
  let R : ⦃W : C⦄ → ⦃p : W ⟶ F.obj X₀⦄ →
    (Sieve.pullback f data.toOneHypercover.sieve₀).arrows p → Sieve W := fun W p hp ↦
      Sieve.bind (Sieve.coverByImage F W).arrows (fun U π hπ ↦
        Sieve.pullback hπ.some.lift
          (Sieve.functorPushforward F (F.imageSieve (hπ.some.map ≫ p))))
  refine J.superset_covering ?_
    (J.bind_covering (J.pullback_stable f (data.toOneHypercover.mem₀)) (R := R)
    (fun W p hp ↦ J.bind_covering (F.is_cover_of_isCoverDense J W) ?_))
  · rintro W' _ ⟨W, _, p, hp, ⟨Y₀, a, b, hb, ⟨U, c, d, ⟨x₁, w₁⟩, fac⟩, rfl⟩, rfl⟩
    have hp' := Sieve.ofArrows.fac hp
    dsimp at hp'
    refine ⟨U, x₁, d, ⟨Sieve.ofArrows.i hp,
      F.map c ≫ (Nonempty.some hb).map ≫ Sieve.ofArrows.h hp, ?_⟩, ?_⟩
    · rw [w₁, assoc, assoc, assoc, assoc, hp']
    · rw [w₁, assoc, ← reassoc_of% fac, hb.some.fac_assoc]
  · intro U π hπ
    apply J.pullback_stable
    apply functorPushforward_imageSieve_mem

end

section

namespace isSheaf_iff

variable {data : ∀ X, F.OneHypercoverDenseData J₀ J X} {G : Cᵒᵖ ⥤ A}
  (hG₀ : Presheaf.IsSheaf J₀ (F.op ⋙ G))
  (hG : ∀ (X : C), IsLimit ((data X).toOneHypercover.multifork G))
  {X : C} (S : J.Cover X)

section

variable {S} (s : Multifork (S.index G))

/-- Auxiliary definition for `lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
