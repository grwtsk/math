# liftUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59e72e20511e8a55e86a78ac619bd16481dcd4bfb3aa7ca6a108a16cbd70169a",
  "kind": "def",
  "lexical_name": "liftUnique",
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
  "slug": "liftunique--ebcb6505f387e746db25efdd",
  "source": {
    "blob": "a1c18e403ab98ff1f5dd1b7848f45f8b23a9ef9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebcb6505f387e746db25efddba857a70d6a6d13d73e27fa9dc7069a8052417e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59e72e20511e8a55e86a78ac619bd16481dcd4bfb3aa7ca6a108a16cbd70169a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftUnique (F : C ⥤ D) (L : Free R C ⥤ D) [L.Additive] [L.Linear R]
    (α : embedding R C ⋙ L ≅ F) : L ≅ lift R F :=
  ext R (α.trans (embeddingLiftIso R F).symm)

end Free
end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant4b5ebf36aa37246a0bebf2a93791b543a5978b979b32e24a6895e61c30cc0637.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c18e403ab98ff1f5dd1b7848f45f8b23a9ef9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
