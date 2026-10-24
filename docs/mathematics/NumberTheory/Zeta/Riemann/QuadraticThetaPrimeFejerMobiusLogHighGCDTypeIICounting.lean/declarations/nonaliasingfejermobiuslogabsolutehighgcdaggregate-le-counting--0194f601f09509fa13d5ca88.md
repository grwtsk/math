# nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:866d5744-09e1-8dcd-405a-a096e98b5959",
  "kind": "theorem",
  "lexical_name": "nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting",
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
  "slug": "nonaliasingfejermobiuslogabsolutehighgcdaggregate-le-counting--0194f601f09509fa13d5ca88",
  "source": {
    "blob": "d70aa7eaaad0837560046946811c547bd5fc5266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 179,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0194f601f09509fa13d5ca88d82f9195be387a8694f46d4e57fbac54fb542712",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866d5744-09e1-8dcd-405a-a096e98b5959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_le_counting
    {X N m : ℕ}
    (hX : 0 < X)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
        X N m (Nat.sqrt X) ≤
      (Real.log (((4 * X : ℕ) : ℝ)))^2 *
        (mobiusLogHighGCDReducedDivisorTupleSet
          X (Nat.sqrt X)).card := by
  have hY : 1 ≤ Nat.sqrt X :=
    Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt (Nat.sqrt_pos.2 hX))
  rw [nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate_eq_termIndexSum]
  calc
    (∑ x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X (Nat.sqrt X),
        mobiusLogAbsoluteHighGCDTypeIITermValue X N m x)
      ≤
      ∑ x ∈ mobiusLogAbsoluteHighGCDTypeIITermIndexSet X (Nat.sqrt X),
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          exact Finset.sum_le_sum fun x hx =>
            mobiusLogAbsoluteHighGCDTypeIITermValue_le_log_sq
              hX hY hreg hm0 hm1 hx
    _ =
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet
        X (Nat.sqrt X)).card *
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          rw [Finset.sum_const, nsmul_eq_mul]
    _ ≤
      (mobiusLogHighGCDReducedDivisorTupleSet
        X (Nat.sqrt X)).card *
        (Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          exact mul_le_mul_of_nonneg_right
            (by exact_mod_cast
              mobiusLogAbsoluteHighGCDTypeIITermIndexSet_card_le hY)
            (sq_nonneg _)
    _ =
      (Real.log (((4 * X : ℕ) : ℝ)))^2 *
        (mobiusLogHighGCDReducedDivisorTupleSet
          X (Nat.sqrt X)).card := by ring

/-- On dyadic scales, `log(4X)` costs at most three copies of `log X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIICounting.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70aa7eaaad0837560046946811c547bd5fc5266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
