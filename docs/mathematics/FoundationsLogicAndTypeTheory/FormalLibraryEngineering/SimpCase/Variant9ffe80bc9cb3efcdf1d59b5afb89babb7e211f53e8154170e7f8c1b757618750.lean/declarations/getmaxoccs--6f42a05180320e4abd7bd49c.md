# getMaxOccs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:497c1c3d85c138cfc0eab2bc6964dc73f36f5fc1fa24e8f67c9ae0e94a4b9220",
  "kind": "def",
  "lexical_name": "getMaxOccs",
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
  "slug": "getmaxoccs--6f42a05180320e4abd7bd49c",
  "source": {
    "blob": "5c8fbcb4ec12ac9305fa0bb9524d389c2ddfd4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant9ffe80bc9cb3efcdf1d59b5afb89babb7e211f53e8154170e7f8c1b757618750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f42a05180320e4abd7bd49cb1a833d4f0c040eb127363ec6d7108c22bcce9fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant9ffe80bc9cb3efcdf1d59b5afb89babb7e211f53e8154170e7f8c1b757618750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:497c1c3d85c138cfc0eab2bc6964dc73f36f5fc1fa24e8f67c9ae0e94a4b9220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMaxOccs (alts : Array (Alt .impure)) : Alt .impure × Nat := Id.run do
  let mut maxAlt := alts[0]!
  let mut max    := getNumOccsOf alts 0
  for h : i in 1...alts.size do
    let curr := getNumOccsOf alts i
    if curr > max then
       maxAlt := alts[i]
       max    := curr
  return (maxAlt, max)
where
  /--
  Return the number of occurrences of `alts[i]` in `alts`.
  We use alpha equivalence.
  Note that the number of occurrences can be greater than 1 only when
  the alternative does not depend on field parameters
  -/
  getNumOccsOf (alts : Array (Alt .impure)) (i : Nat) : Nat := Id.run do
    let code := alts[i]!.getCode
    let mut n := 1
    for h : j in (i+1)...alts.size do
      if Code.alphaEqv alts[j].getCode code then
        n := n + 1
    return n

/--
Add a default case to the given `cases` alternatives if there
are alternatives with equivalent (aka alpha equivalent) right hand sides.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant9ffe80bc9cb3efcdf1d59b5afb89babb7e211f53e8154170e7f8c1b757618750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant9ffe80bc9cb3efcdf1d59b5afb89babb7e211f53e8154170e7f8c1b757618750.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8fbcb4ec12ac9305fa0bb9524d389c2ddfd4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
