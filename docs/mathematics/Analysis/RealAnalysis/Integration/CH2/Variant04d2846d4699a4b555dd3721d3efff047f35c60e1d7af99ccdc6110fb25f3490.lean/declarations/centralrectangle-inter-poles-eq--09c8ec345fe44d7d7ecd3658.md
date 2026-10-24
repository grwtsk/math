# centralRectangle_inter_poles_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12951924-d0aa-c7e2-a513-4478ea351365",
  "kind": "lemma",
  "lexical_name": "centralRectangle_inter_poles_eq",
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
  "slug": "centralrectangle-inter-poles-eq--09c8ec345fe44d7d7ecd3658",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2514,
    "line": 2488,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c8ec345fe44d7d7ecd3658984cfb30025f908082a86f6bbfb3c2b75e603340",
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

Occurrence: `result:12951924-d0aa-c7e2-a513-4478ea351365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2488–2514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma centralRectangle_inter_poles_eq (l : LadderParams) (n : ℕ) {P : Set ℂ}
    (h_no_poles_boundary : Disjoint
      (RectangleBorder ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)) P) :
    Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) ∩ P =
      (l.RC ∩ {z | l.σ n < z.re}) ∩ P := by
  ext z
  have hnegδ_le_δ : -l.δ ≤ l.δ := by
    simpa only [neg_le_self_iff] using l.hδ.1.le
  constructor
  · rintro ⟨hz_rect, hz_pole⟩
    have hz_not_boundary :
        z ∉ RectangleBorder ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) :=
      fun h => Set.disjoint_left.mp h_no_poles_boundary h hz_pole
    have hz_re_gt_sigma : l.σ n < z.re := by
      simpa using
        rectangle_left_re_lt_of_mem_of_not_mem_border hz_rect hz_not_boundary
          (by simpa using l.hσ n) (by simpa using hnegδ_le_δ)
    exact ⟨⟨centralRectangle_subset_RC l n hz_rect, hz_re_gt_sigma⟩, hz_pole⟩
  · rintro ⟨⟨hz_RC, hz_re_gt⟩, hz_pole⟩
    have hz_im_bounds := abs_le.mp hz_RC.2
    have hz_rect :
        z ∈ Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) := by
      rw [mem_Rect (by simpa using l.hσ n) (by simpa using hnegδ_le_δ)]
      exact ⟨by simpa using le_of_lt hz_re_gt, by simpa using hz_RC.1,
        by simpa using hz_im_bounds.1, by simpa using hz_im_bounds.2⟩
    exact ⟨hz_rect, hz_pole⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L2488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
