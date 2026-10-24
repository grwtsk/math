# extend_uses_common_exterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad5b2c1632758190f181bb876d10e8badc791175",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:578e3cbb-842f-e279-dbde-1fd85682ee01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5be2e52-5f37-713e-de84-41fc3a0dbffa",
  "kind": "theorem",
  "lexical_name": "extend_uses_common_exterior",
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
  "slug": "extend-uses-common-exterior--598686874075c85dd1cc786a",
  "source": {
    "blob": "ad5b2c1632758190f181bb876d10e8badc791175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598686874075c85dd1cc786ae051b3c56a912549a534a8238ed7a0562d0fcee8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5be2e52-5f37-713e-de84-41fc3a0dbffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_uses_common_exterior
    (C : CollaredGluingCapability T G)
    {exterior : C.Exterior} {P Q : C.Piece}
    (hP : C.Compatible exterior P) (hQ : C.Compatible exterior Q)
    (f : C.PieceHom P Q) :
    G.selectedExterior (C.extend hP hQ f) = C.commonExterior exterior P Q :=
  C.extend_selected_exterior hP hQ f

end CollaredGluingCapability

/--
A collared presentation of one framed surgery using a fixed exterior.

The two charts identify the abstract gluing with the original manifold and
with the surgery operation.  Their existence is geometric input, not a
consequence of the bare embedding type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5b2c1632758190f181bb876d10e8badc791175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
