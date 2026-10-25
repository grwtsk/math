# Info.toElabInfo?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09363a6a16d859ef7e6b0859ff52110eecd3ca79bcc916de4dd8d59d7a9abb12",
  "kind": "def",
  "lexical_name": "Info.toElabInfo?",
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
  "slug": "info-toelabinfo--671ea31bf0243e68026cfa9e",
  "source": {
    "blob": "c06cec4f426ff14663eebc4801ebc298acaa4e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:671ea31bf0243e68026cfa9ee6ad68faeb2cb3281edf38c13005d3c00a200487",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09363a6a16d859ef7e6b0859ff52110eecd3ca79bcc916de4dd8d59d7a9abb12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Info.toElabInfo? : Info → Option ElabInfo
  | ofTacticInfo i         => some i.toElabInfo
  | ofTermInfo i           => some i.toElabInfo
  | ofPartialTermInfo i    => some i.toElabInfo
  | ofCommandInfo i        => some i.toElabInfo
  | ofMacroExpansionInfo _ => none
  | ofOptionInfo _         => none
  | ofErrorNameInfo _      => none
  | ofFieldInfo _          => none
  | ofCompletionInfo _     => none
  | ofUserWidgetInfo _     => none
  | ofCustomInfo _         => none
  | ofFVarAliasInfo _      => none
  | ofFieldRedeclInfo _    => none
  | ofDelabTermInfo i      => some i.toElabInfo
  | ofChoiceInfo i         => some i.toElabInfo
  | ofDocInfo i            => some i.toElabInfo
  | ofDocElabInfo i        => some i.toElabInfo

/--
  Helper function for propagating the tactic metavariable context to its children nodes.
  We need this function because we preserve `TacticInfo` nodes during backtracking *and* their
  children. Moreover, we backtrack the metavariable context to undo metavariable assignments.
  `TacticInfo` nodes save the metavariable context before/after the tactic application, and
  can be pretty printed without any extra information. This is not the case for `TermInfo` nodes.
  Without this function, the formatting method would often fail when processing `TermInfo` nodes
  that are children of `TacticInfo` nodes that have been preserved during backtracking.
  Saving the metavariable context at `TermInfo` nodes is also not a good option because
  at `TermInfo` creation time, the metavariable context often miss information, e.g.,
  a TC problem has not been resolved, a postponed subterm has not been elaborated, etc.

  See `Term.SavedState.restore`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c06cec4f426ff14663eebc4801ebc298acaa4e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
