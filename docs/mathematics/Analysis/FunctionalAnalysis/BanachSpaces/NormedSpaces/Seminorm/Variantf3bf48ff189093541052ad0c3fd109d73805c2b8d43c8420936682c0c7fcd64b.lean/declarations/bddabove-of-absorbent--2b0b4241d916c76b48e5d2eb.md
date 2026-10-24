# bddAbove_of_absorbent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c246ce3cf065b4bd87737f96aed7df768aa27fd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d72ce6dc-edaa-29ff-67fb-8403a8478dea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:615cf3df-33f1-9631-0f1b-479f6161cdd3",
  "kind": "lemma",
  "lexical_name": "bddAbove_of_absorbent",
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
  "slug": "bddabove-of-absorbent--2b0b4241d916c76b48e5d2eb",
  "source": {
    "blob": "c246ce3cf065b4bd87737f96aed7df768aa27fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1393,
    "line": 1366,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b0b4241d916c76b48e5d2eb9785fd8d48e7c07ff7fb8bd81085d6e1efca45b4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615cf3df-33f1-9631-0f1b-479f6161cdd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1366–1393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bddAbove_of_absorbent {p : ι → Seminorm 𝕜 E} {s : Set E} (hs : Absorbent 𝕜 s)
    (h : ∀ x ∈ s, BddAbove (range fun i ↦ p i x)) :
    BddAbove (range p) := by
  rw [Seminorm.bddAbove_range_iff]
  intro x
  rcases hs x with ⟨r, hr, hrx⟩
  rcases exists_lt_norm 𝕜 r with ⟨k, hk⟩
  have hk0 : k ≠ 0 := norm_pos_iff.mp (hr.trans hk)
  have : k⁻¹ • x ∈ s := by
    rw [← mem_smul_set_iff_inv_smul_mem₀ hk0]
    exact hrx k hk.le
  rcases h (k⁻¹ • x) this with ⟨M, hM⟩
  refine ⟨‖k‖ * M, forall_range_iff.mpr fun i ↦ ?_⟩
  have := (forall_range_iff.mp hM) i
  rwa [map_smul_eq_mul, norm_inv, inv_mul_le_iff (hr.trans hk)] at this

end NontriviallyNormedField

end Seminorm

/-! ### The norm as a seminorm -/


section normSeminorm

variable (𝕜) (E) [NormedField 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E] {r : ℝ}

/-- The norm of a seminormed group as a seminorm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean#L1366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c246ce3cf065b4bd87737f96aed7df768aa27fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
