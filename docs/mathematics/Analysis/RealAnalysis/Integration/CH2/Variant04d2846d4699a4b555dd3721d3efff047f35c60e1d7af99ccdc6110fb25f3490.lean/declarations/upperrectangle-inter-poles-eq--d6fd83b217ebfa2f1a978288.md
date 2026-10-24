# upperRectangle_inter_poles_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba5dc393-fbec-7440-7bd8-887a7ab07465",
  "kind": "lemma",
  "lexical_name": "upperRectangle_inter_poles_eq",
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
  "slug": "upperrectangle-inter-poles-eq--d6fd83b217ebfa2f1a978288",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1154,
    "line": 1129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6fd83b217ebfa2f1a9782883091856e6f72d3032a4cfc34fc5e16c6e9237be2",
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

Occurrence: `result:ba5dc393-fbec-7440-7bd8-887a7ab07465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1129–1154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma upperRectangle_inter_poles_eq (l : LadderParams) (n : ℕ) {P : Set ℂ}
    (h_no_poles_boundary : Disjoint (RectangleBorder ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I)) P) :
    Rectangle ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I) ∩ P =
    (l.Rpos ∩ {z | l.σ n < z.re}) ∩ P := by
  ext s
  have hδ_le_T : l.δ ≤ l.T := by linarith [l.hδ.2, l.hT]
  constructor
  · rintro ⟨hs_rect, hs_pole⟩
    have hs_Rpos : s ∈ l.Rpos := l.upperRectangle_subset_Rpos n hs_rect
    have hs_not_boundary :
        s ∉ RectangleBorder ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I) :=
      fun hs_boundary => (Set.disjoint_left.mp h_no_poles_boundary) hs_boundary hs_pole
    have hs_re_lt : l.σ n < s.re := by
      simpa using
        rectangle_left_re_lt_of_mem_of_not_mem_border hs_rect hs_not_boundary
          (by simpa using l.hσ n) (by simpa using hδ_le_T)
    exact ⟨⟨hs_Rpos, hs_re_lt⟩, hs_pole⟩
  · rintro ⟨⟨hs_Rpos, hs_re_lt⟩, hs_pole⟩
    have hs_rect : s ∈ Rectangle ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I) (1 + (l.T : ℂ) * Complex.I) := by
      have hs_re_right' : s.re ≤ (1 + (l.T : ℂ) * Complex.I).re := by simpa using hs_Rpos.1
      have hs_im_low' : ((l.σ n : ℂ) + (l.δ : ℂ) * Complex.I).im ≤ s.im := by simpa using hs_Rpos.2.1
      have hs_im_high' : s.im ≤ (1 + (l.T : ℂ) * Complex.I).im := by simpa using hs_Rpos.2.2
      rw [mem_Rect (by simpa using l.hσ n) (by simpa using hδ_le_T)]
      exact ⟨by simpa using le_of_lt hs_re_lt, hs_re_right', hs_im_low', hs_im_high'⟩
    exact ⟨hs_rect, hs_pole⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
