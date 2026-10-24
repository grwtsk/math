# riemannZeta_real_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:508e681b-3b32-9b35-f625-26455df402ac",
  "kind": "theorem",
  "lexical_name": "riemannZeta_real_euler",
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
  "slug": "riemannzeta-real-euler--2e5df00c06748903b83af033",
  "source": {
    "blob": "12de7304f4ddd4ee36be30e7434b8a30002b33c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5df00c06748903b83af0336e01b5199f0b91ac3033dc65158f03b882cce4bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508e681b-3b32-9b35-f625-26455df402ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_real_euler {σ : ℝ} (hσ : 0 < σ) (h1 : σ ≠ 1) :
    riemannZeta (σ : ℂ) =
      ((σ / (σ - 1) - σ * ∫ u in Ioi (1 : ℝ), fractionalWeight σ u : ℝ) : ℂ) := by
  have hz := Zeta0EqZeta (N := 1) (by norm_num) (s := (σ : ℂ))
    (by simpa using hσ) (by exact_mod_cast h1)
  have he : (∫ u in Ioi (1 : ℝ),
      ((⌊u⌋ : ℂ) + 1 / 2 - u) * (u : ℂ) ^ (-((σ : ℂ) + 1))) =
      Complex.ofReal (∫ u in Ioi (1 : ℝ),
        ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) := by
    rw [← integral_complex_ofReal]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    dsimp only
    have hu0 : 0 ≤ u := (by norm_num : (0 : ℝ) < 1).le.trans hu.le
    rw [show -((σ : ℂ) + 1) = ((-σ - 1 : ℝ) : ℂ) by push_cast; ring,
      ← Complex.ofReal_cpow hu0]
    push_cast
    rfl
  rw [riemannZeta0_apply] at hz
  simp only [Nat.cast_one] at hz
  rw [he, real_centered_euler_integral hσ] at hz
  have hσc : (σ : ℂ) ≠ 0 := ofReal_ne_zero.mpr hσ.ne'
  have h1c : (1 - (σ : ℂ)) ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast Ne.symm h1)
  have hsc1 : (σ : ℂ) - 1 ≠ 0 := sub_ne_zero.mpr (by exact_mod_cast h1)
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, Nat.cast_zero,
    Nat.cast_one, Complex.zero_cpow hσc, div_zero, zero_add, one_cpow, div_one] at hz
  rw [← hz]
  push_cast
  field_simp [hσc, h1c, hsc1]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant51c342244b580d76917775a1ec09f8f4a49bfeec8882383d8a6b5a6c8f7f14b6.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12de7304f4ddd4ee36be30e7434b8a30002b33c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
