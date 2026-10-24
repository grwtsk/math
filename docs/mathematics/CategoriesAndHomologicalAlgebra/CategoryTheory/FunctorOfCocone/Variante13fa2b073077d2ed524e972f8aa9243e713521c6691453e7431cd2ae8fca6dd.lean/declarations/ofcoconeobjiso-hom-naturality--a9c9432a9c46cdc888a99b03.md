# ofCoconeObjIso_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21fbac8-cfba-bb0a-ed88-fd17dbb561c7",
  "kind": "lemma",
  "lexical_name": "ofCoconeObjIso_hom_naturality",
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
  "slug": "ofcoconeobjiso-hom-naturality--a9c9432a9c46cdc888a99b03",
  "source": {
    "blob": "5473b35394b0bb1f75dd7068b9b36530a55ee15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c9432a9c46cdc888a99b032e6f0684abd236acf563d97c026f640951da8f94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21fbac8-cfba-bb0a-ed88-fd17dbb561c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofCoconeObjIso_hom_naturality (i₁ i₂ : J) (hi : i₁ ≤ i₂) (hi₂ : i₂ < j) :
    (ofCocone c).map (homOfLE hi : ⟨i₁, hi.trans hi₂.le⟩ ⟶ ⟨i₂, hi₂.le⟩) ≫
      (ofCoconeObjIso c i₂ hi₂).hom =
      (ofCoconeObjIso c i₁ (lt_of_le_of_lt hi hi₂)).hom ≫ F.map (homOfLE hi) := by
  rw [ofCocone_map c i₁ i₂ hi hi₂, assoc, assoc, Iso.inv_hom_id, comp_id]

/-- The isomorphism expressing that `ofCocone c` extends the functor `F`
when `c : Cocone F`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variante13fa2b073077d2ed524e972f8aa9243e713521c6691453e7431cd2ae8fca6dd.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5473b35394b0bb1f75dd7068b9b36530a55ee15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
