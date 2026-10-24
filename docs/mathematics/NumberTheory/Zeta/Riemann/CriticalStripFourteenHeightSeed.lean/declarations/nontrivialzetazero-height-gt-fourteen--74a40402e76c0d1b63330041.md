# nontrivialZetaZero_height_gt_fourteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:642be5da-76f6-fa01-6340-3b5ada7e2b63",
  "kind": "theorem",
  "lexical_name": "nontrivialZetaZero_height_gt_fourteen",
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
  "slug": "nontrivialzetazero-height-gt-fourteen--74a40402e76c0d1b63330041",
  "source": {
    "blob": "5e8ab59ef5c235768e3045af4e123eab73225858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74a40402e76c0d1b63330041fdf7ce38f6e1bc090c06f54f14b6d29fec6a7ec2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:642be5da-76f6-fa01-6340-3b5ada7e2b63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivialZetaZero_height_gt_fourteen {z : ℂ} (hz : NontrivialZetaZero z) :
    (14 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hn
  have hh : |z.im| ≤ (14 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hn
  have hlo : (13 : ℝ) < |z.im| := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using
      CutoffTwo.nontrivialZetaZero_height_gt_thirteen hz
  have upper_excluded {w : ℂ} (hw : NontrivialZetaZero w)
      (hl : (13 : ℝ) ≤ w.im) (hu : w.im ≤ 14) : False := by
    by_cases hr : (1 / 2 : ℝ) ≤ w.re
    · exact poleNormalized_nonzero_fourteenBand ⟨hr, hw.mem_critical_strip.2.le, hl, hu⟩
        (poleNormalizedZeta_zero_of_target hw)
    · have hm := hw.critical_reflection
      have hx : (1 / 2 : ℝ) ≤ (criticalReflection w).re := by
        simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
        have h := lt_of_not_ge hr
        linarith
      have him : (criticalReflection w).im = w.im := by simp [criticalReflection]
      exact poleNormalized_nonzero_fourteenBand
        ⟨hx, hm.mem_critical_strip.2.le, by simpa [him] using hl, by simpa [him] using hu⟩
        (poleNormalizedZeta_zero_of_target hm)
  by_cases hi : 0 ≤ z.im
  · rw [abs_of_nonneg hi] at hh hlo
    exact upper_excluded hz hlo.le hh
  · have hi' : z.im < 0 := lt_of_not_ge hi
    rw [abs_of_neg hi'] at hh hlo
    exact upper_excluded hz.conjugate (by simpa [zeroConjugate] using hlo.le)
      (by simpa [zeroConjugate] using hh)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourteenHeightSeed.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e8ab59ef5c235768e3045af4e123eab73225858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
