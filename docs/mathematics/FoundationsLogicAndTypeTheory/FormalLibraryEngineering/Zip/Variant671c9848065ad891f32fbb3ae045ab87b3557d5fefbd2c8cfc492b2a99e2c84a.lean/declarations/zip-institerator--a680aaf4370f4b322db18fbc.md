# Zip.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac75e887dbc20d210c1e56d4cbceb5a60da686fc34c3a789f19e1534cd944a28",
  "kind": "instance",
  "lexical_name": "Zip.instIterator",
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
  "slug": "zip-institerator--a680aaf4370f4b322db18fbc",
  "source": {
    "blob": "c24e9496ada9f89563ff415b85b94deea88be8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a680aaf4370f4b322db18fbc38612857061a76beb300d166ee1966fb76716984",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac75e887dbc20d210c1e56d4cbceb5a60da686fc34c3a789f19e1534cd944a28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Zip.instIterator [Monad m] :
    Iterator (Zip α₁ m α₂ β₂) m (β₁ × β₂) where
  IsPlausibleStep := PlausibleStep
  step it :=
    match hm : it.internalState.memoizedLeft with
    | none => do
      match (← it.internalState.left.step).inflate with
      | .yield it₁' out hp =>
          pure <| .deflate <| .skip ⟨⟨it₁', (some ⟨out, _, _, hp⟩), it.internalState.right⟩⟩ (.yieldLeft hm hp)
      | .skip it₁' hp =>
          pure <| .deflate <| .skip ⟨⟨it₁', none, it.internalState.right⟩⟩ (.skipLeft hm hp)
      | .done hp =>
          pure <| .deflate <| .done (.doneLeft hm hp)
    | some out₁ => do
      match (← it.internalState.right.step).inflate with
      | .yield it₂' out₂ hp =>
          pure <| .deflate <| .yield ⟨⟨it.internalState.left, none, it₂'⟩⟩ (out₁, out₂) (.yieldRight hm hp)
      | .skip it₂' hp =>
          pure <| .deflate <| .skip ⟨⟨it.internalState.left, (some out₁), it₂'⟩⟩ (.skipRight hm hp)
      | .done hp =>
          pure <| .deflate <| .done (.doneRight hm hp)

variable (m) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24e9496ada9f89563ff415b85b94deea88be8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
