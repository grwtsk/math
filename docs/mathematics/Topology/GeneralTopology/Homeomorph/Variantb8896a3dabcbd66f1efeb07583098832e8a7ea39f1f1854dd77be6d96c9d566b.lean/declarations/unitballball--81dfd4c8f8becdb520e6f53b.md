# unitBallBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16e62e0f1e81ad3146eefac7a5d8d5f91cb7c124fe175785e933484a3aee88bf",
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
  "slug": "unitballball--81dfd4c8f8becdb520e6f53b",
  "source": {
    "blob": "9ed45b676328fb2d25b3a4e42936967343276a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81dfd4c8f8becdb520e6f53b7211a916aa82ccf9f8fc1363b606e1d1f8089c95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16e62e0f1e81ad3146eefac7a5d8d5f91cb7c124fe175785e933484a3aee88bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitBallBall (c : P) (r : ℝ) (hr : 0 < r) : OpenPartialHomeomorph E P :=
  ((Homeomorph.smulOfNeZero r hr.ne').trans
      (IsometryEquiv.vaddConst c).toHomeomorph).toOpenPartialHomeomorphOfImageEq
      (ball 0 1) isOpen_ball (ball c r) <| by
    change (IsometryEquiv.vaddConst c) ∘ (r • ·) '' ball (0 : E) 1 = ball c r
    rw [image_comp, image_smul, smul_unitBall hr.ne', IsometryEquiv.image_ball]
    simp [abs_of_pos hr]

/-- If `r > 0`, then `OpenPartialHomeomorph.univBall c r` is a smooth open partial homeomorphism
with `source = Set.univ` and `target = Metric.ball c r`.
Otherwise, it is the translation by `c`.
Thus in all cases, it sends `0` to `c`, see `OpenPartialHomeomorph.univBall_apply_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed45b676328fb2d25b3a4e42936967343276a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
