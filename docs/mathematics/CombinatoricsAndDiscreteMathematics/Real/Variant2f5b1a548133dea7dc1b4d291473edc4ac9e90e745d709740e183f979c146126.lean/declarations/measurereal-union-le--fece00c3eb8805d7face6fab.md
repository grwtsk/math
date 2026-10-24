# measureReal_union_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "548f04f0fe20ee867ddf4ec83bd7a5c9c82ae8c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c43d8817-cf30-3a39-0133-98de10659646",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb90af72-a19a-2b67-42fb-1fef8cd932cd",
  "kind": "theorem",
  "lexical_name": "measureReal_union_le",
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
  "slug": "measurereal-union-le--fece00c3eb8805d7face6fab",
  "source": {
    "blob": "548f04f0fe20ee867ddf4ec83bd7a5c9c82ae8c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fece00c3eb8805d7face6fab8176ce516288d462727490628e1bbfba38708fb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb90af72-a19a-2b67-42fb-1fef8cd932cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measureReal_union_le (s₁ s₂ : Set α) : μ.real (s₁ ∪ s₂) ≤ μ.real s₁ + μ.real s₂ := by
  rcases eq_top_or_lt_top (μ (s₁ ∪ s₂)) with h | h
  · simp only [Measure.real, h, ENNReal.toReal_top]
    exact add_nonneg ENNReal.toReal_nonneg ENNReal.toReal_nonneg
  · have A : μ s₁ ≠ ∞ := measure_ne_top_of_subset subset_union_left h.ne
    have B : μ s₂ ≠ ∞ := measure_ne_top_of_subset subset_union_right h.ne
    simp only [Measure.real, ← ENNReal.toReal_add A B]
    exact ENNReal.toReal_mono (by simp [A, B]) (measure_union_le _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548f04f0fe20ee867ddf4ec83bd7a5c9c82ae8c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
