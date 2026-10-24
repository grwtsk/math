# AffineIndependent.vectorSpan_image_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c111c606-2083-9eaf-73de-aa72e27da1d5",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.vectorSpan_image_eq_iff",
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
  "slug": "affineindependent-vectorspan-image-eq-iff--46a43a370f1f144cda25f975",
  "source": {
    "blob": "cbdbc0e00222ec1efb7a6f5a9996548a64749fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 595,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a43a370f1f144cda25f975cdcdd1a6f7b4365bbbe3b339d7afc96a102fe75b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c111c606-2083-9eaf-73de-aa72e27da1d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.vectorSpan_image_eq_iff [Nontrivial k] {p : ι → P}
    (ha : AffineIndependent k p) {s₁ s₂ : Set ι} :
    vectorSpan k (p '' s₁) = vectorSpan k (p '' s₂) ↔
      s₁ = s₂ ∨ s₁.Subsingleton ∧ s₂.Subsingleton := by
  constructor
  · intro h
    by_cases he : s₁ = s₂
    · simp [he]
    simp only [he, false_or]
    by_cases h₁ : s₁.Subsingleton
    · rw [vectorSpan_of_subsingleton _ (h₁.image _), eq_comm, vectorSpan_eq_bot_iff_subsingleton]
        at h
      exact ⟨h₁, Set.subsingleton_of_image ha.injective s₂ h⟩
    by_cases h₂ : s₂.Subsingleton
    · rw [vectorSpan_of_subsingleton _ (h₂.image _), vectorSpan_eq_bot_iff_subsingleton]
        at h
      exact ⟨Set.subsingleton_of_image ha.injective s₁ h, h₂⟩
    simp only [h₁, h₂, false_and]
    have hi : (∃ i ∈ s₁, i ∉ s₂) ∨ ∃ i ∈ s₂, i ∉ s₁ := by grind
    rcases hi with ⟨i, his₁, his₂⟩ | ⟨i, his₂, his₁⟩
    · exact ha.vectorSpan_image_ne_of_mem_of_notMem_of_not_subsingleton his₁ his₂ h₁ h
    · exact ha.vectorSpan_image_ne_of_mem_of_notMem_of_not_subsingleton his₂ his₁ h₂ h.symm
  · intro h
    rcases h with rfl | ⟨h₁, h₂⟩
    · rfl
    · simp [h₁.image p, h₂.image p, vectorSpan_of_subsingleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbdbc0e00222ec1efb7a6f5a9996548a64749fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
