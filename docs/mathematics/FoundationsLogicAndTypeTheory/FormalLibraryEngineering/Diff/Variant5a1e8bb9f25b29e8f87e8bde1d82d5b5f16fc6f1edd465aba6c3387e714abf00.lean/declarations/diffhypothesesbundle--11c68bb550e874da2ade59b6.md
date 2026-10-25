# diffHypothesesBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb452a9afe6705e55b98f2e4a490761f258709c2db3d091d7778479c0c1b8986",
  "kind": "def",
  "lexical_name": "diffHypothesesBundle",
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
  "slug": "diffhypothesesbundle--11c68bb550e874da2ade59b6",
  "source": {
    "blob": "77d4c076f068b4b9892a95cd0698c4fafc59edc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11c68bb550e874da2ade59b6331bb39d4d86fcc53e45976edaf078ea5db7211c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb452a9afe6705e55b98f2e4a490761f258709c2db3d091d7778479c0c1b8986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diffHypothesesBundle (useAfter : Bool) (ctx₀  : LocalContext) (h₁ : InteractiveHypothesisBundle) : MetaM InteractiveHypothesisBundle := do
  /- Strategy: we say a hypothesis has mutated if the ppName is the same but the fvarid has changed.
     this indicates that something like `rewrite at` has hit it. -/
  for (ppName, fvid) in Array.zip h₁.names h₁.fvarIds do
    if !(ctx₀.contains fvid) then
      if let some decl₀ := ctx₀.findFromUserName? (.mkSimple ppName) then
        -- on ctx₀ there is an fvar with the same name as this one.
        let t₀ ← instantiateMVars decl₀.type
        return ← withTypeDiff t₀ h₁
      else
        if useAfter then
          return {h₁ with isInserted? := true }
        else
          return {h₁ with isRemoved? := true }
  -- all fvids are present on original so we can assume no change.
  return h₁
where
  withTypeDiff (t₀ : Expr) (h₁ : InteractiveHypothesisBundle) : MetaM InteractiveHypothesisBundle := do
    let some x₁ := h₁.fvarIds[0]?
      | throwError "internal error: empty fvar list!"
    let t₁ ← instantiateMVars =<< inferType (Expr.fvar x₁)
    let tδ ← exprDiff t₀ t₁ useAfter
    let c₁ ← addDiffTags useAfter tδ h₁.type
    return {h₁ with type := c₁}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4c076f068b4b9892a95cd0698c4fafc59edc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
