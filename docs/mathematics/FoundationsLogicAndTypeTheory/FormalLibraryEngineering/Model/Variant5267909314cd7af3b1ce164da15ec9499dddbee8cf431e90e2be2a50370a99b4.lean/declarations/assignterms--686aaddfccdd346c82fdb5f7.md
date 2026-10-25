# assignTerms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8abeb53b6f74f8e60da916ce687430b984761c00d0579ae35b062a536c68d948",
  "kind": "def",
  "lexical_name": "assignTerms",
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
  "slug": "assignterms--686aaddfccdd346c82fdb5f7",
  "source": {
    "blob": "ed00fb7cdb3c0c3eb875f03e740055e7060f06be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant5267909314cd7af3b1ce164da15ec9499dddbee8cf431e90e2be2a50370a99b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:686aaddfccdd346c82fdb5f79e9200373a6fdf6a42e3d1a11e608268670a0630",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant5267909314cd7af3b1ce164da15ec9499dddbee8cf431e90e2be2a50370a99b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8abeb53b6f74f8e60da916ce687430b984761c00d0579ae35b062a536c68d948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def assignTerms (goal : Goal) (structId : Nat) (model : Std.HashMap Expr Rat) : MetaM (Std.HashMap Expr Rat) := do
  let mut model := model
  let s ← linearExt.getStateCore goal
  let struct := s.structs[structId]!
  for (e, structId') in s.exprToStructIdEntries do
    if structId == structId' && !model.contains e then
      if let some v ← evalTermAt? e struct model then
        model := assignEqc goal e v model
  return model

/--
Construct a model that satisfies all constraints in the linarith model for the structure with id `structId`.
It also assigns values to (integer) terms that have not been internalized by the linarith model.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant5267909314cd7af3b1ce164da15ec9499dddbee8cf431e90e2be2a50370a99b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant5267909314cd7af3b1ce164da15ec9499dddbee8cf431e90e2be2a50370a99b4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed00fb7cdb3c0c3eb875f03e740055e7060f06be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
