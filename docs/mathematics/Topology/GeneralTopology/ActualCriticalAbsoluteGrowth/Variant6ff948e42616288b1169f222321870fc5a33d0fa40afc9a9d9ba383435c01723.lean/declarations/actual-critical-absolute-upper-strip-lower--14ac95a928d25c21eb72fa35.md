# actual_critical_absolute_upper_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61cc5b70-6573-efe3-6710-daed7dab1bf2",
  "kind": "theorem",
  "lexical_name": "actual_critical_absolute_upper_strip_lower",
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
  "slug": "actual-critical-absolute-upper-strip-lower--14ac95a928d25c21eb72fa35",
  "source": {
    "blob": "8b34e870707a406e0c41c798cd6dc2f8a492f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ac95a928d25c21eb72fa35b2e9d3cbf9a77b581935964b16f337f7d765ae7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61cc5b70-6573-efe3-6710-daed7dab1bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_absolute_upper_strip_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in (2 * A - 1)..2 * A, |baselineLogKernel A t| := by
  apply (actual_critical_baseline_upper_strip_lower A hA).trans
  have hc : Continuous (baselineLogKernel A) := by
    unfold baselineLogKernel criticalWeight
    have hq := sourceCorrelation_contDiff A (by linarith : 0 < A)
    exact (Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      ((hq.continuous.div_const 2).sub hq.continuous_deriv_one)
  exact intervalIntegral.integral_mono (by linarith)
    (hc.intervalIntegrable _ _) (hc.abs.intervalIntegrable _ _)
    (fun t => le_abs_self (baselineLogKernel A t))

/-- The full actual positive-axis absolute critical budget has the same growing lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b34e870707a406e0c41c798cd6dc2f8a492f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
