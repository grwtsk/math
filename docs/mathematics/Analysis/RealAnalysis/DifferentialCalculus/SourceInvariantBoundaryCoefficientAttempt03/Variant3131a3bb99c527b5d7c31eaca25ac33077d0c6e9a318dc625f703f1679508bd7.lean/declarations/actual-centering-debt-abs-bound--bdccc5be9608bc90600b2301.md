# actual_centering_debt_abs_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a964228-163b-49b4-4645-e970933a632f",
  "kind": "theorem",
  "lexical_name": "actual_centering_debt_abs_bound",
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
  "slug": "actual-centering-debt-abs-bound--bdccc5be9608bc90600b2301",
  "source": {
    "blob": "ef50eae0655136469c08b5b5c0cb2f67370ce96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variant3131a3bb99c527b5d7c31eaca25ac33077d0c6e9a318dc625f703f1679508bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdccc5be9608bc90600b23014eae4d71603b048ea020b9d04d30b5263e9c3677",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variant3131a3bb99c527b5d7c31eaca25ac33077d0c6e9a318dc625f703f1679508bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a964228-163b-49b4-4645-e970933a632f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centering_debt_abs_bound (A c : ℝ) (hA : 91 ≤ A) :
    |c * invariantBoundaryCoefficient A - c / 2| ≤ (15 / A ^ 2) * |c| := by
  have hb := invariantBoundaryCoefficient_bounds A hA
  have h1015 : (10 : ℝ) / A ^ 2 ≤ 15 / A ^ 2 :=
    div_le_div_of_nonneg_right (by norm_num) (sq_nonneg A)
  have hgap : |invariantBoundaryCoefficient A - 1 / 2| ≤ 15 / A ^ 2 :=
    abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩
  have he : c * invariantBoundaryCoefficient A - c / 2 =
      c * (invariantBoundaryCoefficient A - 1 / 2) := by ring
  rw [he, abs_mul]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left hgap (abs_nonneg c)

end RH16InvariantBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variant3131a3bb99c527b5d7c31eaca25ac33077d0c6e9a318dc625f703f1679508bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficientAttempt03/Variant3131a3bb99c527b5d7c31eaca25ac33077d0c6e9a318dc625f703f1679508bd7.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef50eae0655136469c08b5b5c0cb2f67370ce96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
