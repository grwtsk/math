# Wbtw.swap_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0930d846d75149db0982c06820eee86c52d59ace",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87188f82-6b69-3b33-8c15-84f5a9a4c3c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b84b8de1-933c-2153-ca1a-280f2facd139",
  "kind": "theorem",
  "lexical_name": "Wbtw.swap_left_iff",
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
  "slug": "wbtw-swap-left-iff--8cc43656a441f623594dc9c1",
  "source": {
    "blob": "0930d846d75149db0982c06820eee86c52d59ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 353,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc43656a441f623594dc9c1d50883668ddc3f366d522eaa41664fb370d102c2",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84b8de1-933c-2153-ca1a-280f2facd139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wbtw.swap_left_iff [NoZeroSMulDivisors R V] {x y z : P} (h : Wbtw R x y z) :
    Wbtw R y x z ↔ x = y := by rw [← wbtw_swap_left_iff R z, and_iff_right h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0930d846d75149db0982c06820eee86c52d59ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
