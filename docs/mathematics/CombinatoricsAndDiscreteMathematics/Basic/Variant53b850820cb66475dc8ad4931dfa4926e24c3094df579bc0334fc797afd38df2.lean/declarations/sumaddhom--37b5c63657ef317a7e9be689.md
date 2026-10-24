# sumAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:910b272c08bcd2989c57e4054076f626c8170645417bc169a8b3f8389541a634",
  "kind": "def",
  "lexical_name": "sumAddHom",
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
  "slug": "sumaddhom--37b5c63657ef317a7e9be689",
  "source": {
    "blob": "31d8f5aca42493eb98f77c724c647a1409d650f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1924,
    "line": 1878,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37b5c63657ef317a7e9be68977ebaf5ec18dd3fe787383cf52f08e3dd507621c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:910b272c08bcd2989c57e4054076f626c8170645417bc169a8b3f8389541a634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1878–1924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumAddHom [∀ i, AddZeroClass (β i)] [AddCommMonoid γ] (φ : ∀ i, β i →+ γ) :
    (Π₀ i, β i) →+ γ where
  toFun f :=
    (f.support'.lift fun s => ∑ i in Multiset.toFinset s.1, φ i (f i)) <| by
      rintro ⟨sx, hx⟩ ⟨sy, hy⟩
      dsimp only [Subtype.coe_mk, toFun_eq_coe] at *
      have H1 : sx.toFinset ∩ sy.toFinset ⊆ sx.toFinset := Finset.inter_subset_left _ _
      have H2 : sx.toFinset ∩ sy.toFinset ⊆ sy.toFinset := Finset.inter_subset_right _ _
      refine'
        (Finset.sum_subset H1 _).symm.trans
          ((Finset.sum_congr rfl _).trans (Finset.sum_subset H2 _))
      · intro i H1 H2
        rw [Finset.mem_inter] at H2
        simp only [Multiset.mem_toFinset] at H1 H2
        convert AddMonoidHom.map_zero (φ i)
        exact (hy i).resolve_left (mt (And.intro H1) H2)
      · intro i _
        rfl
      · intro i H1 H2
        rw [Finset.mem_inter] at H2
        simp only [Multiset.mem_toFinset] at H1 H2
        convert AddMonoidHom.map_zero (φ i)
        exact (hx i).resolve_left (mt (fun H3 => And.intro H3 H1) H2)
  map_add' := by
    rintro ⟨f, sf, hf⟩ ⟨g, sg, hg⟩
    change (∑ i in _, _) = (∑ i in _, _) + ∑ i in _, _
    simp only [coe_add, coe_mk', Subtype.coe_mk, Pi.add_apply, map_add, Finset.sum_add_distrib]
    congr 1
    · refine' (Finset.sum_subset _ _).symm
      · intro i
        simp only [Multiset.mem_toFinset, Multiset.mem_add]
        exact Or.inl
      · intro i _ H2
        simp only [Multiset.mem_toFinset, Multiset.mem_add] at H2
        rw [(hf i).resolve_left H2, AddMonoidHom.map_zero]
    · refine' (Finset.sum_subset _ _).symm
      · intro i
        simp only [Multiset.mem_toFinset, Multiset.mem_add]
        exact Or.inr
      · intro i _ H2
        simp only [Multiset.mem_toFinset, Multiset.mem_add] at H2
        rw [(hg i).resolve_left H2, AddMonoidHom.map_zero]
  map_zero' := by
    simp only [toFun_eq_coe, coe_zero, Pi.zero_apply, map_zero, Finset.sum_const_zero]; rfl
#align dfinsupp.sum_add_hom DFinsupp.sumAddHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean#L1878).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d8f5aca42493eb98f77c724c647a1409d650f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
