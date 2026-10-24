# LeftHomologyMapData.natTransApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa6f701f9bbc7947fc57635d8c99dd4a6026029461ba22dd7b9810a199ad7d38",
  "kind": "def",
  "lexical_name": "LeftHomologyMapData.natTransApp",
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
  "slug": "lefthomologymapdata-nattransapp--ef8ca8aae54b902bcee66dcc",
  "source": {
    "blob": "b835fe5320c761b3230573453e47093baebf328b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 689,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef8ca8aae54b902bcee66dccd41ceee9cf58d2abc2b433392e23547343df1c3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa6f701f9bbc7947fc57635d8c99dd4a6026029461ba22dd7b9810a199ad7d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LeftHomologyMapData.natTransApp (h : LeftHomologyData S) (τ : F ⟶ G) :
    LeftHomologyMapData (S.mapNatTrans τ) (h.map F) (h.map G) where
  φK := τ.app h.K
  φH := τ.app h.H

set_option backward.defeqAttrib.useBackward true in
/-- Given a natural transformation `τ : F ⟶ G` between functors `C ⥤ D` which preserve
the right homology of a short complex `S`, and a right homology data for `S`,
this is the right homology map data for the morphism `S.mapNatTrans τ`
obtained by evaluating `τ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b835fe5320c761b3230573453e47093baebf328b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
