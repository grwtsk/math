# localContextsEqualUpToIdsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81422e0fdbb9f25758e38124268d3e0ce44b49e881bb304cf99b33ef9783b976",
  "kind": "def",
  "lexical_name": "localContextsEqualUpToIdsCore",
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
  "slug": "localcontextsequaluptoidscore--db38e0b5a358f6203800aadc",
  "source": {
    "blob": "b4bdb58b6927c0ec1d3869c4caf42923dfcbfa36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db38e0b5a358f6203800aadc2867440611e7dbdd21942a821d1cdb5cb44d443b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81422e0fdbb9f25758e38124268d3e0ce44b49e881bb304cf99b33ef9783b976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  unsafe def localContextsEqualUpToIdsCore (lctx₁ lctx₂ : LocalContext)
      (localInstances₁ localInstances₂ : LocalInstances) :
      EqualUpToIdsM (Option GoalContext) := do
    let decls₁ ← lctxDecls lctx₁
    let decls₂ ← lctxDecls lctx₂
    if h : decls₁.size = decls₂.size then
      go decls₁ decls₂ h 0 { lctx₁, lctx₂, localInstances₁, localInstances₂ }
    else
      trace[Aesop.Util.EqualUpToIds] "number of hyps differs"
      return none
  where
    go (decls₁ decls₂ : Array LocalDecl) (h : decls₁.size = decls₂.size)
        (i : Nat) (gctx : GoalContext) : EqualUpToIdsM (Option GoalContext) := do
      if h' : i < decls₁.size then
        let ldecl₁ := decls₁[i]
        let ldecl₂ := decls₂[i]'(by simp [← h, h'])
        let eq ← withTraceNodeBefore `Aesop.Util.EqualUpToIds (fun _ => return m!"comparing hyps {ldecl₁.userName}, {ldecl₂.userName}") do
          localDeclsEqualUpToIdsCore ldecl₁ ldecl₂ |>.run gctx
        if ! eq then
          return none
        let equalFVarIds :=
          gctx.equalFVarIds.insert ldecl₁.fvarId ldecl₂.fvarId
        go decls₁ decls₂ h (i + 1) { gctx with equalFVarIds }
      else
        return some gctx

  @[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdb58b6927c0ec1d3869c4caf42923dfcbfa36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
