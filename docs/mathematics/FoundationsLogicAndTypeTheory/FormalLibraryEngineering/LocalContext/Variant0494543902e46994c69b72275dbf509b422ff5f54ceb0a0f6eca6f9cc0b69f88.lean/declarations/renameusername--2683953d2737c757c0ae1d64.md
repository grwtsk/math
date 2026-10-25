# renameUserName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:590ee311b226c32a577de92c5693f3634ec7279bdd438107d13388d32d738ea2",
  "kind": "def",
  "lexical_name": "renameUserName",
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
  "slug": "renameusername--2683953d2737c757c0ae1d64",
  "source": {
    "blob": "d7d25d1abb831ef7d116f1bc9f5d17dbadc91c89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 428,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant0494543902e46994c69b72275dbf509b422ff5f54ceb0a0f6eca6f9cc0b69f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2683953d2737c757c0ae1d647f7ed981b90c6e2414d020bbb033fbfb54569a93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant0494543902e46994c69b72275dbf509b422ff5f54ceb0a0f6eca6f9cc0b69f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:590ee311b226c32a577de92c5693f3634ec7279bdd438107d13388d32d738ea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def renameUserName (lctx : LocalContext) (fromName : Name) (toName : Name) : LocalContext :=
  match lctx with
  | { fvarIdToDecl := map, decls := decls, auxDeclToFullName } =>
    match lctx.findFromUserName? fromName with
    | none      => lctx
    | some decl =>
      let decl := decl.setUserName toName;
      { fvarIdToDecl := map.insert decl.fvarId decl,
        decls        := decls.set decl.index decl,
        auxDeclToFullName }

/--
Low-level function for updating the local context.
Assumptions about `f`, the resulting nested expressions must be definitionally equal to their original values,
and neither the `index` nor `fvarId` are modified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant0494543902e46994c69b72275dbf509b422ff5f54ceb0a0f6eca6f9cc0b69f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant0494543902e46994c69b72275dbf509b422ff5f54ceb0a0f6eca6f9cc0b69f88.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d25d1abb831ef7d116f1bc9f5d17dbadc91c89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
