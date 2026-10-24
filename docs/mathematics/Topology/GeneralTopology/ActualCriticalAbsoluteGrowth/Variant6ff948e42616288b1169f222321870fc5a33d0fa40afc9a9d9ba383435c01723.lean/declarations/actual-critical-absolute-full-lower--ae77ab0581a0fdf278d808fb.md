# actual_critical_absolute_full_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce676163-c901-cb81-1f40-5b24b60db2cf",
  "kind": "theorem",
  "lexical_name": "actual_critical_absolute_full_lower",
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
  "slug": "actual-critical-absolute-full-lower--ae77ab0581a0fdf278d808fb",
  "source": {
    "blob": "8b34e870707a406e0c41c798cd6dc2f8a492f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae77ab0581a0fdf278d808fbec6e32f32c449ffbf210b300674b7c156336479f",
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

Occurrence: `result:ce676163-c901-cb81-1f40-5b24b60db2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_absolute_full_lower (A : ℝ) (hA : 4 ≤ A) :
    Real.exp (A - 1 / 2) / (30 * A ^ 9) ≤
      ∫ t in Ioi (0 : ℝ), Real.exp (t / 2) * |criticalWeight A t| := by
  have hi := (baselineLogKernel_integrable (A := A) (by linarith : 1 ≤ A)).abs
  have he : (fun t : ℝ => |baselineLogKernel A t|) =
      fun t => Real.exp (t / 2) * |criticalWeight A t| := by
    funext t
    rw [baselineLogKernel, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hb := actual_critical_absolute_upper_strip_lower A hA
  rw [intervalIntegral.integral_of_le (by linarith : 2 * A - 1 ≤ 2 * A)] at hb
  have hsub : Ioc (2 * A - 1) (2 * A) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact mem_Ioi.mpr (by linarith [ht.1])
  have hm := setIntegral_mono_set (s := Ioc (2 * A - 1) (2 * A)) hi
    (Filter.Eventually.of_forall fun t => abs_nonneg (baselineLogKernel A t))
    (Filter.Eventually.of_forall fun t ht => hsub ht)
  rw [← he]
  exact hb.trans hm

/-- The actual absolute critical kernel budget itself is unbounded at large real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant6ff948e42616288b1169f222321870fc5a33d0fa40afc9a9d9ba383435c01723.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b34e870707a406e0c41c798cd6dc2f8a492f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
