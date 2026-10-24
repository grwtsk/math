# thetaPhiCompactBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e75c58d57b4a5b112490120f4c876b77d9fadbd3f5e19b62eb6c2377bef9e1f7",
  "kind": "def",
  "lexical_name": "thetaPhiCompactBound",
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
  "slug": "thetaphicompactbound--aa0127e4baf3fb74a68df945",
  "source": {
    "blob": "6748a5667f213bf39b461bffe4ab62c011c1d6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa0127e4baf3fb74a68df94595a0a0e6d84f1448d3b3d587f67092c1afb7acd9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e75c58d57b4a5b112490120f4c876b77d9fadbd3f5e19b62eb6c2377bef9e1f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  (2 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m +
    (3 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6748a5667f213bf39b461bffe4ab62c011c1d6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
