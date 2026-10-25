# mkExactSuggestionSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b43f3717478558fa0f0f4cc31eeaf83c33b1825d0891d0d9ff92b002c06004b6",
  "kind": "def",
  "lexical_name": "mkExactSuggestionSyntax",
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
  "slug": "mkexactsuggestionsyntax--1770e6e3235bda105d7e8070",
  "source": {
    "blob": "04ec345a1b666ab681b7a955732c2e1dc5106cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1770e6e3235bda105d7e8070a0accb047d70e1c955443ef0075ef6d7fadac53c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b43f3717478558fa0f0f4cc31eeaf83c33b1825d0891d0d9ff92b002c06004b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkExactSuggestionSyntax (e : Expr) (useRefine : Bool) :
    MetaM (TSyntax `tactic × MessageData) :=
  withOptions (pp.mvars.set · false) <| withExposedNames do
  let exprStx ← delabToRefinableSyntax e
  let tac ← if useRefine then `(tactic| refine $exprStx) else `(tactic| exact $exprStx)
  -- We must add the message context here to account for exposed names
  let exprMessage ← addMessageContext <| MessageData.ofExpr e
  let tacMessage := if useRefine then m!"refine {exprMessage}" else m!"exact {exprMessage}"
  return (tac, tacMessage)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant95faac76117c4e6ce06314ebd0bed87d46203383c2990f5c288003f3e219baa1.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ec345a1b666ab681b7a955732c2e1dc5106cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
