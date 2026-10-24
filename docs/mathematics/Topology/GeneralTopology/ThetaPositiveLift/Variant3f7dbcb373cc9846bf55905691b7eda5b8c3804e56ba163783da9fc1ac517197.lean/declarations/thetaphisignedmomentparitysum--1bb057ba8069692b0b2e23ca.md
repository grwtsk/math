# thetaPhiSignedMomentParitySum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f65962d2f6d4c36ac8e51706e1c3370b2ca6c2b0657d08e2d199420291fabb06",
  "kind": "def",
  "lexical_name": "thetaPhiSignedMomentParitySum",
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
  "slug": "thetaphisignedmomentparitysum--1bb057ba8069692b0b2e23ca",
  "source": {
    "blob": "e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb057ba8069692b0b2e23ca81c6c5b51df6b402f5ec829b2701ea2a0fcddc78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f65962d2f6d4c36ac8e51706e1c3370b2ca6c2b0657d08e2d199420291fabb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiSignedMomentParitySum
    (k L N : ℕ) (t : ℝ) : ℝ :=
  ∑ f : Fin k → Fin L,
    (-1 : ℝ) ^ (∑ i : Fin k, (f i).val) *
      thetaPhiSignedMomentSelectionMagnitude N t f

/-- The finite signed-moment determinant is exactly the parity sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
