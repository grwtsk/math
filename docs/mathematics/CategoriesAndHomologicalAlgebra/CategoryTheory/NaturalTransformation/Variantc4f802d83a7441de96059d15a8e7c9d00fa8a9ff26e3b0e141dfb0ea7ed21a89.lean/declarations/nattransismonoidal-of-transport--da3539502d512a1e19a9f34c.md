# natTransIsMonoidal_of_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54936f63-8914-35c5-20a7-6fcd8399e504",
  "kind": "lemma",
  "lexical_name": "natTransIsMonoidal_of_transport",
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
  "slug": "nattransismonoidal-of-transport--da3539502d512a1e19a9f34c",
  "source": {
    "blob": "ab04785d4920da3dd41ec6d8fc24dd0a210ce37d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da3539502d512a1e19a9f34cc4f7b2babc8c9a9be02e4585e12f2c6fc692f808",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54936f63-8914-35c5-20a7-6fcd8399e504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natTransIsMonoidal_of_transport {F G : C ⥤ D} [F.Monoidal] (e : F ≅ G) :
    letI : G.Monoidal := transport e
    e.hom.IsMonoidal := by
  let : G.Monoidal := transport e
  refine ⟨rfl, fun X Y ↦ ?_⟩
  simp [transport_μ, tensorHom_comp_tensorHom_assoc]

end Functor.Monoidal

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab04785d4920da3dd41ec6d8fc24dd0a210ce37d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
