# shellGrowth_fmodif_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dc99d1b-d2fa-fd55-3aa6-dedd7a51b92c",
  "kind": "lemma",
  "lexical_name": "shellGrowth_fmodif_nonneg",
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
  "slug": "shellgrowth-fmodif-nonneg--493d81d5e399b2806cfdb9dc",
  "source": {
    "blob": "308d83957645250eeb49c1c0ac619c0bee0dd4eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:493d81d5e399b2806cfdb9dccf57b0aaf3e6697d1371aba551f85ae5bc8740fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dc99d1b-d2fa-fd55-3aa6-dedd7a51b92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_fmodif_nonneg {t : ℝ} (ht : 0 < t) :
    0 ≤ ((hurwitzEvenFEPair 0).f_modif t).re := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  rcases lt_trichotomy t 1 with h | rfl | h
  · have h₁ : ¬t ∈ Ioi (1 : ℝ) := by simpa using h.le
    have h₂ : t ∈ Ioo (0 : ℝ) 1 := ⟨ht, h⟩
    simp only [indicator_of_notMem h₁, indicator_of_mem h₂, zero_add]
    simp only [hurwitzEvenFEPair, Function.comp_apply, if_true, smul_eq_mul,
      one_mul, mul_one, Complex.sub_re, Complex.ofReal_re]
    have hi := shellGrowth_evenKernel_one_le (one_div_pos.mpr ht)
    rw [evenKernel_eq_cosKernel_of_zero] at hi
    rw [evenKernel_functional_equation]
    rw [Real.rpow_neg ht.le]
    exact sub_nonneg.mpr (by simpa [one_div] using
      mul_le_mul_of_nonneg_left hi (show 0 ≤ (t ^ (1 / 2 : ℝ))⁻¹ by positivity))
  · simp [hurwitzEvenFEPair]
  · simp only [indicator_of_mem (show t ∈ Ioi (1 : ℝ) from h),
      indicator_of_notMem (notMem_Ioo_of_ge h.le), add_zero]
    simpa [hurwitzEvenFEPair] using shellGrowth_evenKernel_one_le ht

open MeasureTheory
noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308d83957645250eeb49c1c0ac619c0bee0dd4eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
