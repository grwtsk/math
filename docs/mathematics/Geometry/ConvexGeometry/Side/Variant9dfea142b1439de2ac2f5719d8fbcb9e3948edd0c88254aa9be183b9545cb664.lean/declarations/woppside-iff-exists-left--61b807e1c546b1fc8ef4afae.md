# wOppSide_iff_exists_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:132fff0c-c6c1-1a16-31ae-c7a21245b62e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42476192-c8f2-4123-5631-6ff2db74af3a",
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
  "slug": "woppside-iff-exists-left--61b807e1c546b1fc8ef4afae",
  "source": {
    "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 443,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b807e1c546b1fc8ef4afaeaf180a400f97e37b443de8bb2a55939627190f1b",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42476192-c8f2-4123-5631-6ff2db74af3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–460.

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
      linear_combination (norm := match_scalars <;> field) hr
  · rintro (h' | ⟨h₁, h₂, h₃⟩)
    · exact wOppSide_of_left_mem y h'
    · exact ⟨p₁, h, h₁, h₂, h₃⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0a5224baf6893de503a4ee59332117570d4b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
