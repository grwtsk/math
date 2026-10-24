# wangZahlLowerTerm_le_packetSuperlevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb4db9d0-32d0-98ae-3e1b-bcb8cce70ce9",
  "kind": "theorem",
  "lexical_name": "wangZahlLowerTerm_le_packetSuperlevel",
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
  "slug": "wangzahllowerterm-le-packetsuperlevel--909492807b6a153ae7e45a7a",
  "source": {
    "blob": "23251cc423e48e620cb1957f021588124e3c974d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909492807b6a153ae7e45a7a022a63ca198ed2f83e2afd22a54107a1006fdb05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4db9d0-32d0-98ae-3e1b-bcb8cce70ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wangZahlLowerTerm_le_packetSuperlevel
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube)
    {epsilon pWZ : ℝ} {m : ℝ≥0∞}
    {G : SpatialPoint → ℝ} {threshold : ℝ}
    (hUnion : WangZahlUnionLowerBoundAt family epsilon pWZ m)
    (hInclude : finsetShadingUnion family.tubes family.shading ⊆
      spatialSuperlevelSet G threshold) :
    wangZahlLowerTerm family epsilon pWZ m ≤
      volume (spatialSuperlevelSet G threshold) := by
  exact hUnion.trans (measure_mono hInclude)

/-- Combining a supplied Wang--Zahl application with the checked Markov
inequality gives `threshold² * L_WZ ≤ packetEnergy`.  This still has no
arithmetic conclusion: calibration, coefficient-frame cancellation,
residual control, and epsilon-loss accounting remain separate obligations. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23251cc423e48e620cb1957f021588124e3c974d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
