# resolveName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8216803e2294c914adaadf10fdc772f9e83bb58458fbfbb7eb3a06f7dec99c8a",
  "kind": "def",
  "lexical_name": "resolveName",
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
  "slug": "resolvename--657b7c63296aa3d9a58ff18b",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2208,
    "line": 2178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:657b7c63296aa3d9a58ff18be2ede47caa67d9c5eb976277f291761599a4aec0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8216803e2294c914adaadf10fdc772f9e83bb58458fbfbb7eb3a06f7dec99c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2178–2208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveName (stx : Syntax) (n : Name) (preresolved : List Syntax.Preresolved) (explicitLevels : List Level) (expectedType? : Option Expr := none) : TermElabM (List (Expr × List String × List Level)) := do
  addCompletionInfo <| CompletionInfo.id stx stx.getId (danglingDot := false) (← getLCtx) expectedType?
  let processLocal (e : Expr) (projs : List String) := do
    if projs.isEmpty then
      if explicitLevels.isEmpty then
        return [(e, [], [])]
      else
        throwInvalidExplicitUniversesForLocal e
    else
      return [(e, projs, explicitLevels)]
  if let some (e, projs) ← resolveLocalName n then
    return ← processLocal e projs
  let preresolved := preresolved.filterMap fun
    | .decl n projs => some (n, projs)
    | _             => none
  -- check for section variable capture by a quotation
  let ctx ← read
  if let some (e, projs) := preresolved.findSome? fun (n, projs) => ctx.sectionFVars.find? n |>.map (·, projs) then
    return ← processLocal e projs  -- section variables should shadow global decls
  if preresolved.isEmpty then
    mkConsts (← realizeGlobalName n) explicitLevels
  else
    mkConsts preresolved explicitLevels

/--
  Similar to `resolveName`, but creates identifiers for the main part and each projection with position information derived from `ident`.
  Example: Assume resolveName `v.head.bla.boo` produces `(v.head, ["bla", "boo"])`, then this method produces
  `(v.head, id, [f₁, f₂])` where `id` is an identifier for `v.head`, and `f₁` and `f₂` are identifiers for fields `"bla"` and `"boo"`.

  See the comment there about `explicitLevels` and the meaning of the `List Level` component of the returned tuple.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L2178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
