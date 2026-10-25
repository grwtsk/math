# throwDeltaDeriveFailure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbbfd3f56c32e785776195c3a2d4f08f01d9d5b9dc6ee79e03eb1b3c4b0e39c7",
  "kind": "def",
  "lexical_name": "throwDeltaDeriveFailure",
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
  "slug": "throwdeltaderivefailure--1d8fbc5053cec40894213bb1",
  "source": {
    "blob": "f4caf2bf736132d9585b78818ee95b24c530edc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d8fbc5053cec40894213bb1778f90660a63e634ab072b81f040c82412032558",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbbfd3f56c32e785776195c3a2d4f08f01d9d5b9dc6ee79e03eb1b3c4b0e39c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def throwDeltaDeriveFailure (className declName : Name) (msg? : Option MessageData) (suffix : MessageData := "") : MetaM α :=
  let suffix := if let some msg := msg? then m!", {msg}{suffix}" else m!".{suffix}"
  throwError "Failed to delta derive `{.ofConstName className}` instance for `{.ofConstName declName}`{suffix}"

/--
Constructs an instance of the class `classExpr` by figuring out the correct position to insert `val`
to create a type `className ... val ...` such that there is already an instance for it.
The `declVal` argument is the value to use in place of `val` when creating the new instance.

Heuristics:
- `val` must not use an outParam.
- `val` should use an explicit parameter, or a parameter that has already been given a value.
- If there are multiple explicit parameters, we try each possibility.
- If the class has instance arguments, we require that they be synthesizable while synthesizing this instance.
  While we could allow synthesis failure and abstract such instances,
  we leave such conditional instances to be defined by users.
- If this all fails and `val` is a constant application, we try unfolding it once and try again.

For example, when deriving `MonadReader (ρ : outParam (Type u)) (m : Type u → Type v)`,
we will skip `ρ` and try using `m`.

Note that we try synthesizing instances even if there are still metavariables in the type.
If that succeeds, then one can abstract those metavariables and create a parameterized instance.
The abstraction is not done by this function.

Expects to be run with an empty message log.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4caf2bf736132d9585b78818ee95b24c530edc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
