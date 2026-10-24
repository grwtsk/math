# homotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b27743b1f32e9ae44cf37ba7e22fb518c41f509680d9d086af5ee756e98d2e0",
  "kind": "def",
  "lexical_name": "homotopyEquiv",
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
  "slug": "homotopyequiv--fd4de29ea52f4db06d41616c",
  "source": {
    "blob": "81ae4ad2be1ece24a15dc95cd2d4b4a9b1f89a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantb05bea7e4df9d4d61b1cfd927d449cce2c3d15396c26533a00845e4b702719d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd4de29ea52f4db06d41616c619800345471211a292bdf6df12118ceb6414929",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantb05bea7e4df9d4d61b1cfd927d449cce2c3d15396c26533a00845e4b702719d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b27743b1f32e9ae44cf37ba7e22fb518c41f509680d9d086af5ee756e98d2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyEquiv {X : C} (I J : InjectiveResolution X) :
    HomotopyEquiv I.cocomplex J.cocomplex where
  hom := desc (𝟙 X) J I
  inv := desc (𝟙 X) I J
  homotopyHomInvId := (descCompHomotopy (𝟙 X) (𝟙 X) I J I).symm.trans <| by
    simpa [id_comp] using descIdHomotopy _ _
  homotopyInvHomId := (descCompHomotopy (𝟙 X) (𝟙 X) J I J).symm.trans <| by
    simpa [id_comp] using descIdHomotopy _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantb05bea7e4df9d4d61b1cfd927d449cce2c3d15396c26533a00845e4b702719d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantb05bea7e4df9d4d61b1cfd927d449cce2c3d15396c26533a00845e4b702719d8.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ae4ad2be1ece24a15dc95cd2d4b4a9b1f89a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
