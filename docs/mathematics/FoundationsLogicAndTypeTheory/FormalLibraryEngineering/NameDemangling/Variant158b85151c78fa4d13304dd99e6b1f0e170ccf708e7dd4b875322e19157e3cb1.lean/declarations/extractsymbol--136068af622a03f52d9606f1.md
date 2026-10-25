# extractSymbol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7dba0f06791278bc5f8fcf02054b47bfe00e23603e25ac92428989f65d684c7",
  "kind": "def",
  "lexical_name": "extractSymbol",
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
  "slug": "extractsymbol--136068af622a03f52d9606f1",
  "source": {
    "blob": "9219df010e50197717971c85deb838d4746ff82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:136068af622a03f52d9606f1cc41ce8bb432891547934310c6085d5eaf82d937",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7dba0f06791278bc5f8fcf02054b47bfe00e23603e25ac92428989f65d684c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractSymbol (line : String) :
    Option (String × String × String) :=
  tryLinux line |>.orElse (fun _ => tryMacOS line)
where
  -- Linux glibc: ./lean(SYMBOL+0x2a) [0x555...]
  tryLinux (line : String) : Option (String × String × String) := do
    let parenPos ← line.find? '('
    if h : parenPos = line.endPos then none else
    let symStart := parenPos.next h
    let delimPos ← symStart.find? (fun c => c == '+' || c == ')')
    if delimPos == symStart then none else
    some (splitAt₂ line symStart delimPos)
  -- macOS: N   lib   0xADDR SYMBOL + offset
  tryMacOS (line : String) : Option (String × String × String) := do
    let zxPos ← line.find? "0x"
    if h : zxPos = line.endPos then none else
    let afterZero := zxPos.next h
    if h2 : afterZero = line.endPos then none else
    let afterX := afterZero.next h2
    let afterHex := skipWhile line afterX (·.isHexDigit)
    let symStart := skipWhile line afterHex (· == ' ')
    if symStart == line.endPos then none else
    let symEnd := (symStart.find? " + ").getD line.endPos
    if symEnd == symStart then none else
    some (splitAt₂ line symStart symEnd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameDemangling/Variant158b85151c78fa4d13304dd99e6b1f0e170ccf708e7dd4b875322e19157e3cb1.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9219df010e50197717971c85deb838d4746ff82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
