# upperRectangle_poles_subset_R_minus_RC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:980c4a12-6062-a410-f8cd-b2758152a68b",
  "kind": "lemma",
  "lexical_name": "upperRectangle_poles_subset_R_minus_RC",
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
  "slug": "upperrectangle-poles-subset-r-minus-rc--2d69ce79bedf57cd4ae06a5d",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1080,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d69ce79bedf57cd4ae06a5d5b5d909b9116f8406be919a898829d12fd408ac5",
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

Occurrence: `result:980c4a12-6062-a410-f8cd-b2758152a68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma upperRectangle_poles_subset_R_minus_RC (l : LadderParams) (n : ℕ) {P : Set ℂ}
    (h_no_poles_boundary : Disjoint (RectangleBorder ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I)) P) :
    Rectangle ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I) ∩ P ⊆ (l.R \ l.RC) ∩ P := by
  rintro z ⟨hz_rect, hz_pole⟩
  have hz_not_boundary : z ∉ RectangleBorder ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I) :=
    fun h_bound => Set.disjoint_left.mp h_no_poles_boundary h_bound hz_pole
  have hz_R : z ∈ l.R :=
    (Set.Subset.trans (l.upperRectangle_subset_Rpos n) l.Rpos_subset_R) hz_rect
  have hδ_le_T : l.δ ≤ l.T := by linarith [l.hδ.2, l.hT]
  obtain ⟨hz_re_left, hz_re_right, hz_im_low, hz_im_high⟩ :=
    (mem_Rect (by simpa using l.hσ n) (by simpa using hδ_le_T) z).mp hz_rect
  have hz_im_gt_delta : l.δ < z.im := by
    refine lt_of_le_of_ne (by simpa using hz_im_low) ?_
    intro heq
    apply hz_not_boundary
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff]
    refine Or.inl (Or.inl (Or.inl ?_))
    have hz_re_bounds : z.re ∈ Set.uIcc ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I).re (1 + (l.T : ℂ) * Complex.I).re := by
      rw [Set.uIcc_of_le (by simpa using l.hσ n), Set.mem_Icc]
      exact ⟨by simpa using hz_re_left, by simpa using hz_re_right⟩
    have hz_im_eq : z.im = ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I).im := by simpa using heq.symm
    exact ⟨hz_re_bounds, hz_im_eq⟩
  have hz_not_RC : z ∉ l.RC :=
    fun h_RC => by linarith [(le_abs_self z.im).trans h_RC.2, hz_im_gt_delta]
  exact ⟨⟨hz_R, hz_not_RC⟩, hz_pole⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
