# essSurj_of_comp_fully_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:399fa1c0-d42b-0505-3e63-9bf1d2b8a8fa",
  "kind": "lemma",
  "lexical_name": "essSurj_of_comp_fully_faithful",
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
  "slug": "esssurj-of-comp-fully-faithful--355649585f36818c1ef51053",
  "source": {
    "blob": "54824f975d2710a1bacb8080d1a8ce3b8abd487c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355649585f36818c1ef51053a5b7fc803b690292a8f4d5c2bcb4e33c7a7b5a81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399fa1c0-d42b-0505-3e63-9bf1d2b8a8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essSurj_of_comp_fully_faithful (F : C ⥤ D) (G : D ⥤ E) [(F ⋙ G).EssSurj]
    [G.Faithful] [G.Full] : F.EssSurj where
  mem_essImage X := ⟨_, ⟨G.preimageIso ((F ⋙ G).objObjPreimageIso (G.obj X))⟩⟩

variable {F} {X : E}

/-- Pre-composing by an essentially surjective functor doesn't change the essential image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54824f975d2710a1bacb8080d1a8ce3b8abd487c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
