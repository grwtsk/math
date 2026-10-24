# exists_close_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f86df449-7ff4-8089-90ab-e55728022c99",
  "kind": "theorem",
  "lexical_name": "exists_close_center",
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
  "slug": "exists-close-center--0794bb034dc577800a71211a",
  "source": {
    "blob": "5bfda65dc0a88e25786cb6a388e3dbcb7d04e169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 192,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0794bb034dc577800a71211aea8d75bb0e894064c627349bcc93ebdc35b3acd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86df449-7ff4-8089-90ab-e55728022c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_close_center {z : ℂ} (hz : z ∈ box.carrier) :
    ∃ k : Fin 393216, ‖z - (disks k).center‖ ≤ (17 / 18432 : ℝ) := by
  have hz' : (1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧
      -(1 / 3 : ℝ) ≤ z.im ∧ z.im ≤ (1 / 3 : ℝ) := by
    simpa [box, Rectangle.carrier] using hz
  have hlo := hz'.1
  have hhi := hz'.2.1
  have hbot := hz'.2.2.1
  have htop := hz'.2.2.2
  obtain ⟨i, hi⟩ := exists_near_grid_midpoint (n := 512) (lo := (1 / 2 : ℝ))
    (step := (1 / 1024 : ℝ)) (x := z.re) (by norm_num) (by norm_num) hlo
    (by norm_num; exact hhi)
  obtain ⟨j, hj⟩ := exists_near_grid_midpoint (n := 768) (lo := -(1 / 3 : ℝ))
    (step := (1 / 1152 : ℝ)) (x := z.im) (by norm_num) (by norm_num) hbot
    (by norm_num; exact htop)
  have hx : |z.re - (rawDisk i j).center.re| ≤ (1 / 2048 : ℝ) := by
    rw [raw_center_re]
    have heq : ((i.val : ℝ) + 1 / 2) * (1 / 1024) =
        ((i.val : ℝ) + 1 / 2) / 1024 := by ring
    rw [heq] at hi
    norm_num at hi
    exact hi
  have hy : |z.im - (rawDisk i j).center.im| ≤ (1 / 2304 : ℝ) := by
    rw [raw_center_im]
    have heq : ((j.val : ℝ) + 1 / 2) * (1 / 1152) =
        ((j.val : ℝ) + 1 / 2) / 1152 := by ring
    rw [heq] at hj
    norm_num at hj
    exact hj
  refine ⟨join i j, ?_⟩
  rw [disks_join]
  calc
    ‖z - (rawDisk i j).center‖ ≤
        |(z - (rawDisk i j).center).re| + |(z - (rawDisk i j).center).im| :=
      Complex.norm_le_abs_re_add_abs_im _
    _ ≤ (1 / 2048 : ℝ) + 1 / 2304 := by
      simpa only [Complex.sub_re, Complex.sub_im] using add_le_add hx hy
    _ = 17 / 18432 := by norm_num

/-- Geometric clearance, computed from actual center spacing and radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
