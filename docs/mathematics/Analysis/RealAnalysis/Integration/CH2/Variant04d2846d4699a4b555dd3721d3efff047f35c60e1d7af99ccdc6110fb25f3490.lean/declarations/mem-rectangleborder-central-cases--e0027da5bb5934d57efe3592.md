# mem_RectangleBorder_central_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f986695-f161-36bf-5b2d-7f074a468627",
  "kind": "lemma",
  "lexical_name": "mem_RectangleBorder_central_cases",
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
  "slug": "mem-rectangleborder-central-cases--e0027da5bb5934d57efe3592",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2410,
    "line": 2358,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0027da5bb5934d57efe3592a4992421ac312faa8819ad619dbf25569b50faf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f986695-f161-36bf-5b2d-7f074a468627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2358–2410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_RectangleBorder_central_cases (l : LadderParams) (n : ℕ) (hn : 1 ≤ n) {z : ℂ}
    (hz : z ∈ RectangleBorder ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)) :
    z ∈ l.admissible_contour ∨ (starRingEnd ℂ z) ∈ l.admissible_contour ∨ z ∈ l.L := by
  have h_sigma_le : l.σ n ≤ 1 := l.hσ n
  have h_negδ_le_δ : -l.δ ≤ l.δ := by
    simpa only [neg_le_self_iff] using l.hδ.1.le
  have hδ_le_T : l.δ ≤ l.T := by
    linarith [l.hδ.2, l.hT]
  simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
    Complex.sub_re, Complex.add_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, Complex.one_re, Complex.one_im, mul_zero, add_zero, zero_add,
    sub_zero, zero_sub, mul_one, Complex.sub_im, Complex.add_im, Complex.mul_im,
    Set.uIcc_of_le h_sigma_le, Set.uIcc_of_le h_negδ_le_δ] at hz
  rcases hz with (((⟨hz_re, hz_im⟩ | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩)
  · right
    left
    rw [LadderParams.admissible_contour, Set.mem_setOf_eq]
    left
    constructor
    · rw [starRingEnd_apply, star_def, Complex.conj_re]
      exact hz_re.2
    · rw [starRingEnd_apply, star_def, Complex.conj_im, hz_im]
      simp
  · right
    right
    rw [LadderParams.L, Set.mem_setOf_eq]
    have abs_zim_le : |z.im| ≤ l.T := (abs_le.mpr ⟨hz_im.1, hz_im.2⟩).trans hδ_le_T
    exact ⟨n, hn, hz_re, abs_zim_le⟩
  · left
    rw [LadderParams.admissible_contour, Set.mem_setOf_eq]
    left
    exact ⟨hz_re.2, hz_im⟩
  · by_cases hz_im_nonneg : 0 ≤ z.im
    · left
      rw [LadderParams.admissible_contour, Set.mem_setOf_eq]
      right
      constructor
      · exact hz_re
      · rw [Set.mem_Icc]
        exact ⟨hz_im_nonneg, hz_im.2⟩
    · right
      left
      rw [LadderParams.admissible_contour, Set.mem_setOf_eq]
      right
      have hz_im_neg : z.im < 0 := lt_of_not_ge hz_im_nonneg
      constructor
      · rw [starRingEnd_apply, star_def, Complex.conj_re]
        exact hz_re
      · rw [starRingEnd_apply, star_def, Complex.conj_im, Set.mem_Icc]
        constructor
        · linarith
        · linarith [hz_im.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L2358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
