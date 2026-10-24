# thetaPhiSignedMomentChristoffel_det_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a65fc7d8-1412-339e-0840-b65b94723a84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5787e1b6-33f2-9704-e65c-ddf2b6a56839",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentChristoffel_det_tendsto",
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
  "slug": "thetaphisignedmomentchristoffel-det-tendsto--239e2c8cd7bd8681b12ae615",
  "source": {
    "blob": "e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:239e2c8cd7bd8681b12ae6152ba6aa8bfb72723af133a1a35c8bd6971b36dd79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5787e1b6-33f2-9704-e65c-ddf2b6a56839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentChristoffel_det_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation L N n t)))
      atTop
      (𝓝
        (Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseTapeTruncation N n t)))) := by
  have hcont :
      Continuous
        (fun M : Matrix (Fin k) (Fin k) ℝ =>
          Matrix.det M) :=
    continuous_id.matrix_det
  exact
    (hcont.tendsto
      (thetaPhiChristoffelHankel k
        (fun n => thetaPhiBaseTapeTruncation N n t))).comp
      (thetaPhiSignedMomentChristoffel_tendsto k N t)

/-- The explicit finite parity sums converge to factorial times the actual
finite-mode base Christoffel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant3f7dbcb373cc9846bf55905691b7eda5b8c3804e56ba163783da9fc1ac517197.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d6c0538a2123b19681c9f2f0e83a5b93ed9f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
