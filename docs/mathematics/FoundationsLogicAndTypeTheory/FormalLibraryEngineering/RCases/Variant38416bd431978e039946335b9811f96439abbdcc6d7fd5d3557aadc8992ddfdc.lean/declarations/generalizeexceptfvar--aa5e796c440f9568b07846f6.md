# generalizeExceptFVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b294fb26a9678403949497f89865c6d3b54b96976c2543d797ac0c40b4eef3c",
  "kind": "def",
  "lexical_name": "generalizeExceptFVar",
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
  "slug": "generalizeexceptfvar--aa5e796c440f9568b07846f6",
  "source": {
    "blob": "12e86ccedbef509addf70d63a92bd5a1c1de1256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa5e796c440f9568b07846f62cb8d231ee5f88d8e89121fcf068a0913696beb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b294fb26a9678403949497f89865c6d3b54b96976c2543d797ac0c40b4eef3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generalizeExceptFVar (goal : MVarId) (args : Array GeneralizeArg) :
    MetaM (Array Expr × Array FVarId × MVarId) := do
  let argsToGeneralize := args.filter fun arg => !(arg.expr.isFVar && arg.hName?.isNone)
  let (fvarIdsNew, goal) ← goal.generalize argsToGeneralize
  let mut result := #[]
  let mut j := 0
  for arg in args do
    if arg.expr.isFVar && arg.hName?.isNone then
      result := result.push arg.expr
    else
      result := result.push (mkFVar fvarIdsNew[j]!)
      j := j+1
  pure (result, fvarIdsNew[j...*], goal)

/--
Given a list of targets of the form `e` or `h : e`, and a pattern, match all the targets
against the pattern. Returns the list of produced subgoals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e86ccedbef509addf70d63a92bd5a1c1de1256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
