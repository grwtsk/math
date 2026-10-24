# biUnion_compl_eq_of_pairwise_disjoint_of_iUnion_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e6b77b-99d9-8b26-312a-999fc87cec38",
  "kind": "lemma",
  "lexical_name": "biUnion_compl_eq_of_pairwise_disjoint_of_iUnion_eq_univ",
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
  "slug": "biunion-compl-eq-of-pairwise-disjoint-of-iunion-eq-univ--8b68d01e90de2486868d13cb",
  "source": {
    "blob": "6eafc57eca422079a240ce515d258b65e4acd693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant87ce15c23a9fa0bee11b6ff72fdb22ddaab761de1e99749a696993d8dac1cef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b68d01e90de2486868d13cb05e0ee29d67f0b88f8dacc7b085e437def3badbe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant87ce15c23a9fa0bee11b6ff72fdb22ddaab761de1e99749a696993d8dac1cef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e6b77b-99d9-8b26-312a-999fc87cec38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biUnion_compl_eq_of_pairwise_disjoint_of_iUnion_eq_univ {ι : Type*} {Es : ι → Set α}
    (Es_union : ⋃ i, Es i = univ) (Es_disj : Pairwise fun i j ↦ Disjoint (Es i) (Es j))
    (I : Set ι) :
    (⋃ i ∈ I, Es i)ᶜ = ⋃ i ∈ Iᶜ, Es i := by
  ext x
  obtain ⟨i, hix⟩ : ∃ i, x ∈ Es i := by simp [← mem_iUnion, Es_union]
  have obs : ∀ (J : Set ι), x ∈ ⋃ j ∈ J, Es j ↔ i ∈ J := by
    refine fun J ↦ ⟨?_, fun i_in_J ↦ by simpa only [mem_iUnion, exists_prop] using ⟨i, i_in_J, hix⟩⟩
    intro x_in_U
    simp only [mem_iUnion, exists_prop] at x_in_U
    obtain ⟨j, j_in_J, hjx⟩ := x_in_U
    rwa [show i = j by by_contra i_ne_j; exact Disjoint.ne_of_mem (Es_disj i_ne_j) hix hjx rfl]
  have obs' : ∀ (J : Set ι), x ∈ (⋃ j ∈ J, Es j)ᶜ ↔ i ∉ J :=
    fun J ↦ by simpa only [mem_compl_iff, not_iff_not] using obs J
  rw [obs, obs', mem_compl_iff]

end Set

end Disjoint

namespace Set

variable (t : α → Set β)

/-- If `t` is an indexed family of sets, then there is a natural map from `Σ i, t i` to `⋃ i, t i`
sending `⟨i, x⟩` to `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant87ce15c23a9fa0bee11b6ff72fdb22ddaab761de1e99749a696993d8dac1cef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant87ce15c23a9fa0bee11b6ff72fdb22ddaab761de1e99749a696993d8dac1cef8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eafc57eca422079a240ce515d258b65e4acd693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
