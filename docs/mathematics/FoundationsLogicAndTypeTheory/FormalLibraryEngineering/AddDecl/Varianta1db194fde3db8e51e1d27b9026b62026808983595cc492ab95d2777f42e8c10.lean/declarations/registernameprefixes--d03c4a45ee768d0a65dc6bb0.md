# registerNamePrefixes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec1ec0633921ae77637b58a2f79966623ca9b15f2b8aebe89164745c06431aa7",
  "kind": "def",
  "lexical_name": "registerNamePrefixes",
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
  "slug": "registernameprefixes--d03c4a45ee768d0a65dc6bb0",
  "source": {
    "blob": "a65ac0db1e833fa21a7c58867dc0ad11499340f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d03c4a45ee768d0a65dc6bb08b01be011319a93d4d6d5ef7e3be29b7e32bfe45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec1ec0633921ae77637b58a2f79966623ca9b15f2b8aebe89164745c06431aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def registerNamePrefixes (env : Environment) (name : Name) : Environment :=
  -- namespaces are based on the un-encoded name (`isNamespaceName` is false for any private name)
  let name := privateToUserName name
  match name with
    | .str _ s =>
      if s.front == '_' then
        -- Do not register namespaces that only contain internal declarations.
        env
      else
        go env name
    | _ => env
where go env
  | .str p _ => if isNamespaceName p then go (env.registerNamespace p) p else env
  | _        => env

/-- If `warn.sorry` is set to true, then, so long as the message log does not already have any errors,
declarations with `sorryAx` generate the "declaration uses `sorry`" warning. -/
register_builtin_option warn.sorry : Bool := {
  defValue := true
  descr    := "warn about uses of `sorry` in declarations added to the environment"
}

/--
If the `warn.sorry` option is set to true and there are no errors in the log already,
logs a warning if the declaration uses `sorry`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Varianta1db194fde3db8e51e1d27b9026b62026808983595cc492ab95d2777f42e8c10.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65ac0db1e833fa21a7c58867dc0ad11499340f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
