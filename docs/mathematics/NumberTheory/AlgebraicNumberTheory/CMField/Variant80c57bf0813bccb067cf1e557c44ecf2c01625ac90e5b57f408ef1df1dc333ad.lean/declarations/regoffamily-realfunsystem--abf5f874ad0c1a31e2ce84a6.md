# regOfFamily_realFunSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08ec7c58-fd44-4e1d-4000-a8182dc64e2a",
  "kind": "theorem",
  "lexical_name": "regOfFamily_realFunSystem",
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
  "slug": "regoffamily-realfunsystem--abf5f874ad0c1a31e2ce84a6",
  "source": {
    "blob": "21130fd5375f3d6de45c8e317078dde18a9d0bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 430,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abf5f874ad0c1a31e2ce84a60a214851cba3f5ebd37dd7c2af06619cee2afd5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ec7c58-fd44-4e1d-4000-a8182dc64e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regOfFamily_realFunSystem :
    regOfFamily (realFundSystem K) = 2 ^ rank K * regulator K⁺ := by
  classical
  let W₀ := (equivInfinitePlace K).symm w₀
  let f : {w : InfinitePlace K // w ≠ W₀} ≃ {w : InfinitePlace K⁺ // w ≠ w₀} :=
    (equivInfinitePlace K).subtypeEquiv fun w ↦ by rw [not_iff_not, Equiv.eq_symm_apply]
  let g := ((finCongr (units_rank_eq_units_rank K).symm).trans (equivFinRank K⁺)).trans f.symm
  rw [show (2 : ℝ) ^ rank K = |∏ w : {w : InfinitePlace K⁺ // w ≠ w₀}, 2| by
    rw [Finset.prod_const, abs_pow, abs_of_pos zero_lt_two, ← units_rank_eq_units_rank K, rank]
    simp]
  rw [regulator_eq_regOfFamily_fundSystem, regOfFamily_eq_det _ W₀ g.symm, regOfFamily_eq_det',
    ← abs_mul, ← Matrix.det_mul_column, ← Matrix.det_reindex_self f, Matrix.reindex_apply]
  congr; ext i w
  rw [Matrix.submatrix_apply, Matrix.of_apply, Matrix.of_apply,
    show f.symm w = (equivInfinitePlace K).symm w.1 by rfl,
    show algebraMap (𝓞 K) K _ = algebraMap K⁺ K _ by rfl, equivInfinitePlace_symm_apply]
  simp [f, g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21130fd5375f3d6de45c8e317078dde18a9d0bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
