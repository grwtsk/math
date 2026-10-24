# allOnesRectangularOperator_card_mul_le_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72ee2dd1-27ab-5a0c-78a0-43cab47268b0",
  "kind": "theorem",
  "lexical_name": "allOnesRectangularOperator_card_mul_le_norm_sq",
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
  "slug": "allonesrectangularoperator-card-mul-le-norm-sq--b673e26c49f7771b95a416e6",
  "source": {
    "blob": "5355a216d528948bb860349f8727fa445ea69a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b673e26c49f7771b95a416e69bad6a33a6c10d1f0c9e002b2e3c646e05132416",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72ee2dd1-27ab-5a0c-78a0-43cab47268b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allOnesRectangularOperator_card_mul_le_norm_sq
    (Left Right : Type*) [Fintype Left] [Fintype Right]
    [DecidableEq Right] [Nonempty Right] :
    (Fintype.card Left : ℝ) * (Fintype.card Right : ℝ) ≤
      ‖allOnesRectangularOperator Left Right‖ ^ 2 := by
  let J := allOnesRectangularOperator Left Right
  let v := constantOneVector Right
  have happly :
      J v = (Fintype.card Right : ℂ) • constantOneVector Left :=
    allOnesRectangularOperator_constant Left Right
  have hbound : ‖J v‖ ≤ ‖J‖ * ‖v‖ := J.le_opNorm v
  have hbound_sq : ‖J v‖ ^ 2 ≤ (‖J‖ * ‖v‖) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) <|
      mul_nonneg (norm_nonneg _) (norm_nonneg _)).2 hbound
  have hleft :
      ‖J v‖ ^ 2 =
        (Fintype.card Right : ℝ) ^ 2 * (Fintype.card Left : ℝ) := by
    rw [happly, norm_smul, mul_pow, constantOneVector_norm_sq]
    norm_cast
  have hright :
      (‖J‖ * ‖v‖) ^ 2 =
        ‖J‖ ^ 2 * (Fintype.card Right : ℝ) := by
    rw [mul_pow, constantOneVector_norm_sq]
  rw [hleft, hright] at hbound_sq
  have hcard_pos : 0 < (Fintype.card Right : ℝ) := by
    exact_mod_cast Fintype.card_pos
  nlinarith

end

end Surface.Core.TypeII.FullOperatorObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FullOperatorObstruction/Variant88836f49949563236df485f8dc704c7853ac9f25b00e1eab468ced38a583a5db.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5355a216d528948bb860349f8727fa445ea69a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
