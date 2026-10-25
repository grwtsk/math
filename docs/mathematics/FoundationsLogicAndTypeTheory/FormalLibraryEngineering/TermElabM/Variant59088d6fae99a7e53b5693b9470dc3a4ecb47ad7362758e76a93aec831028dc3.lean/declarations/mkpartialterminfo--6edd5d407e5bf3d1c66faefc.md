# mkPartialTermInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:621dfb915ade491a4f0eca9aaee590bf36f763d9a78d6e9e29f308dbb2e663c7",
  "kind": "def",
  "lexical_name": "mkPartialTermInfo",
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
  "slug": "mkpartialterminfo--6edd5d407e5bf3d1c66faefc",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1559,
    "line": 1540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6edd5d407e5bf3d1c66faefcb93b89313fc202893bd84779343281292e141fbb",
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

Occurrence: `declaration:621dfb915ade491a4f0eca9aaee590bf36f763d9a78d6e9e29f308dbb2e663c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1540–1559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkPartialTermInfo (elaborator : Name) (stx : Syntax) (expectedType? : Option Expr := none)
    (lctx? : Option LocalContext := none) :
    TermElabM Info := do
  return Info.ofPartialTermInfo { elaborator, lctx := lctx?.getD (← getLCtx), stx, expectedType? }

/--
Pushes a new leaf node to the info tree associating the expression `e` to the syntax `stx`.
As a result, when the user hovers over `stx` they will see the type of `e`, and if `e`
is a constant they will see the constant's doc string.

* `expectedType?`: the expected type of `e` at the point of elaboration, if available
* `lctx?`: the local context in which to interpret `e` (otherwise it will use `← getLCtx`)
* `elaborator`: a declaration name used as an alternative target for go-to-definition
* `isBinder`: if true, this will be treated as defining `e` (which should be a local constant)
  for the purpose of go-to-definition on local variables
* `force`: In patterns, the effect of `addTermInfo` is usually suppressed and replaced
  by a `patternWithRef?` annotation which will be turned into a term info on the
  post-match-elaboration expression. This flag overrides that behavior and adds the term
  info immediately. (See https://github.com/leanprover/lean4/pull/1664.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L1540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
