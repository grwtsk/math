# MeasureTheory.volume_sum_rpow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65346291-dfe7-4b71-76af-1d06aa13eca7",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.volume_sum_rpow_le",
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
  "slug": "measuretheory-volume-sum-rpow-le--3fbf72f5815476a0f4b40fc4",
  "source": {
    "blob": "b4cd6cee17c8bd8652ef6121aeb029670ee9627a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 228,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbf72f5815476a0f4b40fc49269c449cc3781aa57ed5057d2ecdb9c482b3667",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65346291-dfe7-4b71-76af-1d06aa13eca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.volume_sum_rpow_le [Nonempty ι] {p : ℝ} (hp : 1 ≤ p) (r : ℝ) :
    volume {x : ι → ℝ | (∑ i, |x i| ^ p) ^ (1 / p) ≤ r} = (.ofReal r) ^ card ι *
      .ofReal ((2 * Gamma (1 / p + 1)) ^ card ι / Gamma (card ι / p + 1)) := by
  have h₁ : 0 < p := by linarith
  -- We collect facts about `Lp` norms that will be used in `measure_le_one_eq_lt_one`
  have eq_norm := fun x : ι → ℝ => (PiLp.norm_eq_sum (p := .ofReal p) (f := x)
    ((toReal_ofReal (le_of_lt h₁)).symm ▸ h₁))
  simp_rw [toReal_ofReal (le_of_lt h₁), Real.norm_eq_abs] at eq_norm
  have : Fact (1 ≤ ENNReal.ofReal p) := fact_iff.mpr (ofReal_one ▸ (ofReal_le_ofReal hp))
  have nm_zero := norm_zero (E := PiLp (.ofReal p) (fun _ : ι => ℝ))
  have eq_zero := fun x : ι → ℝ => norm_eq_zero (E := PiLp (.ofReal p) (fun _ : ι => ℝ)) (a := x)
  have nm_neg := fun x : ι → ℝ => norm_neg (E := PiLp (.ofReal p) (fun _ : ι => ℝ)) x
  have nm_add := fun x y : ι → ℝ => norm_add_le (E := PiLp (.ofReal p) (fun _ : ι => ℝ)) x y
  simp_rw [eq_norm] at eq_zero nm_zero nm_neg nm_add
  have nm_smul := fun (r : ℝ) (x : ι → ℝ) =>
    norm_smul_le (β := PiLp (.ofReal p) (fun _ : ι => ℝ)) r x
  simp_rw [eq_norm, norm_eq_abs] at nm_smul
  rw [measure_le_eq_lt _ nm_zero (fun x ↦ nm_neg x) (fun x y ↦ nm_add x y) (eq_zero _).mp
    (fun r x => nm_smul r x), volume_sum_rpow_lt _ hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4848684318c64a2bbc79cf531f16eaa9e4f379c9550bda61a5eaf76c414c3a7a.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4cd6cee17c8bd8652ef6121aeb029670ee9627a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
