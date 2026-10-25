# collectUsedOrigins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:310eadf2476155667a2f0ee942a33c6a72b9cbf9c3d831e19bf2f9114d25c199",
  "kind": "def",
  "lexical_name": "collectUsedOrigins",
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
  "slug": "collectusedorigins--dd6a0fc97160c770b8949f15",
  "source": {
    "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd6a0fc97160c770b8949f1525aad0bcff0292e8bfac995c78c7d184468d971a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:310eadf2476155667a2f0ee942a33c6a72b9cbf9c3d831e19bf2f9114d25c199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectUsedOrigins (e : Expr) (map : EMatch.InstanceMap) : Std.HashSet Origin :=
  let (_, s) := go e |>.run ({}, {})
  s.2
where
  go (e : Expr) : StateM (Std.HashSet ExprPtr × Std.HashSet Origin) Unit := do
    if isMarkedSubsingletonApp e then return ()
    if (← get).1.contains { expr := e } then return ()
    modify fun (v, o) => (v.insert { expr := e }, o)
    if let some uniqueId := EMatch.isTheoremInstanceProof? e then
      if let some thm := map[uniqueId]? then
        modify fun (v, o) => (v, o.insert thm.origin)
    match e with
    | .lam _ d b _
    | .forallE _ d b _ => go d; go b
    | .proj _ _ b
    | .mdata _ b       => go b
    | .letE _ t v b _  => go t; go v; go b
    | .app f a         => go f; go a
    | _ => return ()

/--
Checks whether any E-matching lemmas were activated but do not appear in the final proof term.
Controlled by `set_option grind.unusedLemmaThreshold`.
Uses grind's instance-marking infrastructure for precise tracking.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b37f115f24c3808213a11fef1c721a999bb885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
