# InteractiveHypothesisBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7cf89531032f679e2f7aa94959ee69c43c39c887c6d86fd9066cc4cef880bbc",
  "kind": "structure",
  "lexical_name": "InteractiveHypothesisBundle",
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
  "slug": "interactivehypothesisbundle--08d703d66c5077449b932462",
  "source": {
    "blob": "092f0b0081559205ebb6dee20f905f94a5f21fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08d703d66c5077449b9324623006239cbad8277edc809fe19a177f051faa9222",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7cf89531032f679e2f7aa94959ee69c43c39c887c6d86fd9066cc4cef880bbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InteractiveHypothesisBundle where
  /-- The user-friendly name for each hypothesis.
  Note that these are not `Name`s: they are pretty-printed
  and do not remember the macro scopes. -/
  names : Array String
  /-- The ids for each variable. Should have the same length as `names`. -/
  fvarIds : Array FVarId
  type : CodeWithInfos
  /-- The value, in the case the hypothesis is a `let`-binder. -/
  val? : Option CodeWithInfos := none
  /-- The hypothesis is a typeclass instance. -/
  isInstance? : Option Bool := none
  /-- The hypothesis is a type. -/
  isType? : Option Bool := none
  /-- If true, the hypothesis was not present on the previous tactic state.
  Only present in tactic-mode goals. -/
  isInserted? : Option Bool := none
  /-- If true, the hypothesis will be removed in the next tactic state.
  Only present in tactic-mode goals. -/
  isRemoved? : Option Bool := none
  deriving Inhabited, RpcEncodable

/-- The shared parts of interactive term-mode and tactic-mode goals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092f0b0081559205ebb6dee20f905f94a5f21fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
