# mem_sieves_iff_hasEffectiveEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e87fb9b5-b3ba-8d71-d273-a583d3a7d8aa",
  "kind": "theorem",
  "lexical_name": "mem_sieves_iff_hasEffectiveEpi",
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
  "slug": "mem-sieves-iff-haseffectiveepi--3a58a5650584a653426c8176",
  "source": {
    "blob": "8f0db8af25882293a4fb4474a4f680db47afddac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianteaff59c7daa80ebe8c538855dca03b35dc2bff499a12599de2958979c9048d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a58a5650584a653426c8176abcf4d8bd27148e4e60b9dd24faa0945b0886e0f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianteaff59c7daa80ebe8c538855dca03b35dc2bff499a12599de2958979c9048d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e87fb9b5-b3ba-8d71-d273-a583d3a7d8aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sieves_iff_hasEffectiveEpi (S : Sieve X) :
    (S ∈ (regularTopology C) X) ↔
    ∃ (Y : C) (π : Y ⟶ X), EffectiveEpi π ∧ (S.arrows π) := by
  constructor
  · intro h
    induction h with
    | of Y T hS =>
      rcases hS with ⟨Y', π, h'⟩
      refine ⟨Y', π, h'.2, ?_⟩
      rcases h' with ⟨rfl, _⟩
      exact ⟨Y', 𝟙 Y', π, Presieve.ofArrows.mk (), (by simp)⟩
    | top Y => exact ⟨Y, (𝟙 Y), inferInstance, by simp only [Sieve.top_apply, forall_const]⟩
    | transitive Y R S _ _ a b =>
      rcases a with ⟨Y₁, π, ⟨h₁,h₂⟩⟩
      choose Y' π' _ H using b h₂
      exact ⟨Y', π' ≫ π, inferInstance, (by simpa using H)⟩
  · exact regularTopology.mem_sieves_of_hasEffectiveEpi S

end CategoryTheory.regularTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianteaff59c7daa80ebe8c538855dca03b35dc2bff499a12599de2958979c9048d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularTopology/Varianteaff59c7daa80ebe8c538855dca03b35dc2bff499a12599de2958979c9048d3e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f0db8af25882293a4fb4474a4f680db47afddac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
