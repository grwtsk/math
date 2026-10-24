# ae_volume_of_contains_compl_singleton_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2008054e6b8af5b168fb99127ec62f60499cf86d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bdbefdcf0b7cc6f8812e8eaff83ee1faf48e760011945dd1db85ae9b91bc8b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a2c8aa6-84dd-1c8b-1982-1049dac5ee8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:856a9077-de91-527a-14f2-5da21cbf530b",
  "kind": "theorem",
  "lexical_name": "ae_volume_of_contains_compl_singleton_zero",
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
  "slug": "ae-volume-of-contains-compl-singleton-zero--6d1a6a1a9316b4e5e36bd15e",
  "source": {
    "blob": "2008054e6b8af5b168fb99127ec62f60499cf86d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1218,
    "line": 1195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant8bdbefdcf0b7cc6f8812e8eaff83ee1faf48e760011945dd1db85ae9b91bc8b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d1a6a1a9316b4e5e36bd15e161f0a81a4f0ce8a974a86aeac92929912f8189b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant8bdbefdcf0b7cc6f8812e8eaff83ee1faf48e760011945dd1db85ae9b91bc8b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856a9077-de91-527a-14f2-5da21cbf530b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1195–1218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_volume_of_contains_compl_singleton_zero
  (s : Set ℝ)
  (h : (univ : Set ℝ) \ {0} ⊆ s) :
  s ∈ (MeasureTheory.ae volume) := by
  -- The key insight is that {0} has measure zero in ℝ
  have h_zero_null : volume ({0} : Set ℝ) = 0 := by
    exact volume_singleton
  -- Since s contains univ \ {0} = ℝ \ {0}, its complement is contained in {0}
  have h_compl_subset : sᶜ ⊆ {0} := by
    intro x hx
    -- If x is not in s, then x is not in ℝ \ {0} (since ℝ \ {0} is a subset of s)
    -- This means x = 0
    by_contra h_not_zero
    have : x ∈ univ \ {0} := ⟨trivial, h_not_zero⟩
    exact hx (h this)
  -- Therefore, volume(sᶜ) ≤ volume({0}) = 0
  have h_compl_measure : volume sᶜ ≤ volume ({0} : Set ℝ) :=
    measure_mono h_compl_subset
  -- So volume(sᶜ) = 0
  have h_compl_zero : volume sᶜ = 0 := by
    rw [h_zero_null] at h_compl_measure
    exact le_antisymm h_compl_measure (by positivity)
  -- A set is in ae.sets iff its complement has measure zero
  rwa [mem_ae_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant8bdbefdcf0b7cc6f8812e8eaff83ee1faf48e760011945dd1db85ae9b91bc8b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant8bdbefdcf0b7cc6f8812e8eaff83ee1faf48e760011945dd1db85ae9b91bc8b1.lean#L1195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2008054e6b8af5b168fb99127ec62f60499cf86d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
