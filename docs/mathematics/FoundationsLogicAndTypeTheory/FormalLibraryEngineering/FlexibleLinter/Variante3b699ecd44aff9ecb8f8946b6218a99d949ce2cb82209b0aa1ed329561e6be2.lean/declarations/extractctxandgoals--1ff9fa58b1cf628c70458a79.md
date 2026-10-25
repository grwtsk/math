# extractCtxAndGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ae27c58760fee316a0a7634a2c63f2a1b60ff331e03368da6185e26f665c9c6",
  "kind": "def",
  "lexical_name": "extractCtxAndGoals",
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
  "slug": "extractctxandgoals--1ff9fa58b1cf628c70458a79",
  "source": {
    "blob": "37ab45bf334aaaf5f004bde7cce26d37af5ec574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ff9fa58b1cf628c70458a794be7cc2f43b576346477658d447cc8638b865de9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ae27c58760fee316a0a7634a2c63f2a1b60ff331e03368da6185e26f665c9c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractCtxAndGoals : InfoTree →
    Array (Syntax × MetavarContext × MetavarContext × List MVarId × List MVarId)
  | .node k args =>
    let kargs := (args.map extractCtxAndGoals).foldl (· ++ ·) #[]
    if let .ofTacticInfo i := k then
      if take? i.stx && (i.stx.getRange? true).isSome then
        #[(i.stx, i.mctxBefore, i.mctxAfter, i.goalsTargetedBy, i.goalsCreatedBy)] ++ kargs
      else kargs
    else kargs
  | .context _ t => extractCtxAndGoals t
  | _ => default

/-- `Stained` is the type of the stained locations: it can be
* a `Name` (typically of associated to the `FVarId` of a local declaration);
* the goal (`⊢`);
* the "wildcard" -- all the declaration in context (`*`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ab45bf334aaaf5f004bde7cce26d37af5ec574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
