# AffineIndependent.finrank_vectorSpan_image_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f820d0-9615-db3e-eb96-0d3330efb54f",
  "kind": "theorem",
  "lexical_name": "AffineIndependent.finrank_vectorSpan_image_finset",
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
  "slug": "affineindependent-finrank-vectorspan-image-finset--e1be4dd99daf32c156a475f7",
  "source": {
    "blob": "c910f9f8839250769cd098aac9642768f950297a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant08c50a6dcf49fd2bd34a72d06e8071cc730fee6612fef32bb75ef9b9774d4d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1be4dd99daf32c156a475f7acea5abceef2dc3b97c100cd4b8ce4b62de96a88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant08c50a6dcf49fd2bd34a72d06e8071cc730fee6612fef32bb75ef9b9774d4d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f820d0-9615-db3e-eb96-0d3330efb54f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineIndependent.finrank_vectorSpan_image_finset [DecidableEq P]
    {p : ι → P} (hi : AffineIndependent k p) {s : Finset ι} {n : ℕ} (hc : #s = n + 1) :
    finrank k (vectorSpan k (s.image p : Set P)) = n := by
  classical
  have hi' := hi.range.mono (Set.image_subset_range p ↑s)
  have hc' : #(s.image p) = n + 1 := by rwa [s.card_image_of_injective hi.injective]
  have hn : (s.image p).Nonempty := by simp [hc', ← Finset.card_pos]
  rcases hn with ⟨p₁, hp₁⟩
  have hp₁' : p₁ ∈ p '' s := by simpa using hp₁
  rw [affineIndependent_set_iff_linearIndependent_vsub k hp₁', ← Finset.coe_singleton,
    ← Finset.coe_image, ← Finset.coe_sdiff, Finset.sdiff_singleton_eq_erase, ← Finset.coe_image]
    at hi'
  have hc : #(((s.image p).erase p₁).image (· -ᵥ p₁)) = n := by
    rw [Finset.card_image_of_injective _ (vsub_left_injective _), Finset.card_erase_of_mem hp₁]
    exact Nat.pred_eq_of_eq_succ hc'
  rwa [vectorSpan_eq_span_vsub_finset_right_ne k hp₁, finrank_span_finset_eq_card, hc]

/-- The `vectorSpan` of a finite affinely independent family has
dimension one less than its cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant08c50a6dcf49fd2bd34a72d06e8071cc730fee6612fef32bb75ef9b9774d4d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant08c50a6dcf49fd2bd34a72d06e8071cc730fee6612fef32bb75ef9b9774d4d21.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c910f9f8839250769cd098aac9642768f950297a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
