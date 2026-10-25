# internalizeExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ceead4970e7fdbbb030faa8d62e92e7a3ec9b8e2436ba04eff171a782ab356f",
  "kind": "def",
  "lexical_name": "internalizeExpr",
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
  "slug": "internalizeexpr--6ba3e2103fd8987bfb807a1c",
  "source": {
    "blob": "ccda293aa1f33c16dde8b68415cf180b211e789e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ba3e2103fd8987bfb807a1cdb70c68e9d5336ad76f2eeee30fb5d7213e46a85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ceead4970e7fdbbb030faa8d62e92e7a3ec9b8e2436ba04eff171a782ab356f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def internalizeExpr (e : Expr) : InternalizeM pu Expr := do
  if pu == .impure then
    -- impure types don't contain fvars
    return e
  go e
where
  goApp (e : Expr) : InternalizeM pu Expr := do
    match e with
    | .app f a => return e.updateApp! (← goApp f) (← go a)
    | _ => go e

  go (e : Expr) : InternalizeM pu Expr := do
    if e.hasFVar then
      match e with
      | .fvar fvarId =>
        match (← get)[fvarId]? with
        | some (.fvar fvarId') =>
          -- In LCNF, types can't depend on let-bound fvars.
          if (← findParam? (pu := pu) fvarId').isSome then
            return .fvar fvarId'
          else
            return anyExpr
        | some .erased => return erasedExpr
        | some (.type e _) | none => return e
      | .lit .. | .const .. | .sort .. | .mvar .. | .bvar .. => return e
      | .app f a => return e.updateApp! (← goApp f) (← go a) |>.headBeta
      | .mdata _ b => return e.updateMData! (← go b)
      | .proj _ _ b => return e.updateProj! (← go b)
      | .forallE _ d b _ => return e.updateForallE! (← go d) (← go b)
      | .lam _ d b _ => return e.updateLambdaE! (← go d) (← go b)
      | .letE .. => unreachable!
    else
      return e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccda293aa1f33c16dde8b68415cf180b211e789e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
