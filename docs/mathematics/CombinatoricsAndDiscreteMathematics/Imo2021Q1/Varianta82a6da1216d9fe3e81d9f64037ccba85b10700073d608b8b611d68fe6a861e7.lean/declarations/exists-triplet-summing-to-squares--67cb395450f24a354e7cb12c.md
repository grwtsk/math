# exists_triplet_summing_to_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a10b5b-98ab-e8d3-5d17-a58b17839eaf",
  "kind": "lemma",
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
  "slug": "exists-triplet-summing-to-squares--67cb395450f24a354e7cb12c",
  "source": {
    "blob": "c9022ba87ab388bf5f4af0bfa36279e75d6ca87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67cb395450f24a354e7cb12c1b3b8557db8e1d39789bc4a892cdc4a677cef051",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a10b5b-98ab-e8d3-5d17-a58b17839eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_triplet_summing_to_squares {n : ℕ} (hn : 100 ≤ n) :
    ∃ a b c : ℕ, n ≤ a ∧ a < b ∧ b < c ∧ c ≤ 2 * n ∧
      IsSquare (a + b) ∧ IsSquare (c + a) ∧ IsSquare (b + c) := by
  obtain ⟨l, hl1, hl2⟩ := exists_numbers_in_interval hn
  have hl : 1 < l := by contrapose! hl1; interval_cases l <;> linarith
  have h₁ : 4 * l ≤ 2 * l ^ 2 := by omega
  have h₂ : 1 ≤ 2 * l := by omega
  refine ⟨2 * l ^ 2 - 4 * l, 2 * l ^ 2 + 1, 2 * l ^ 2 + 4 * l, ?_, ?_, ?_,
    ⟨?_, ⟨2 * l - 1, ?_⟩, ⟨2 * l, ?_⟩, 2 * l + 1, ?_⟩⟩
  all_goals zify [h₁, h₂]; linarith

-- Since it will be more convenient to work with sets later on, we will translate the above claim
-- to state that there always exists a set B ⊆ [n, 2n] of cardinality at least 3, such that each
-- pair of pairwise unequal elements of B sums to a perfect square.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9022ba87ab388bf5f4af0bfa36279e75d6ca87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
