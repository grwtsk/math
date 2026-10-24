# comp_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f211af6-7d80-764c-b8c3-166d3b48f670",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25a46db7-2a62-f457-a8bd-e07257982cfb",
  "kind": "theorem",
  "lexical_name": "comp_hom_app",
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
  "slug": "comp-hom-app--5f95c8273c9865dbc607d0cd",
  "source": {
    "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 278,
    "path": "GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f95c8273c9865dbc607d0cdbd19f7c5390cf897363ded94a572e765e5727265",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25a46db7-2a62-f457-a8bd-e07257982cfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_hom_app {Y Z : TopCat.{w}} (f : X ⟶ Y) (g : Y ⟶ Z) (U) :
    (comp ℱ f g).hom.app U = 𝟙 _ := by simp [comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.pushforward.comp_hom_app TopCat.Presheaf.Pushforward.comp_hom_app

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fc4be0d1516126e666a7d8da5913eb3b312b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
