# record_summable_iff_signed_prefixes_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e4dfab-408e-2a0e-8503-bd86d943a272",
  "kind": "theorem",
  "lexical_name": "record_summable_iff_signed_prefixes_bounded",
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
  "slug": "record-summable-iff-signed-prefixes-bounded--62d536b75237b9a47a7dc04c",
  "source": {
    "blob": "8d4878ca84797189a2864074d3ec1975c0bec775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d536b75237b9a47a7dc04cf8235672ed80505eabe5e76ad6e832b837a7e842",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e4dfab-408e-2a0e-8503-bd86d943a272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem record_summable_iff_signed_prefixes_bounded (N : ℕ) :
    Summable (primeRecordIncrement N) ↔
      ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ,
        ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ E := by
  rw [record_summable_iff_levels_bounded]
  constructor
  · rintro ⟨E, hE, hbound⟩
    exact ⟨E, hE, fun K => (actual_prefix_le_record N K).trans (hbound K)⟩
  · rintro ⟨E, hE, hbound⟩
    exact ⟨E, hE, fun K => level_le_of_all_prefixes hE hbound K⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4878ca84797189a2864074d3ec1975c0bec775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
