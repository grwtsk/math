# multiset_prod_X_sub_C_coeff_card_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d8d3da7-20af-b685-f367-1a340f778ebe",
  "kind": "theorem",
  "lexical_name": "multiset_prod_X_sub_C_coeff_card_pred",
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
  "slug": "multiset-prod-x-sub-c-coeff-card-pred--6a1395bdfb6f8c73afe84957",
  "source": {
    "blob": "c2293cbcd11758f4924d3f3f932dd371b18eb961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1395bdfb6f8c73afe84957d0453fe86d6c5a19600ff24441afb34b651f7815",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d8d3da7-20af-b685-f367-1a340f778ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_prod_X_sub_C_coeff_card_pred (t : Multiset R) (ht : 0 < Multiset.card t) :
    (t.map fun x => X - C x).prod.coeff ((Multiset.card t) - 1) = -t.sum := by
  nontriviality R
  convert multiset_prod_X_sub_C_nextCoeff (by assumption)
  rw [nextCoeff, if_neg]
  swap
  · rw [natDegree_multiset_prod_of_monic]
    swap
    · simp only [Multiset.mem_map]
      rintro _ ⟨_, _, rfl⟩
      apply monic_X_sub_C
    simp_rw [Multiset.sum_eq_zero_iff, Multiset.mem_map]
    obtain ⟨x, hx⟩ := card_pos_iff_exists_mem.mp ht
    exact fun h => one_ne_zero <| h 1 ⟨_, ⟨x, hx, rfl⟩, natDegree_X_sub_C _⟩
  congr; rw [natDegree_multiset_prod_of_monic] <;> · simp [natDegree_X_sub_C, monic_X_sub_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2293cbcd11758f4924d3f3f932dd371b18eb961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
