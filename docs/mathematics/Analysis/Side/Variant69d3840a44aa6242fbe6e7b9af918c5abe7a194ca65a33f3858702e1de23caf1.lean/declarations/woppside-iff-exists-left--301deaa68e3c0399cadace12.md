# wOppSide_iff_exists_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6c5d959c2095dec2c61004b99d4c237a21e4c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04361fb7-4c63-bb6d-d631-3d5729d8d861",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bd9e074-b09f-c5b4-5776-5da85ca1beb3",
  "kind": "theorem",
  "lexical_name": "wOppSide_iff_exists_left",
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
  "slug": "woppside-iff-exists-left--301deaa68e3c0399cadace12",
  "source": {
    "blob": "d6c5d959c2095dec2c61004b99d4c237a21e4c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 407,
    "path": "GRWTSK/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:301deaa68e3c0399cadace12024152d52f1e79435b86faa8d427d3560c458856",
  "verification": {
    "reference": "docs/verification/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd9e074-b09f-c5b4-5776-5da85ca1beb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wOppSide_iff_exists_left {s : AffineSubspace R P} {x y p₁ : P} (h : p₁ ∈ s) :
    s.WOppSide x y ↔ x ∈ s ∨ ∃ p₂ ∈ s, SameRay R (x -ᵥ p₁) (p₂ -ᵥ y) := by
  constructor
  · rintro ⟨p₁', hp₁', p₂', hp₂', h0 | h0 | ⟨r₁, r₂, hr₁, hr₂, hr⟩⟩
    · rw [vsub_eq_zero_iff_eq] at h0
      rw [h0]
      exact Or.inl hp₁'
    · refine Or.inr ⟨p₂', hp₂', ?_⟩
      rw [h0]
      exact SameRay.zero_right _
    · refine Or.inr ⟨(-r₁ / r₂) • (p₁ -ᵥ p₁') +ᵥ p₂', s.smul_vsub_vadd_mem _ h hp₁' hp₂',
        Or.inr (Or.inr ⟨r₁, r₂, hr₁, hr₂, ?_⟩)⟩
      rw [vadd_vsub_assoc, ← vsub_sub_vsub_cancel_right x p₁ p₁']
      linear_combination (norm := match_scalars <;> field_simp) hr
      ring
  · rintro (h' | ⟨h₁, h₂, h₃⟩)
    · exact wOppSide_of_left_mem y h'
    · exact ⟨p₁, h, h₁, h₂, h₃⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Side/Variant69d3840a44aa6242fbe6e7b9af918c5abe7a194ca65a33f3858702e1de23caf1.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c5d959c2095dec2c61004b99d4c237a21e4c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
