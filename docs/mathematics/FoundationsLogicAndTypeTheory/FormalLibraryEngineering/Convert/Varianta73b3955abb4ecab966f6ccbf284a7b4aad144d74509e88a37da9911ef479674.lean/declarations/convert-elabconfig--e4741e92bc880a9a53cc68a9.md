# Convert.elabConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846fcf7471be6ea74c3f2e55ae63822f73e17814a10424b8d7a0d68546a5e7fe",
  "kind": "def",
  "lexical_name": "Convert.elabConfig",
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
  "slug": "convert-elabconfig--e4741e92bc880a9a53cc68a9",
  "source": {
    "blob": "e2fa4f5d2af82647e146e398f16c02c5e9d278b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4741e92bc880a9a53cc68a93aaef3b1160d7a03eea5b8ca83a836d3c265343c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846fcf7471be6ea74c3f2e55ae63822f73e17814a10424b8d7a0d68546a5e7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Convert.elabConfig (expensive : Bool) (stx : Syntax) : TacticM Congr!.Config := do
  -- Implement overridable fields by choosing to elaborate one of two structures,
  -- which have different defaults (that can later be overridden by the user).
  if expensive then
    pure { ← Convert.elabExpensiveConfig stx with }
  else
    pure { ← Convert.elabCheapConfig stx with }

/--
Close the goal `g` using `Eq.mp v e`,
where `v` is a metavariable asserting that the type of `g` and `e` are equal.
Then call `MVarId.congrN!` (also using local hypotheses and reflexivity) on `v`,
and return the resulting goals.

With `symm = true`, reverses the equality in `v`, and uses `Eq.mpr v e` instead.
With `depth = some n`, calls `MVarId.congrN! n` instead, with `n` as the max recursion depth.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Varianta73b3955abb4ecab966f6ccbf284a7b4aad144d74509e88a37da9911ef479674.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fa4f5d2af82647e146e398f16c02c5e9d278b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
