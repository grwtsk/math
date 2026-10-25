# isDefEqDeltaStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed8df7086c927a7845682502481af3a2ae9f27aa4f222df5f010bbe7aabf0073",
  "kind": "def",
  "lexical_name": "isDefEqDeltaStep",
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
  "slug": "isdefeqdeltastep--76e6b34e4e7338f591189fd5",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2079,
    "line": 2042,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76e6b34e4e7338f591189fd52a181ea9b0dd9b48e6ec8b23bb1b099c074076e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed8df7086c927a7845682502481af3a2ae9f27aa4f222df5f010bbe7aabf0073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2042–2079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isDefEqDeltaStep (t s : Expr) : MetaM DeltaStepResult := do
  let tInfo? ← isDeltaCandidate? t
  let sInfo? ← isDeltaCandidate? s
  match tInfo?, sInfo? with
  | none,       none       => return .unknown
  | some _,     none       => unfold t (return .unknown) (k · s)
  | none,       some _     => unfold s (return .unknown) (k t ·)
  | some tInfo, some sInfo =>
    match compare tInfo.hints sInfo.hints with
    | .lt => unfold t (return .unknown) (k · s)
    | .gt => unfold s (return .unknown) (k t ·)
    | .eq =>
      -- Remark: if `t` and `s` are both some `f`-application, we use `tryHeuristic`
      -- if `f` is not a projection. The projection case generates a performance regression.
      if tInfo.name == sInfo.name then
        if t.isApp && s.isApp && (← tryHeuristic t s) then
          return .eq
        else
          unfoldBoth t s
      else
        unfoldBoth t s
where
  unfoldBoth (t s : Expr) : MetaM DeltaStepResult := do
    unfold t
      (unfold s (return .unknown) (k t ·))
      (fun t => unfold s (k t s) (k t ·))

  k (t s : Expr) : MetaM DeltaStepResult := do
    let t ← whnfCore t
    let s ← whnfCore s
    match (← isDefEqQuick t s) with
    | .true  => return .eq
    | .false => return .diff t s
    | .undef => return .cont t s

/--
Helper function for solving constraints of the form `t.i =?= s.i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L2042).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
