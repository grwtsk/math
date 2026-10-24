# octahedralEdgeId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a95fa1477b72a3ee7e798f5fbcb1c36c35617a137e10e16f1d12067c22064c62",
  "kind": "def",
  "lexical_name": "octahedralEdgeId",
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
  "slug": "octahedraledgeid--b3f79c1a8e8fc4e99c88bafa",
  "source": {
    "blob": "ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f79c1a8e8fc4e99c88bafa10a966288f5559817a59df41cbe4822af76d8370",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a95fa1477b72a3ee7e798f5fbcb1c36c35617a137e10e16f1d12067c22064c62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralEdgeId : OctahedralEdge → String
  | .xy .positive .positive => "edge-v-xp-v-yp"
  | .xy .positive .negative => "edge-v-xp-v-yn"
  | .xy .negative .positive => "edge-v-xn-v-yp"
  | .xy .negative .negative => "edge-v-xn-v-yn"
  | .xz .positive .positive => "edge-v-xp-v-zp"
  | .xz .positive .negative => "edge-v-xp-v-zn"
  | .xz .negative .positive => "edge-v-xn-v-zp"
  | .xz .negative .negative => "edge-v-xn-v-zn"
  | .yz .positive .positive => "edge-v-yp-v-zp"
  | .yz .positive .negative => "edge-v-yp-v-zn"
  | .yz .negative .positive => "edge-v-yn-v-zp"
  | .yz .negative .negative => "edge-v-yn-v-zn"

/-- Stable runtime identifier of an octahedral face. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
