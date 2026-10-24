# intrinsicClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d3332a94ea187cefa40d6f20872506ac42767c2c3a11a1d94c697560e435d3b",
  "kind": "def",
  "lexical_name": "intrinsicClosure",
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
  "slug": "intrinsicclosure--4dcb1c64fb95b27fbed6032d",
  "source": {
    "blob": "e0587930538459c721c9b9b6c1412223bffc6029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dcb1c64fb95b27fbed6032da2063e2fbb15a57c43f6b11c9cbc1053fc0c6d04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d3332a94ea187cefa40d6f20872506ac42767c2c3a11a1d94c697560e435d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intrinsicClosure (s : Set P) : Set P :=
  (↑) '' closure ((↑) ⁻¹' s : Set <| affineSpan 𝕜 s)

variable {𝕜}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0587930538459c721c9b9b6c1412223bffc6029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
