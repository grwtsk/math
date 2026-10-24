# actual_physical_mixed_cell_log_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29492673-12b3-21cc-c2f6-dd9ec9c65e1a",
  "kind": "theorem",
  "lexical_name": "actual_physical_mixed_cell_log_transport",
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
  "slug": "actual-physical-mixed-cell-log-transport--26cfd3d7c6ab219ef9e17a28",
  "source": {
    "blob": "468219a70e5a25ff0e592cc7a38a8aee05e21184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26cfd3d7c6ab219ef9e17a286d37285f6d18d2bd28ddabb577050bd3461d443d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29492673-12b3-21cc-c2f6-dd9ec9c65e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_physical_mixed_cell_log_transport {A : ℝ} (hA : 0 < A)
    (t : ℝ) {k : ℕ} (hk : 1 ≤ k) :
    (∫ u in (k : ℝ)..((k : ℝ) + 1),
      Real.exp (t / 2) / (u * Real.sqrt u) *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4)) =
      ∫ s in Real.log (k : ℝ)..Real.log ((k : ℝ) + 1), actualLogMixedDensity A t s := by
  rw [← actual_continuous_physical_cell_log_transport hk
    (actualLogMixedDensity A t) (actualLogMixedDensity_continuous hA t)]
  apply intervalIntegral.integral_congr
  intro u hu
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [uIcc_of_le (by linarith)] at hu
  have hu0 := hk0.trans_le hu.1
  have he : Real.exp (-Real.log u / 2) = 1 / Real.sqrt u := by
    rw [show -Real.log u / 2 = -(Real.log u / 2) by ring, Real.exp_neg,
      Real.exp_half, Real.exp_log hu0, one_div]
  dsimp only [actualLogMixedDensity]
  rw [he]
  ring

/-- The actual original test derivative is the full signed logarithmic prefix integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468219a70e5a25ff0e592cc7a38a8aee05e21184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
