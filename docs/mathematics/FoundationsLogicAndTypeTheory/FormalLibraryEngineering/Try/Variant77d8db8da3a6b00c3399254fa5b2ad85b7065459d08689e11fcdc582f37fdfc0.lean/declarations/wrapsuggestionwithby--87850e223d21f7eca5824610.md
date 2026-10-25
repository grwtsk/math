# wrapSuggestionWithBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0aeedcd0c2ab80377ed884ee7f39119b2a49c50f9b20237ee0ea578b747d3903",
  "kind": "def",
  "lexical_name": "wrapSuggestionWithBy",
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
  "slug": "wrapsuggestionwithby--87850e223d21f7eca5824610",
  "source": {
    "blob": "3b3ac56b63926d119ef338d7fa391b161184285b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1095,
    "line": 1088,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87850e223d21f7eca58246105cc49fe05a2c1c4e4667f8f8047d17c875c2bd6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0aeedcd0c2ab80377ed884ee7f39119b2a49c50f9b20237ee0ea578b747d3903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1088–1095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def wrapSuggestionWithBy (sugg : Tactic.TryThis.Suggestion) : TacticM Tactic.TryThis.Suggestion := do
  match sugg.suggestion with
  | .tsyntax (kind := `tactic) tac =>
    let termStx ← `(by $(⟨tac⟩):tactic)
    return { sugg with suggestion := .tsyntax termStx }
  | _ => return sugg

/-- Version of `evalAndSuggest` that wraps tactic suggestions with `by` for term mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variant77d8db8da3a6b00c3399254fa5b2ad85b7065459d08689e11fcdc582f37fdfc0.lean#L1088).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b3ac56b63926d119ef338d7fa391b161184285b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
