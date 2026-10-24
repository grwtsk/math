# authorityLeafPairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d71fc74971d465edf06d3e9beb4092d5a9f190038b76a84bed8a935a34094fc",
  "kind": "def",
  "lexical_name": "authorityLeafPairs",
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
  "slug": "authorityleafpairs--249c2541459da4f34696ffca",
  "source": {
    "blob": "e9ce4d9e85460f3a2b73a62d0b91b8ba0adc6302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:249c2541459da4f34696ffca5c445e1b74350d29ddc795af9120ea1aa4fadda2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d71fc74971d465edf06d3e9beb4092d5a9f190038b76a84bed8a935a34094fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def authorityLeafPairs : List (String × String) :=
  [ ("src/lib/geometry/src/authority_bit_matrix/band.rs", "src/formal/Formal/Checked/Geometry/Authority/Band.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/row.rs", "src/formal/Formal/Checked/Geometry/Authority/Row.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/scheduler.rs", "src/formal/Formal/Checked/Geometry/Authority/Scheduler.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/direction.rs", "src/formal/Formal/Checked/Geometry/Authority/Direction.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/hash.rs", "src/formal/Formal/Checked/Geometry/Authority/Hash.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/witness.rs", "src/formal/Formal/Checked/Geometry/Authority/Witness.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/spectrum.rs", "src/formal/Formal/Checked/Geometry/Authority/Spectrum.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/digest.rs", "src/formal/Formal/Checked/Geometry/Authority/Digest.lean")
  , ("src/lib/geometry/src/authority_bit_matrix/pipeline.rs", "src/formal/Formal/Checked/Geometry/Authority/Pipeline.lean")
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Geometry/Variant90335824710d9237d7636e2bbdfb14762df97ec1028065bbfecf0ac9025f2228.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ce4d9e85460f3a2b73a62d0b91b8ba0adc6302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
