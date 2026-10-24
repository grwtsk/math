# norm_tent_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2e34eef-d6c9-4da8-66a8-b8f813405837",
  "kind": "theorem",
  "lexical_name": "norm_tent_sub_le",
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
  "slug": "norm-tent-sub-le--7dcc875d9fdda0edefee498c",
  "source": {
    "blob": "edba02e1a6c72fe2264645d0cac886ea56a5bf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 90,
    "path": "GRWTSK/Analysis/Complex/TentKernelSensitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dcc875d9fdda0edefee498c2b91245f5876d2ea90026f6790153fb734b1fdd6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2e34eef-d6c9-4da8-66a8-b8f813405837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tent_sub_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    {z w : ℂ} (hz : z.re ≤ 1) (hw : w.re ≤ 1) :
    ‖tentKernel x h z - tentKernel x h w‖ ≤
      (h * Real.log (x + h)) * ‖z - w‖ := by
  have hL := affine_parameter_error (c := x - h) (d := x) (b := x + h)
    (α := 1 / h) (β := -(x - h) / h) ha (by linarith) (by linarith) hz hw
    (fun t ht => by
      have hp : 0 ≤ (t - (x - h)) / h := div_nonneg (by linarith [ht.1]) hh.le
      convert hp using 1
      ring)
  have hR := affine_parameter_error (c := x) (d := x + h) (b := x + h)
    (α := -1 / h) (β := (x + h) / h) (by linarith) (by linarith) le_rfl hz hw
    (fun t ht => by
      have hp : 0 ≤ (x + h - t) / h := div_nonneg (by linarith [ht.2]) hh.le
      convert hp using 1
      ring)
  have hmL : affineMass (1 / h) (-(x - h) / h) (x - h) x = h / 2 := by
    unfold affineMass
    field_simp [ne_of_gt hh]
    ring
  have hmR : affineMass (-1 / h) ((x + h) / h) x (x + h) = h / 2 := by
    unfold affineMass
    field_simp [ne_of_gt hh]
    ring
  rw [hmL] at hL
  rw [hmR] at hR
  rw [tentKernel_eq_affine x h hh ha z, tentKernel_eq_affine x h hh ha w]
  have htri := (norm_add_le
    ((∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density z t) -
      (∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density w t))
    ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
      (∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density w t))).trans
      (add_le_add hL hR)
  calc
    _ = ‖((∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density z t) -
        (∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density w t)) +
      ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
        (∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density w t))‖ := by congr 1; abel
    _ ≤ _ := htri
    _ = _ := by ring

/-- Included coordinates only: both indices and the natural weights are unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelSensitivity.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edba02e1a6c72fe2264645d0cac886ea56a5bf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
