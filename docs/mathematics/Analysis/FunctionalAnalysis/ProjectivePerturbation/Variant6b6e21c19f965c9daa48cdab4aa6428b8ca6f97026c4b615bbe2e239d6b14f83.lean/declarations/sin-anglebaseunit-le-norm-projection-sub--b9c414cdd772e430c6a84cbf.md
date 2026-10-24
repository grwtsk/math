# sin_angleBaseUnit_le_norm_projection_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:637dfb36-5484-569a-aba2-17ce33a4b141",
  "kind": "theorem",
  "lexical_name": "sin_angleBaseUnit_le_norm_projection_sub",
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
  "slug": "sin-anglebaseunit-le-norm-projection-sub--b9c414cdd772e430c6a84cbf",
  "source": {
    "blob": "de1b6533ca5944bc38e85eb0e1f5bd351911ce5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c414cdd772e430c6a84cbf978c143fc5113ba7998f43441b8cf9c365a9ee99",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637dfb36-5484-569a-aba2-17ce33a4b141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_angleBaseUnit_le_norm_projection_sub (x y : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y) ≤
      ‖rankOne ℂ x x - rankOne ℂ y y‖ := by
  rw [sin_angleBaseUnit_eq_norm_remainder x y hx hy]
  calc
    ‖ProjectiveFubiniStudy.orthogonalRemainder x y‖ =
        ‖(rankOne ℂ x x - rankOne ℂ y y) y‖ := by
      have happly : (rankOne ℂ x x - rankOne ℂ y y) y =
          -ProjectiveFubiniStudy.orthogonalRemainder x y := by
        simp [ProjectiveFubiniStudy.orthogonalRemainder,
          InnerProductSpace.rankOne_apply, hy, inner_self_eq_norm_sq_to_K]
      rw [happly, norm_neg]
    _ ≤ ‖rankOne ℂ x x - rankOne ℂ y y‖ * ‖y‖ :=
      ContinuousLinearMap.le_opNorm _ _
    _ = ‖rankOne ℂ x x - rankOne ℂ y y‖ := by rw [hy, mul_one]

/-! ## Exact projection-angle identity on a Hilbert space -/

/--
The difference of two rank-one unit projections satisfies its cubic minimal
polynomial.  The scalar is the squared sine of their projective angle.
-/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b6533ca5944bc38e85eb0e1f5bd351911ce5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
