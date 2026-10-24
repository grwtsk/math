# IsTriangulated.of_fully_faithful_triangulated_functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc4b4408-2387-ebb2-6a5b-2f2619999d9f",
  "kind": "lemma",
  "lexical_name": "IsTriangulated.of_fully_faithful_triangulated_functor",
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
  "slug": "istriangulated-of-fully-faithful-triangulated-functor--462f81b58ddbf656873e5967",
  "source": {
    "blob": "f7502299255e3fe7093047e543456ab66eeaecf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 364,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:462f81b58ddbf656873e59676e428653773b8d321b513a82090ae258affac44d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc4b4408-2387-ebb2-6a5b-2f2619999d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTriangulated.of_fully_faithful_triangulated_functor
    (F : C ⥤ D) [F.CommShift ℤ]
    [F.IsTriangulated] [F.Full] [F.Faithful] [IsTriangulated D] :
    IsTriangulated C where
  octahedron_axiom {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ u₁₂ u₂₃ u₁₃} comm
    {v₁₂ w₁₂} h₁₂ {v₂₃ w₂₃} h₂₃ {v₁₃ w₁₃} h₁₃ := by
    have comm' : F.map u₁₂ ≫ F.map u₂₃ = F.map u₁₃ := by rw [← comm, F.map_comp]
    let H := Triangulated.someOctahedron comm' (F.map_distinguished _ h₁₂)
      (F.map_distinguished _ h₂₃) (F.map_distinguished _ h₁₃)
    exact
      ⟨{m₁ := F.preimage H.m₁
        m₃ := F.preimage H.m₃
        comm₁ := F.map_injective (by simpa using H.comm₁)
        comm₂ := F.map_injective (by
          simpa [← cancel_mono ((F.commShiftIso (1 : ℤ)).hom.app X₁)] using H.comm₂)
        comm₃ := F.map_injective (by simpa using H.comm₃)
        comm₄ := F.map_injective (by
          simpa [← cancel_mono ((F.commShiftIso (1 : ℤ)).hom.app X₂)] using H.comm₄)
        mem := by simpa [← F.map_distinguished_iff] using H.mem }⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdc7c24665b47d28d8df9b478b29bb19d98dc29bd10a98d21e536bac6f922f32a.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7502299255e3fe7093047e543456ab66eeaecf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
