# intToLiteral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e9c11ab6d27a9e987ffff81e86b6c54d494a13388b018a028656a66c4418a34",
  "kind": "def",
  "lexical_name": "intToLiteral",
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
  "slug": "inttoliteral--28b2ce5b80ca0632005605ed",
  "source": {
    "blob": "640acc75d21ec64a865ef30080ea3416879055ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28b2ce5b80ca0632005605ed25c6170a0f1d39a3d9133685de46350fb6e8f6a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e9c11ab6d27a9e987ffff81e86b6c54d494a13388b018a028656a66c4418a34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intToLiteral {n : Nat} (x : Int) : Option (Literal (PosFin n)) := do
  if h1 : x.natAbs < n ∧ x ≠ 0 then
    if h2 : x > 0 then
      some (⟨x.natAbs, ⟨by omega, h1.left⟩⟩, true)
    else
      some (⟨x.natAbs, ⟨by omega, h1.left⟩⟩, false)
  else
    none

/--
Since `IntAction` is a convenient parsing target and `DefaultClauseAction` is a useful Action type
for working with default clauses, an expected workflow pattern is to parse an external LRAT proof
into a list of `IntAction`s, and then use this function to convert that list of `IntAction`s to
`DefaultClauseAction`s.

This function returns an `Option` type so that `none` can be returned if converting from the
`IntAction` to `DefaultClauseAction` fails. This can occur if any of the literals in the `IntAction`
are 0 or ≥ n.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant097c0188d8c521e07a2651da5bd97ce017645e1c1c1b017ec2314869c7c10c5e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `640acc75d21ec64a865ef30080ea3416879055ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
