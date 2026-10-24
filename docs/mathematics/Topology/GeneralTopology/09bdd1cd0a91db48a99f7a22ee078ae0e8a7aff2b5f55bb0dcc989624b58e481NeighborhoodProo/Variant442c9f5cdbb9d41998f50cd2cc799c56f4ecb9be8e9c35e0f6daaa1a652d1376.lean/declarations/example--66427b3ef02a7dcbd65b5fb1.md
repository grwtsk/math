# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d50bf0705d522bed1e6eac354b8d916f6de0241258965567bcaff4081f524f2",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--66427b3ef02a7dcbd65b5fb1",
  "source": {
    "blob": "d1c9b08a085d3948ce6d8bc24c48b2484b1b652b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo/Variant442c9f5cdbb9d41998f50cd2cc799c56f4ecb9be8e9c35e0f6daaa1a652d1376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66427b3ef02a7dcbd65b5fb10a3858b12505d7839db591a2ecc6f20e5a13b972",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo/Variant442c9f5cdbb9d41998f50cd2cc799c56f4ecb9be8e9c35e0f6daaa1a652d1376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d50bf0705d522bed1e6eac354b8d916f6de0241258965567bcaff4081f524f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (hneg : signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) < 0) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ t : ℝ, |t| < ε →
      signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n t) < 0 := by
  have hnhds := (continuous_thetaPhi_signedJetDet_test 5).continuousAt.eventually_lt
    continuousAt_const hneg
  obtain ⟨ε, hε, he⟩ := Metric.eventually_nhds_iff.mp hnhds
  refine ⟨ε, hε, fun t ht => he ?_⟩
  simpa [Real.dist_eq] using ht

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo/Variant442c9f5cdbb9d41998f50cd2cc799c56f4ecb9be8e9c35e0f6daaa1a652d1376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo/Variant442c9f5cdbb9d41998f50cd2cc799c56f4ecb9be8e9c35e0f6daaa1a652d1376.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1c9b08a085d3948ce6d8bc24c48b2484b1b652b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
