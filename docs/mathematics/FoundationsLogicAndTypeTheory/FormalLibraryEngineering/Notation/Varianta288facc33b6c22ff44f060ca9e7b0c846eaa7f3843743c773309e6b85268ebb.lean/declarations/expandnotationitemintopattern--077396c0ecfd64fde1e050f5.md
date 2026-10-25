# expandNotationItemIntoPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e8c0c0b06df8ef2c2791e22b88da12163a894969dba811d0b6d0ee8d2a97e66",
  "kind": "def",
  "lexical_name": "expandNotationItemIntoPattern",
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
  "slug": "expandnotationitemintopattern--077396c0ecfd64fde1e050f5",
  "source": {
    "blob": "9a03a980886c60bd767e9b657aa8c4230c26dad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:077396c0ecfd64fde1e050f56f35f8a0bd02753387fbdd9a5aa6f5dc1c3766ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e8c0c0b06df8ef2c2791e22b88da12163a894969dba811d0b6d0ee8d2a97e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandNotationItemIntoPattern (stx : Syntax) : MacroM Syntax :=
  let k := stx.getKind
  if k == ``Lean.Parser.Command.identPrec then
    return mkAntiquotNode stx[0] (kind := `term) (isPseudoKind := true)
  else if k == strLitKind then
    strLitToPattern stx
  else if k == ``Parser.Syntax.unicodeAtom then
    let preserveForPP := !stx[4].isNone
    if preserveForPP then
      -- Use the ascii atom for the pattern; that way delaboration gives the ASCII version,
      -- which is the preferred form according to `ParserDescr.unicodeSymbol`.
      strLitToPattern stx[3]
    else
      strLitToPattern stx[1]
  else
    Macro.throwUnsupported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Varianta288facc33b6c22ff44f060ca9e7b0c846eaa7f3843743c773309e6b85268ebb.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a03a980886c60bd767e9b657aa8c4230c26dad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
