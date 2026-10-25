# getAntiquotationIds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a647627b029e0ae3691acbf3f4a7ad604d32ac18f457e6d0eaf4148e162cb99",
  "kind": "def",
  "lexical_name": "getAntiquotationIds",
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
  "slug": "getantiquotationids--5f6e3322b10db356f39e61ce",
  "source": {
    "blob": "379e6e6a2d3cd1ddf02db0e3dc98b56534cff7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f6e3322b10db356f39e61ce77a62873414c502e0fd16122af01c6b5f8630935",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a647627b029e0ae3691acbf3f4a7ad604d32ac18f457e6d0eaf4148e162cb99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getAntiquotationIds (stx : Syntax) : TermElabM (Array Ident) := do
  let mut ids := #[]
  for stx in stx.topDown (firstChoiceOnly := true) do
    if (isAntiquot stx || isTokenAntiquot stx) && !isEscapedAntiquot stx then
      let anti := getAntiquotTerm stx
      if anti.isIdent then ids := ids.push ⟨anti⟩
      else if anti.isOfKind ``Parser.Term.hole then pure ()
      else throwErrorAt stx "complex antiquotation not allowed here"
  return ids

/-- Get all pattern vars (as `Syntax.ident`s) in `stx` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant8895aabe78abbdd06dc23e61aa91adeb91d3c65fbd14fcb705ec9704d7452f6f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379e6e6a2d3cd1ddf02db0e3dc98b56534cff7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
