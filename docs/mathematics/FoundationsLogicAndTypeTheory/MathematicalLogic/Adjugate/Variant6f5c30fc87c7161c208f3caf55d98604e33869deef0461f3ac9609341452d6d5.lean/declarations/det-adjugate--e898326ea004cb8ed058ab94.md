# det_adjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1743057-aac1-7d97-898d-e6d63095198d",
  "kind": "theorem",
  "lexical_name": "det_adjugate",
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
  "slug": "det-adjugate--e898326ea004cb8ed058ab94",
  "source": {
    "blob": "ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e898326ea004cb8ed058ab948b084385025c18e28f854e98fa1c1381d5d7f06a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1743057-aac1-7d97-898d-e6d63095198d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_adjugate (A : Matrix n n α) : (adjugate A).det = A.det ^ (Fintype.card n - 1) := by
  -- get rid of the `- 1`
  cases' (Fintype.card n).eq_zero_or_pos with h_card h_card
  · haveI : IsEmpty n := Fintype.card_eq_zero_iff.mp h_card
    rw [h_card, Nat.zero_sub, pow_zero, adjugate_subsingleton, det_one]
  replace h_card := tsub_add_cancel_of_le h_card.nat_succ_le
  -- express `A` as an evaluation of a polynomial in n^2 variables, and solve in the polynomial ring
  -- where `A'.det` is non-zero.
  let A' := mvPolynomialX n n ℤ
  suffices A'.adjugate.det = A'.det ^ (Fintype.card n - 1) by
    rw [← mvPolynomialX_mapMatrix_aeval ℤ A, ← AlgHom.map_adjugate, ← AlgHom.map_det, ←
      AlgHom.map_det, ← AlgHom.map_pow, this]
  apply mul_left_cancel₀ (show A'.det ≠ 0 from det_mvPolynomialX_ne_zero n ℤ)
  calc
    A'.det * A'.adjugate.det = (A' * adjugate A').det := (det_mul _ _).symm
    _ = A'.det ^ Fintype.card n := by rw [mul_adjugate, det_smul, det_one, mul_one]
    _ = A'.det * A'.det ^ (Fintype.card n - 1) := by rw [← pow_succ, h_card]
#align matrix.det_adjugate Matrix.det_adjugate

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
