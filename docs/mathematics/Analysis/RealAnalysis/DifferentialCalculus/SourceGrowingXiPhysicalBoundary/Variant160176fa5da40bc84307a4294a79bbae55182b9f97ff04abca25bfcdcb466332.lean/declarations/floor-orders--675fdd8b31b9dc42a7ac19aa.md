# floor_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987cad40-f03a-3349-7a1f-e69a8bcdb9d7",
  "kind": "theorem",
  "lexical_name": "floor_orders",
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
  "slug": "floor-orders--675fdd8b31b9dc42a7ac19aa",
  "source": {
    "blob": "6ca11422004661e05c87820c37d8fb400af5e5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Variant160176fa5da40bc84307a4294a79bbae55182b9f97ff04abca25bfcdcb466332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675fdd8b31b9dc42a7ac19aa5b08f75fd75b0704f5998e20b6158171cd51fa7b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Variant160176fa5da40bc84307a4294a79bbae55182b9f97ff04abca25bfcdcb466332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987cad40-f03a-3349-7a1f-e69a8bcdb9d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem floor_orders {A : ℝ} (hA : 91 ≤ A) :
    (7 : ℝ) ≤ (⌊A ^ 2⌋₊ : ℝ) ∧ (⌊A ^ 2⌋₊ : ℝ) ≤ Real.exp (2 * A) := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A ^ 2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A ^ 2)
  have hlog := Real.log_le_sub_one_of_pos hp
  have he : A ^ 2 ≤ Real.exp (2 * A) := by
    rw [← Real.exp_log (sq_pos_of_pos hp), Real.log_pow]
    exact Real.exp_le_exp.mpr (by norm_num only [Nat.cast_ofNat]; linarith)
  exact ⟨by exact_mod_cast hU, (Nat.floor_le (sq_nonneg A)).trans he⟩

/-- The physical head and primitive head differ by this exact invariant trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Variant160176fa5da40bc84307a4294a79bbae55182b9f97ff04abca25bfcdcb466332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Variant160176fa5da40bc84307a4294a79bbae55182b9f97ff04abca25bfcdcb466332.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ca11422004661e05c87820c37d8fb400af5e5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
