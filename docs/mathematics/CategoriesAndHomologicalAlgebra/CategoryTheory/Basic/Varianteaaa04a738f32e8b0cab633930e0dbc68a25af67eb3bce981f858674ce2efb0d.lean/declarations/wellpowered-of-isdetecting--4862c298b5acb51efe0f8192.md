# wellPowered_of_isDetecting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d78ee21bc97f38c22d46856930a153ee651f443",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10f33518-3f7f-158c-1e19-43c23c657384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcb3068b-b257-8d93-a5a1-d3d4b77178bb",
  "kind": "theorem",
  "lexical_name": "wellPowered_of_isDetecting",
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
  "slug": "wellpowered-of-isdetecting--4862c298b5acb51efe0f8192",
  "source": {
    "blob": "9d78ee21bc97f38c22d46856930a153ee651f443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 515,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4862c298b5acb51efe0f8192bd6c3e41b95695ce36cc4d8bc04217baf9b3f346",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb3068b-b257-8d93-a5a1-d3d4b77178bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellPowered_of_isDetecting [HasPullbacks C] {𝒢 : ObjectProperty C}
    [ObjectProperty.Small.{w} 𝒢] [LocallySmall.{w} C]
    (h𝒢 : 𝒢.IsDetecting) : WellPowered.{w} C where
  subobject_small X := small_of_injective
    (f := fun P : Subobject X => { f : Σ G : Subtype 𝒢, G.1 ⟶ X | P.Factors f.2 })
      fun P Q h => Subobject.eq_of_isDetecting h𝒢 _ _
        (by simpa [Set.ext_iff, Sigma.forall] using h)

end WellPowered

namespace StructuredArrow

variable (S : D) (T : C ⥤ D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d78ee21bc97f38c22d46856930a153ee651f443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
