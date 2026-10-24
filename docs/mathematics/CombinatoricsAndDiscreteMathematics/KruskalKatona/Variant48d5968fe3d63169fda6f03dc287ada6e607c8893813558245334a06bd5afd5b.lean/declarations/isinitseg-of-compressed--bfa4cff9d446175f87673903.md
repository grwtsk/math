# isInitSeg_of_compressed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6baa5590-cf9f-3940-33c0-aa39fb67c78c",
  "kind": "lemma",
  "lexical_name": "isInitSeg_of_compressed",
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
  "slug": "isinitseg-of-compressed--bfa4cff9d446175f87673903",
  "source": {
    "blob": "4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa4cff9d446175f87673903cf651edc1b81b2bf5ff540c370f64ca00817c5f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6baa5590-cf9f-3940-33c0-aa39fb67c78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInitSeg_of_compressed {ℬ : Finset (Finset α)} {r : ℕ} (h₁ : (ℬ : Set (Finset α)).Sized r)
    (h₂ : ∀ U V, UsefulCompression U V → IsCompressed U V ℬ) : IsInitSeg ℬ r := by
  refine ⟨h₁, ?_⟩
  rintro A B hA ⟨hBA, sizeA⟩
  by_contra hB
  have hAB : A ≠ B := ne_of_mem_of_not_mem hA hB
  have hAB' : #A = #B := (h₁ hA).trans sizeA.symm
  have hU : (A \ B).Nonempty := sdiff_nonempty.2 fun h ↦ hAB <| eq_of_subset_of_card_le h hAB'.ge
  have hV : (B \ A).Nonempty :=
    sdiff_nonempty.2 fun h ↦ hAB.symm <| eq_of_subset_of_card_le h hAB'.le
  have disj : Disjoint (B \ A) (A \ B) := disjoint_sdiff.mono_left sdiff_subset
  have smaller : max' _ hV < max' _ hU := by
    obtain hlt | heq | hgt := lt_trichotomy (max' _ hU) (max' _ hV)
    · rw [← compress_sdiff_sdiff A B] at hAB hBA
      cases hBA.not_lt <| toColex_compress_lt_toColex hlt hAB
    · exact (disjoint_right.1 disj (max'_mem _ hU) <| heq.symm ▸ max'_mem _ _).elim
    · assumption
  refine hB ?_
  rw [← (h₂ _ _ ⟨disj, card_sdiff_comm hAB'.symm, hV, hU, smaller⟩).eq]
  exact mem_compression.2 (Or.inr ⟨hB, A, hA, compress_sdiff_sdiff _ _⟩)

attribute [-instance] Fintype.decidableForallFintype

/-- This measures roughly how compressed the family is.

Note that this does depend on the order of the ground set, unlike the Kruskal-Katona theorem itself
(although `kruskal_katona` currently is stated in an order-dependent manner). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant48d5968fe3d63169fda6f03dc287ada6e607c8893813558245334a06bd5afd5b.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4324ed0ff5ea82fc7f5d75b49b76b230fd4dfe7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
