# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c92acbf512efb2115b21ee77ddfd131f99559cb0a25f79bafbedc52f69c5657",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--57cff8b8ddaee5ae081c5b4e",
  "source": {
    "blob": "15a6dc79c284eadd5a2ed79029698f146adfffc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57cff8b8ddaee5ae081c5b4e857b8cfb41b5b51bb17c074007652963200b6127",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c92acbf512efb2115b21ee77ddfd131f99559cb0a25f79bafbedc52f69c5657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : ToMessageData Parameter where
  toMessageData (param : Parameter) := Id.run do
    let mut msg := if let some type := param.type? then
      m!"[{type}] (#{param.idx + 1})"
    else
      m!"parameter #{param.idx + 1}"
    if param.appearsInTypeProof then
      msg := m!"{msg} (used in type, but only in a proof)"
    return msg

/--
Builds the message for an unused-instance-binder warning on `declName`.
The bracketed "outside of proofs" is only included if some parameter appears in a proof in the
type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Varianta1d86b35184a729bb2dccfaafecc93b6144a67164a3ebc2a367a2cea42df03d4.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a6dc79c284eadd5a2ed79029698f146adfffc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
