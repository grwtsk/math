# openEmbedding_iff_isIso_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5597322373255de1b1f1a2f203fe6e44d2dcc113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff077fe9-417a-95ed-c0b5-75a01edc1b8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f469a775-697b-96ae-46cc-b5810a55dca1",
  "kind": "theorem",
  "lexical_name": "openEmbedding_iff_isIso_comp",
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
  "slug": "openembedding-iff-isiso-comp--90caea7fd5a0e0beb7647bec",
  "source": {
    "blob": "5597322373255de1b1f1a2f203fe6e44d2dcc113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90caea7fd5a0e0beb7647bec2db15c4f65bd1886c2e3bfc85f0d86d1baff3713",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f469a775-697b-96ae-46cc-b5810a55dca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openEmbedding_iff_isIso_comp {X Y Z : TopCat} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] :
    OpenEmbedding (f ≫ g) ↔ OpenEmbedding g := by
  constructor
  · intro h
    convert h.comp (TopCat.homeoOfIso (asIso f).symm).openEmbedding
    exact congrArg _ (IsIso.inv_hom_id_assoc f g).symm
  · exact fun h => h.comp (TopCat.homeoOfIso (asIso f)).openEmbedding
set_option linter.uppercaseLean3 false in
#align Top.open_embedding_iff_is_iso_comp TopCat.openEmbedding_iff_isIso_comp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant88494d70b9c8eff768b71c54feba06554becc1fdd1e3f4ebd1c6bb2ad6bdc4b2.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597322373255de1b1f1a2f203fe6e44d2dcc113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
