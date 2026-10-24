# prototypeEdgeEndpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3e595ac87945f8c2c18d9967dfcf2b89a48d01375bc9ad60d6591660c5010a5",
  "kind": "def",
  "lexical_name": "prototypeEdgeEndpoints",
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
  "slug": "prototypeedgeendpoints--79eb42f91df3d5a0fdb8012c",
  "source": {
    "blob": "5d67e5aebb92f9943f04b091183c49b8d6489dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79eb42f91df3d5a0fdb8012cc4f6fca364a16791e2329bca0645c8bd5ca45a50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3e595ac87945f8c2c18d9967dfcf2b89a48d01375bc9ad60d6591660c5010a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeEdgeEndpoints : PrototypeEdge → PrototypeVertex × PrototypeVertex
  | .τPB => (.P, .B)
  | .τGP => (.G, .P)
  | .τGB => (.G, .B)
  | .τBS => (.B, .S)
  | .τSH => (.S, .H)
  | .τPH => (.P, .H)

/-- Edge boundary of each declared two-cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d67e5aebb92f9943f04b091183c49b8d6489dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
