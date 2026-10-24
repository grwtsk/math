# isColimitOfHasBinaryCoproductOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2cdbaf2a827d1d3044b2226dcb1239512b5e706f0b5aa6bed337ed0c23d176",
  "kind": "def",
  "lexical_name": "isColimitOfHasBinaryCoproductOfPreservesColimit",
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
  "slug": "iscolimitofhasbinarycoproductofpreservescolimit--c8df20a31ce3062dc7f2046a",
  "source": {
    "blob": "b91eaa713a60ee654fa54710773411a8d4a8d78c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8df20a31ce3062dc7f2046a8252ab38be36d0f4e7507bfe67acf197dee994bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2cdbaf2a827d1d3044b2226dcb1239512b5e706f0b5aa6bed337ed0c23d176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfHasBinaryCoproductOfPreservesColimit [PreservesColimit (pair X Y) G] :
    IsColimit (BinaryCofan.mk (G.map (Limits.coprod.inl : X ⟶ X ⨿ Y)) (G.map Limits.coprod.inr)) :=
  mapIsColimitOfPreservesOfIsColimit G _ _ (coprodIsCoprod X Y)

variable [HasBinaryCoproduct (G.obj X) (G.obj Y)]

/-- If the coproduct comparison map for `G` at `(X,Y)` is an isomorphism, then `G` preserves the
pair of `(X,Y)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant750269e970a8d5aadf78a53d92997e89a00760cf2bba077e44df01f11144a0ec.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91eaa713a60ee654fa54710773411a8d4a8d78c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
