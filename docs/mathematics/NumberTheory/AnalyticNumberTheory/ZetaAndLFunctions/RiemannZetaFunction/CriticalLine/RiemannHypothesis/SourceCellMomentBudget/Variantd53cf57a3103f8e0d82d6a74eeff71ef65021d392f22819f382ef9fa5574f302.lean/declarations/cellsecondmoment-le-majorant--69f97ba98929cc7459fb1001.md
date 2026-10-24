# cellSecondMoment_le_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c94f54a8-ef1e-51e9-c816-17c0692930ae",
  "kind": "theorem",
  "lexical_name": "cellSecondMoment_le_majorant",
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
  "slug": "cellsecondmoment-le-majorant--69f97ba98929cc7459fb1001",
  "source": {
    "blob": "65e18f1d491c96715ad5b59315239f5d495fb15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f97ba98929cc7459fb10014dcbc52ef4e5989f83a21990095040b79ec69628",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c94f54a8-ef1e-51e9-c816-17c0692930ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellSecondMoment_le_majorant {n : ℕ} (hn : 1 ≤ n) :
    cellSecondMoment n ≤
      ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply intervalIntegral.integral_mono_on (by linarith)
    (cellSecondMoment_integrand_intervalIntegrable hn)
    (secondMomentMajorant_intervalIntegrable hn0 (by linarith))
  intro x hx
  have hx0 : 0 < x := hn0.trans_le hx.1
  have hd0 : 0 ≤ Real.log x - Real.log n :=
    sub_nonneg.mpr (Real.log_le_log hn0 hx.1)
  have hd := log_cell_increment_le hn hx
  have hsq : (Real.log x - Real.log n) ^ 2 ≤ (2 / x) ^ 2 :=
    (sq_le_sq₀ hd0 (by positivity)).2 hd
  have hp : x ^ (5 / 2 : ℝ) = x ^ 2 * Real.sqrt x := by
    rw [show (5 / 2 : ℝ) = (2 : ℝ) + 1 / 2 by ring,
      Real.rpow_add hx0, Real.rpow_two, ← Real.sqrt_eq_rpow]
  calc
    _ ≤ (2 / x) ^ 2 / Real.sqrt x :=
      div_le_div_of_nonneg_right hsq (Real.sqrt_nonneg x)
    _ = secondMomentMajorant x := by
      unfold secondMomentMajorant
      rw [hp]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e18f1d491c96715ad5b59315239f5d495fb15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
