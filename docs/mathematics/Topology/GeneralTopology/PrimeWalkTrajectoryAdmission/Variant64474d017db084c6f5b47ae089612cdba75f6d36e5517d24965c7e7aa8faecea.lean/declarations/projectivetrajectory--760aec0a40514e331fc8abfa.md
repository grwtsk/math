# projectiveTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53e15bb9eb605b4d0fc585ae187be60b35b15ffcfb6b25bd8a5ff2324ba56101",
  "kind": "def",
  "lexical_name": "projectiveTrajectory",
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
  "slug": "projectivetrajectory--760aec0a40514e331fc8abfa",
  "source": {
    "blob": "ad9f0b1c519ce2c5a6b756eee360d06dede2ade2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:760aec0a40514e331fc8abfac8f9975f44e8003742a45038932347969c7603a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53e15bb9eb605b4d0fc585ae187be60b35b15ffcfb6b25bd8a5ff2324ba56101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def projectiveTrajectory
    (state : ℝ → H) (state_ne_zero : ∀ parameter, state parameter ≠ 0) :
    ℝ → Projectivization ℂ H :=
  fun parameter ↦
    Projectivization.mk ℂ (state parameter) (state_ne_zero parameter)

/-- Endpoint-dependent, path-independent transport on the pullback ray bundle
along one projective trajectory.

This is a flat transport certificate along this path.  It does not assert that
an ambient projective connection has zero curvature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9f0b1c519ce2c5a6b756eee360d06dede2ade2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
