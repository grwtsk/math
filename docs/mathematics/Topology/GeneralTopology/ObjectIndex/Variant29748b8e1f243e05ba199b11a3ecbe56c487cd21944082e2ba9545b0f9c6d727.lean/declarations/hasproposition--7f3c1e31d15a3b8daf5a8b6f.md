# HasProposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9273d0d2774805ae516df48214d20057acccf2113cb89f01cb291ce7251ec4e7",
  "kind": "def",
  "lexical_name": "HasProposition",
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
  "slug": "hasproposition--7f3c1e31d15a3b8daf5a8b6f",
  "source": {
    "blob": "2a9b29c772ed759579e887847b595898019d3eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f3c1e31d15a3b8daf5a8b6fff664a309862a852e4734a51cfbce0efce573632",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9273d0d2774805ae516df48214d20057acccf2113cb89f01cb291ce7251ec4e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasProposition (index : CanonicalMathematicalIndex)
    (id : PropositionId) : Prop :=
  ∃ record ∈ index.propositions.entries, record.identity = id

/-- Cross-reference validity for the finite index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9b29c772ed759579e887847b595898019d3eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
