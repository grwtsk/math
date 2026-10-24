# thetaPhiSecondDerivCompactBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f367a47b8a00b2b7e86b075e98c1e9e238b2ef0b0e3c0fd063ef550d0dea517c",
  "kind": "def",
  "lexical_name": "thetaPhiSecondDerivCompactBound",
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
  "slug": "thetaphisecondderivcompactbound--aef0f3240633c83b7e934f11",
  "source": {
    "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 340,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aef0f3240633c83b7e934f11b28ac42499d0c453c24a3226d2c512fb4a69b68e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f367a47b8a00b2b7e86b075e98c1e9e238b2ef0b0e3c0fd063ef550d0dea517c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiSecondDerivCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  ‖330 * Real.pi ^ 2‖ * thetaGaussianCompactBound 4 9 a b m +
  ‖75 * Real.pi‖ * thetaGaussianCompactBound 2 5 a b m +
  ‖224 * Real.pi ^ 3‖ * thetaGaussianCompactBound 6 13 a b m +
  ‖32 * Real.pi ^ 4‖ * thetaGaussianCompactBound 8 17 a b m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d322c9779e5e2552b1183bad2c6a9f6340c90e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
