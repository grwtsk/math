# reportAdaptationNote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f7aafd6aa04badb49e6b7d799cb140a9c602633a787506013bf91e45c2c7a6d",
  "kind": "def",
  "lexical_name": "reportAdaptationNote",
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
  "slug": "reportadaptationnote--1bdae94f32fd83635f87a440",
  "source": {
    "blob": "49bdee2ff79444ef16dbad50d3947576fa502472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdaptationNote/Variant85baefbd19ae274672c4187abdb69028d8f64c2dfdd966d65703e5b9f1d0d169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bdae94f32fd83635f87a440fc1b66ab672fabb21c17914450e11c4c8cd2aa1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdaptationNote/Variant85baefbd19ae274672c4187abdb69028d8f64c2dfdd966d65703e5b9f1d0d169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f7aafd6aa04badb49e6b7d799cb140a9c602633a787506013bf91e45c2c7a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reportAdaptationNote (f : Syntax → Meta.Tactic.TryThis.Suggestion) : MetaM Unit := do
  let stx ← getRef
  if let some doc := stx[1].getOptional? then
    trace[adaptationNote] (Lean.TSyntax.getDocString ⟨doc⟩)
  else
    logError "Adaptation notes must be followed by a /-- comment -/"
    let trailing := if let .original (trailing := s) .. := stx[0].getTailInfo then s else default
    let doc : Syntax :=
      Syntax.node2 .none ``Parser.Command.docComment (mkAtom "/--") (mkAtom "comment -/")
    -- Optional: copy the original whitespace after the `#adaptation_note` token
    -- to after the docstring comment
    let doc := doc.updateTrailing trailing
    let stx' := (← getRef)
    let stx' := stx'.setArg 0 stx'[0].unsetTrailing
    let stx' := stx'.setArg 1 (mkNullNode #[doc])
    Meta.Tactic.TryThis.addSuggestion (← getRef) (f stx') (origSpan? := ← getRef)

/-- `#adaptation_note /-- comment -/` adds an adaptation note to the current file.
Adaptation notes are comments that are used to indicate that a piece of code
has been changed to accommodate a change in Lean core.
They typically require further action/maintenance to be taken in the future.

This syntax works as a command, or inline in tactic or term mode.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdaptationNote/Variant85baefbd19ae274672c4187abdb69028d8f64c2dfdd966d65703e5b9f1d0d169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdaptationNote/Variant85baefbd19ae274672c4187abdb69028d8f64c2dfdd966d65703e5b9f1d0d169.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bdee2ff79444ef16dbad50d3947576fa502472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
