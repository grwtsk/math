# mkFintypeInstanceHandler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b13256d19ef06ab267a38c3b48d3b45788db318c62fd00269dee38cbaf427f0",
  "kind": "def",
  "lexical_name": "mkFintypeInstanceHandler",
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
  "slug": "mkfintypeinstancehandler--22a4bc2144c64c2ee22762d5",
  "source": {
    "blob": "446ec31c4cb43bf8bd13c2faa6a20285df476104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22a4bc2144c64c2ee22762d5b4f41e07c5b1c0bb9c0178fa112de0742175aba9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b13256d19ef06ab267a38c3b48d3b45788db318c62fd00269dee38cbaf427f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFintypeInstanceHandler (declNames : Array Name) : CommandElabM Bool := do
  if h : declNames.size ≠ 1 then
    return false -- mutually inductive types are not supported
  else
    let declName := declNames[0]
    if ← isEnumType declName then
      mkFintypeEnum declName
      return true
    else
      mkFintype declName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `446ec31c4cb43bf8bd13c2faa6a20285df476104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
