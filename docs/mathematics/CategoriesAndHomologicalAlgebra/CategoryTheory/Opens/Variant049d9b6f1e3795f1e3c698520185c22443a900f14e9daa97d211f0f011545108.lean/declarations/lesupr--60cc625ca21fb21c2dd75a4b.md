# leSupr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8233b2511d78da0599b1a04a67a5118659a9d2ef6bac0466c2e05db6ee916c2",
  "kind": "def",
  "lexical_name": "leSupr",
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
  "slug": "lesupr--60cc625ca21fb21c2dd75a4b",
  "source": {
    "blob": "a7bd2cf1c26289c66fc6a462edf1a9284673ae64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60cc625ca21fb21c2dd75a4b7042a401f08a00b67e9a5a3896b779ff349b55eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8233b2511d78da0599b1a04a67a5118659a9d2ef6bac0466c2e05db6ee916c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leSupr {ι : Type*} (U : ι → Opens X) (i : ι) : U i ⟶ iSup U :=
  (le_iSup U i).hom
#align topological_space.opens.le_supr TopologicalSpace.Opens.leSupr

/-- The inclusion `⊥ ⟶ U` as a morphism in the category of open sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant049d9b6f1e3795f1e3c698520185c22443a900f14e9daa97d211f0f011545108.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7bd2cf1c26289c66fc6a462edf1a9284673ae64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
