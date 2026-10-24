# unitBallBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ef6c4e342f8532e70541df9b9968a54fe05de34277ff2497f32afa6c702a9ad",
  "kind": "def",
  "lexical_name": "unitBallBall",
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
  "slug": "unitballball--10c0d063eb7f2d25a3441450",
  "source": {
    "blob": "f98adc08604d749c89b6224084e0f635e4c7aa7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10c0d063eb7f2d25a34414507027cdfae849dfec444f41f0816ac893aba2a1d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ef6c4e342f8532e70541df9b9968a54fe05de34277ff2497f32afa6c702a9ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitBallBall (c : P) (r : ℝ) (hr : 0 < r) : PartialHomeomorph E P :=
  ((Homeomorph.smulOfNeZero r hr.ne').trans
      (IsometryEquiv.vaddConst c).toHomeomorph).toPartialHomeomorphOfImageEq
      (ball 0 1) isOpen_ball (ball c r) <| by
    change (IsometryEquiv.vaddConst c) ∘ (r • ·) '' ball (0 : E) 1 = ball c r
    rw [image_comp, image_smul, smul_unitBall hr.ne', IsometryEquiv.image_ball]
    simp [abs_of_pos hr]

/-- If `r > 0`, then `PartialHomeomorph.univBall c r` is a smooth partial homeomorphism
with `source = Set.univ` and `target = Metric.ball c r`.
Otherwise, it is the translation by `c`.
Thus in all cases, it sends `0` to `c`, see `PartialHomeomorph.univBall_apply_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variant2db9c494207dd0bac548a8b46fdbfb9e5f4917d7267c098f0485418fb3515b63.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98adc08604d749c89b6224084e0f635e4c7aa7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
