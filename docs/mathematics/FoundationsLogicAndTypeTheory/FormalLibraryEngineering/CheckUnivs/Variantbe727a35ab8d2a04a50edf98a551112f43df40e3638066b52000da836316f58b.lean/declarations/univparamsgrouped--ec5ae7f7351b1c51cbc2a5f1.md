# univParamsGrouped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c54e8001471fcb3751979be13e560b1040429d5a6270ea3e93a9b9312bf5c129",
  "kind": "def",
  "lexical_name": "univParamsGrouped",
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
  "slug": "univparamsgrouped--ec5ae7f7351b1c51cbc2a5f1",
  "source": {
    "blob": "fb902ef20452fd94785519bcf67ea33194ed309a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5ae7f7351b1c51cbc2a5f14b0c6b34326001eb1226e5875fc648238b089440",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c54e8001471fcb3751979be13e560b1040429d5a6270ea3e93a9b9312bf5c129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def univParamsGrouped (e : Expr) (nm₀ : Name) : Std.HashSet (Array Name) :=
  runST fun _ =>
    let go : StateRefT (Std.HashSet (Array Name)) (ST _) Unit := e.forEach fun
      | .sort u =>
        modify (·.insert (CollectLevelParams.visitLevel u {}).params)
      | .const n us => do
        if let .str n s := n then
          if n == nm₀ && s.startsWith "proof_" then return
        modify (us.foldl (·.insert <| CollectLevelParams.visitLevel · {} |>.params))
      | _ => pure ()
    Prod.snd <$> go.run {}

/--
The good parameters are the parameters that occur somewhere in the set as a singleton or
(recursively) with only other good parameters.
All other parameters in the set are bad.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckUnivs/Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb902ef20452fd94785519bcf67ea33194ed309a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
