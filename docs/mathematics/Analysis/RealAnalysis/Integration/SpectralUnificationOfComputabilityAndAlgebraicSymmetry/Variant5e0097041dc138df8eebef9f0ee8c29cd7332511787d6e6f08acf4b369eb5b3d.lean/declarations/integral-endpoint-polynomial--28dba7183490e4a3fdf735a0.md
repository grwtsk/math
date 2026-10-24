# integral_endpoint_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e053c3aa-261b-44fd-0905-b491951dae7f",
  "kind": "theorem",
  "lexical_name": "integral_endpoint_polynomial",
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
  "slug": "integral-endpoint-polynomial--28dba7183490e4a3fdf735a0",
  "source": {
    "blob": "ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28dba7183490e4a3fdf735a0d5ef2deb8c57f4e31912d0e6799ce52ff9d39a7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e053c3aa-261b-44fd-0905-b491951dae7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_endpoint_polynomial (w : ℝ) :
    (∫ x in (1 - w)..(1 : ℝ), (1 - x) ^ 2 * (x - (1 - w)) ^ 2) = w ^ 5 / 30 := by
  have hf : (fun x : ℝ ↦ (1 - x) ^ 2 * (x - (1 - w)) ^ 2) =
    fun x ↦ x ^ 4 + (2 * w - 4) * x ^ 3 + (w ^ 2 - 6 * w + 6) * x ^ 2 +
      (-2 * w ^ 2 + 6 * w - 4) * x + (w ^ 2 - 2 * w + 1) := by funext x; ring
  rw [hf]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow,
      intervalIntegral.integral_const]
  rw [intervalIntegral.integral_const_mul, integral_id]
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow, smul_eq_mul]
  ring

/-- Positivity is confined to the actual half-unit endpoint strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
