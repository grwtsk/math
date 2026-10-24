# exists_triplet_summing_to_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5447246f6848331cbfa401f5034f9c4bb193a819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aceb0f1a-0385-d4ac-b7c4-db52acfa2d5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22b211bf-9fcf-a2fd-e3fd-38bcecb664ba",
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
  "slug": "exists-triplet-summing-to-squares--11185b124697ab18e64df453",
  "source": {
    "blob": "5447246f6848331cbfa401f5034f9c4bb193a819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11185b124697ab18e64df453f3d26abdd909e8ca4bae3806d0b93d1d3ed0d443",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22b211bf-9fcf-a2fd-e3fd-38bcecb664ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Variante2e5048ed81976739b9294c3bf2a8d4213d6c45f58427dd0c183fd83c92e5135.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5447246f6848331cbfa401f5034f9c4bb193a819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
