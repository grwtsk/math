# eq_alternatingGroup_of_index_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9555ee29-2cfa-8cd1-2622-e7b700fa0504",
  "kind": "theorem",
  "lexical_name": "eq_alternatingGroup_of_index_eq_two",
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
  "slug": "eq-alternatinggroup-of-index-eq-two--bab24f1f979cfe7daeae623e",
  "source": {
    "blob": "6e3216d0813d5379f769dc177fcf5d83d9e1837f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 464,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab24f1f979cfe7daeae623e2d8369ea45e4ea4dce8429970b5b5b69492cf743",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9555ee29-2cfa-8cd1-2622-e7b700fa0504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_alternatingGroup_of_index_eq_two {G : Subgroup (Equiv.Perm α)} (hG : G.index = 2) :
    G = alternatingGroup α := by
  nontriviality α
  obtain ⟨_, ⟨a, b, hab, rfl⟩, habG⟩ : ∃ g : Perm α, g.IsSwap ∧ g ∉ G := by
    by_contra! h
    suffices G = ⊤ by rw [this, Subgroup.index_top] at hG; cases hG
    rwa [eq_top_iff, ← closure_isSwap, G.closure_le]
  ext g
  refine swap_induction_on g (iff_of_true G.one_mem <| map_one _) fun g x y hxy ih ↦ ?_
  rw [mul_mem_iff_of_index_two hG, mul_mem_iff_of_index_two alternatingGroup.index_eq_two, ih]
  refine iff_congr (iff_of_false ?_ (by cases (sign_swap hxy).symm.trans ·)) Iff.rfl
  contrapose habG
  rw [← (isConj_iff.mp <| isConj_swap hxy hab).choose_spec]
  exact (normal_of_index_eq_two hG).conj_mem _ habG _

/-- A subgroup of the permutation group of index ≤ 2 contains the alternating group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3216d0813d5379f769dc177fcf5d83d9e1837f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
