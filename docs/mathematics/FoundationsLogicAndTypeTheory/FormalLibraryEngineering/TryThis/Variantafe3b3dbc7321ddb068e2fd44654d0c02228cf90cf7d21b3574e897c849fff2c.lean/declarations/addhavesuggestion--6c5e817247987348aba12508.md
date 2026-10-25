# addHaveSuggestion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:296416e8697e428592c01bbc604b632e7b48917fdde5486c730ca71607e2c5c6",
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
  "slug": "addhavesuggestion--6c5e817247987348aba12508",
  "source": {
    "blob": "4ef0f696ec77c0007a61f5f1878633211869a193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c5e817247987348aba1250813b29166bddffee5089b8f0e98c6c7c9371f20ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:296416e8697e428592c01bbc604b632e7b48917fdde5486c730ca71607e2c5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variantafe3b3dbc7321ddb068e2fd44654d0c02228cf90cf7d21b3574e897c849fff2c.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef0f696ec77c0007a61f5f1878633211869a193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
