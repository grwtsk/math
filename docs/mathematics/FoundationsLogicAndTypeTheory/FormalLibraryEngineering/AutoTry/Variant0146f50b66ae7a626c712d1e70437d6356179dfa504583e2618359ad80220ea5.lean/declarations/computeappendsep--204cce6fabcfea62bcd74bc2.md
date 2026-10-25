# computeAppendSep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20e632c13a41be0e21c4dacef53a94707be9ed8ea860b3847e010e143857dbb5",
  "kind": "def",
  "lexical_name": "computeAppendSep",
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
  "slug": "computeappendsep--204cce6fabcfea62bcd74bc2",
  "source": {
    "blob": "6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:204cce6fabcfea62bcd74bc2d5f1e7c40df52d80ccc070abac8fdd2f78bb3c01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20e632c13a41be0e21c4dacef53a94707be9ed8ea860b3847e010e143857dbb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeAppendSep (tacticSeq : Syntax) (fileMap : FileMap) : String := Id.run do
  -- Locate the first tactic of the body; absence means an empty `tacticSeq`.
  let some bodyStart := tacticSeq.getPos? | return " "
  let some bodyEnd := tacticSeq.getTailPos? | return " "
  let startPos := fileMap.toPosition bodyStart
  let endPos := fileMap.toPosition bodyEnd
  if startPos.line == endPos.line then
    return "; "
  return "\n" ++ String.ofList (List.replicate startPos.column ' ')

/--
Build a synthetic atom with zero textual content whose syntactic range is the empty
range `[p, p)`. Used as the `origSpan?` for append-style suggestions so the IDE inserts
the replacement text at `p` without overwriting anything.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
