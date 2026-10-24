# thetaPhiRawD6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f15ef514a41901e36503b34c591b947a898383552ec73c7734b7b3f8e41b827",
  "kind": "def",
  "lexical_name": "thetaPhiRawD6",
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
  "slug": "thetaphirawd6--baa062afbd7e93e5547e5647",
  "source": {
    "blob": "1c1febefde3eabb8f87051a308cf1d507a385831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baa062afbd7e93e5547e564735f0095afdf3558bc6797019d2efb5f4ceb53031",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f15ef514a41901e36503b34c591b947a898383552ec73c7734b7b3f8e41b827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiRawD6 (t : ℝ) : ℝ :=
  -(46875 * Real.pi) * thetaGaussianSum 2 5 t +
  (2610330 * Real.pi ^ 2) * thetaGaussianSum 4 9 t -
  (14260064 * Real.pi ^ 3) * thetaGaussianSum 6 13 t +
  (20633312 * Real.pi ^ 4) * thetaGaussianSum 8 17 t -
  (11109120 * Real.pi ^ 5) * thetaGaussianSum 10 21 t +
  (2536960 * Real.pi ^ 6) * thetaGaussianSum 12 25 t -
  (245760 * Real.pi ^ 7) * thetaGaussianSum 14 29 t +
  (8192 * Real.pi ^ 8) * thetaGaussianSum 16 33 t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1febefde3eabb8f87051a308cf1d507a385831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
