# exists_triplet_summing_to_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09110b55-0dbf-09dd-0dac-4c6bd03efee6",
  "kind": "theorem",
  "lexical_name": "exists_triplet_summing_to_squares",
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
  "slug": "exists-triplet-summing-to-squares--75b7e7b35743488ba7a8f229",
  "source": {
    "blob": "8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75b7e7b35743488ba7a8f229c9442b02db7be034e0abc6fa68e7c13faf6c2e3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09110b55-0dbf-09dd-0dac-4c6bd03efee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_triplet_summing_to_squares (n : ℕ) (hn : 100 ≤ n) :
    ∃ a b c : ℕ, n ≤ a ∧ a < b ∧ b < c ∧ c ≤ 2 * n ∧
      (∃ k : ℕ, a + b = k ^ 2) ∧ (∃ l : ℕ, c + a = l ^ 2) ∧ ∃ m : ℕ, b + c = m ^ 2 := by
  obtain ⟨l, hl1, hl2⟩ := exists_numbers_in_interval n hn
  have p : 1 < l := by contrapose! hl1; interval_cases l <;> linarith
  have h₁ : 4 * l ≤ 2 * l ^ 2 := by linarith
  have h₂ : 1 ≤ 2 * l := by linarith
  refine' ⟨2 * l ^ 2 - 4 * l, 2 * l ^ 2 + 1, 2 * l ^ 2 + 4 * l, _, _, _,
    ⟨_, ⟨2 * l - 1, _⟩, ⟨2 * l, _⟩, 2 * l + 1, _⟩⟩
  all_goals zify [h₁, h₂]; linarith
#align imo2021_q1.exists_triplet_summing_to_squares Imo2021Q1.exists_triplet_summing_to_squares

-- Since it will be more convenient to work with sets later on, we will translate the above claim
-- to state that there always exists a set B ⊆ [n, 2n] of cardinality at least 3, such that each
-- pair of pairwise unequal elements of B sums to a perfect square.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variant70f49a8fb1e1560518947c5a43cde7100629730f34f3d1b3b0394861fd781c62.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8acd5c4ba39b70c2d7974fe2edd9aad94c5cd6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
