# ediam_le_of_forall_dist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80542061-3663-01ba-2890-cefd241f0e01",
  "kind": "theorem",
  "lexical_name": "ediam_le_of_forall_dist_le",
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
  "slug": "ediam-le-of-forall-dist-le--9154c2012daf19b7055fbefa",
  "source": {
    "blob": "48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9154c2012daf19b7055fbefa2d5a85c4e2be081b1f5cdb43c65bcc03ac0e890d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80542061-3663-01ba-2890-cefd241f0e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_le_of_forall_dist_le {C : ℝ} (h : ∀ x ∈ s, ∀ y ∈ s, dist x y ≤ C) :
    EMetric.diam s ≤ ENNReal.ofReal C :=
  EMetric.diam_le fun x hx y hy => (edist_dist x y).symm ▸ ENNReal.ofReal_le_ofReal (h x hx y hy)

/-- If the distance between any two points in a set is bounded by some non-negative constant,
this constant bounds the diameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
