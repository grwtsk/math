# unassignedMVarsEqualUpToIdsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce67916078ac79173992b22e5775b901fee43b5ef09cd34a315d91a4b4578a9d",
  "kind": "def",
  "lexical_name": "unassignedMVarsEqualUpToIdsCore",
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
  "slug": "unassignedmvarsequaluptoidscore--d29a31304623726df8c7d186",
  "source": {
    "blob": "b4bdb58b6927c0ec1d3869c4caf42923dfcbfa36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d29a31304623726df8c7d186d12cb8cfe3d5291065921442525d969e00396334",
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

Occurrence: `declaration:ce67916078ac79173992b22e5775b901fee43b5ef09cd34a315d91a4b4578a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  unsafe def unassignedMVarsEqualUpToIdsCore (mvarId₁ mvarId₂ : MVarId) :
      EqualUpToIdsM Bool :=
    withTraceNodeBefore `Aesop.Util.EqualUpToIds (fun _ => return m!"comparing mvars {mvarId₁.name}, {mvarId₂.name}") do
      if let some result ← equalCommonMVars? mvarId₁ mvarId₂ then
        trace[Aesop.Util.EqualUpToIds] "common mvars are {if result then "identical" else "different"}"
        return result
      else if let some m₂ := (← get).equalMVarIds[mvarId₁]? then
        if mvarId₂ == m₂ then
          trace[Aesop.Util.EqualUpToIds] "mvars already known to be equal"
          return true
        else
          trace[Aesop.Util.EqualUpToIds] "mvar {mvarId₁.name} known to be equal to different mvar {m₂.name}"
          return false
      else
        let ctx ← read
        let (some mdecl₁) := ctx.mctx₁.decls.find? mvarId₁ | throwError
          "unknown metavariable '?{mvarId₁.name}'"
        let (some mdecl₂) := ctx.mctx₂.decls.find? mvarId₂ | throwError
          "unknown metavariable '?{mvarId₂.name}'"
        let gctx? ←
          localContextsEqualUpToIdsCore mdecl₁.lctx mdecl₂.lctx
            mdecl₂.localInstances mdecl₂.localInstances
        let some gctx := gctx?
          | return false
        withTraceNodeBefore `Aesop.Util.EqualUpToIds (fun _ => return m!"comparing targets") do
          if ← exprsEqualUpToIdsCore₁ mdecl₁.type mdecl₂.type |>.run gctx then
            modify λ s =>
              { s with equalMVarIds := s.equalMVarIds.insert mvarId₁ mvarId₂ }
            return true
          else
            return false
end

end Unsafe

@[implemented_by Unsafe.exprsEqualUpToIdsCore₁]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqualUpToIds/Variant350c7553334a104f0040d3c754a91dc7eade4393017394f3cf1a31fc4b33edb8.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdb58b6927c0ec1d3869c4caf42923dfcbfa36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
