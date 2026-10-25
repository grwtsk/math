# processCasePattBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff872532b10f6dcc961e9d6e46228b55edf7f0baf93be91f9128998b0bcb7b9e",
  "kind": "def",
  "lexical_name": "processCasePattBody",
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
  "slug": "processcasepattbody--268a0adf483ffb5c0e5fe3bf",
  "source": {
    "blob": "7119470f0fd4bb9fcefc887ddbe327c30fe277f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:268a0adf483ffb5c0e5fe3bfd39f3cca6018e0c1713bcbec58509aa585291c4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff872532b10f6dcc961e9d6e46228b55edf7f0baf93be91f9128998b0bcb7b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processCasePattBody (stx : TSyntax ``casePattTac) :
    TacticM (Term ⊕ (Syntax × TSyntax ``Parser.Tactic.tacticSeq)) := do
  match stx with
  | `(casePattTac| => $t:hole) => return Sum.inl ⟨← withRef t `(?_)⟩
  | `(casePattTac| => $t:syntheticHole) => return Sum.inl ⟨t⟩
  | `(casePattTac| =>%$arr $tac:tacticSeq) => return Sum.inr (arr, tac)
  | _ => throwUnsupportedSyntax

/-- Implementation for `case` and `case'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Case/Variante7c3a64f2aae5a6658b99919631fbc333c9d36623271472461c8fe49a9f4d22a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7119470f0fd4bb9fcefc887ddbe327c30fe277f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
