# addHaveSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:854a74442c1867e58e5708f7c376169e061b33fbf1ed0de0cedf051ecdd0e114",
  "kind": "def",
  "lexical_name": "addHaveSuggestion",
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
  "slug": "addhavesuggestion--bfa3e0a44654604ccaba5a6b",
  "source": {
    "blob": "b2bafdecbc173a4f915858f7981273db522607fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfa3e0a44654604ccaba5a6b36a5cb203c4f42b8c9046ce3956584d7feec1000",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:854a74442c1867e58e5708f7c376169e061b33fbf1ed0de0cedf051ecdd0e114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addHaveSuggestion (ref : Syntax) (t? : Option Expr) (e : Expr)
  (origSpan? : Option Syntax := none) : TermElabM Unit := do
  let estx ← delabToRefinableSyntax e
  let prop ← isProp (← inferType e)
  let tac ← if let some t := t? then
    let tstx ← delabToRefinableSyntax t
    if prop then
      `(tactic| have : $tstx := $estx)
    else
      `(tactic| let this : $tstx := $estx)
  else
    if prop then
      `(tactic| have := $estx)
    else
      `(tactic| let this := $estx)
  addSuggestion ref tac none origSpan?

open Lean.Parser.Tactic
open Lean.Syntax

/-- Add a suggestion for `rw [h₁, ← h₂] at loc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant88143ffbfd8c391fa25a0be7d53aa54a84915f6349dbec522828258cb73f1d3c.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bafdecbc173a4f915858f7981273db522607fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
