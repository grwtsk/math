# sum_ofPairwiseDisjoint_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1794d52-0ddc-d333-61c6-60b483c84333",
  "kind": "lemma",
  "lexical_name": "sum_ofPairwiseDisjoint_eq_sum",
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
  "slug": "sum-ofpairwisedisjoint-eq-sum--f8333c69d0807074de077a06",
  "source": {
    "blob": "ee3c052893d72f68cd449b7b22d45a9405067a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8333c69d0807074de077a0604a8f3729a7e419e84873ca9bb97433e79ab3d56",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1794d52-0ddc-d333-61c6-60b483c84333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_ofPairwiseDisjoint_eq_sum {parts : Finset α}
    (hdisjoint : (parts : Set α).PairwiseDisjoint id)
    {X : Type*} [AddCommMonoid X] {f : α → X} (hf : f ⊥ = 0) :
    ∑ p ∈ (ofPairwiseDisjoint parts hdisjoint).parts, f p = ∑ p ∈ parts, f p := by
  by_cases hbot : ⊥ ∈ parts
  · simp only [Finpartition.ofPairwiseDisjoint]
    rw [← erase_union_eq ⊥ parts hbot, union_comm, sum_union_eq_right]
    · simp
    grind
  · simp_all

end DistribLattice

section IsModularLattice

variable [Lattice α] [OrderBot α] [IsModularLattice α] [DecidableEq α] {a b c : α}

/-- Combine a family of partitions of pairwise disjoint elements into a partition of their sup. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c052893d72f68cd449b7b22d45a9405067a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
