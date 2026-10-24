# HasBasis.liminf_eq_ciSup_ciInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05824108-7b96-795f-e39c-9f45d95b678f",
  "kind": "theorem",
  "lexical_name": "HasBasis.liminf_eq_ciSup_ciInf",
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
  "slug": "hasbasis-liminf-eq-cisup-ciinf--73e8aa12b6e4d7297958f0ec",
  "source": {
    "blob": "173d0bad9d00e578f33453660721cea0cdeb4dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1020,
    "line": 980,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73e8aa12b6e4d7297958f0ec2d44f9817de6667f892ae7a6b7875103c34b4ddc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05824108-7b96-795f-e39c-9f45d95b678f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 980–1020.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.liminf_eq_ciSup_ciInf {v : Filter ι}
    {p : ι' → Prop} {s : ι' → Set ι} [Countable (Subtype p)] [Nonempty (Subtype p)]
    (hv : v.HasBasis p s) {f : ι → α} (hs : ∀ (j : Subtype p), (s j).Nonempty)
    (H : ∃ (j : Subtype p), BddBelow (range (fun (i : s j) ↦ f i))) :
    liminf f v = ⨆ (j : Subtype p), ⨅ (i : s (liminf_reparam f s p j)), f i := by
  classical
  rcases H with ⟨j0, hj0⟩
  let m : Set (Subtype p) := {j | BddBelow (range (fun (i : s j) ↦ f i))}
  have : ∀ (j : Subtype p), Nonempty (s j) := fun j ↦ Nonempty.coe_sort (hs j)
  have A : ⋃ (j : Subtype p), ⋂ (i : s j), Iic (f i) =
         ⋃ (j : Subtype p), ⋂ (i : s (liminf_reparam f s p j)), Iic (f i) := by
    apply Subset.antisymm
    · apply iUnion_subset (fun j ↦ ?_)
      by_cases hj : j ∈ m
      · have : j = liminf_reparam f s p j := by simp only [m, liminf_reparam, hj, ite_true]
        conv_lhs => rw [this]
        apply subset_iUnion _ j
      · simp only [m, mem_setOf_eq, ← nonempty_iInter_Iic_iff, not_nonempty_iff_eq_empty] at hj
        simp only [hj, empty_subset]
    · apply iUnion_subset (fun j ↦ ?_)
      exact subset_iUnion (fun (k : Subtype p) ↦ (⋂ (i : s k), Iic (f i))) (liminf_reparam f s p j)
  have B : ∀ (j : Subtype p), ⋂ (i : s (liminf_reparam f s p j)), Iic (f i) =
                                Iic (⨅ (i : s (liminf_reparam f s p j)), f i) := by
    intro j
    apply (Iic_ciInf _).symm
    change liminf_reparam f s p j ∈ m
    by_cases Hj : j ∈ m
    · simpa only [m, liminf_reparam, if_pos Hj] using Hj
    · simp only [m, liminf_reparam, if_neg Hj]
      have Z : ∃ n, (exists_surjective_nat (Subtype p)).choose n ∈ m ∨ ∀ j, j ∉ m := by
        rcases (exists_surjective_nat (Subtype p)).choose_spec j0 with ⟨n, rfl⟩
        exact ⟨n, Or.inl hj0⟩
      rcases Nat.find_spec Z with hZ|hZ
      · exact hZ
      · exact (hZ j0 hj0).elim
  simp_rw [hv.liminf_eq_sSup_iUnion_iInter, A, B, sSup_iUnion_Iic]

open Classical in
/-- Writing a liminf as a supremum of infimum, in a (possibly non-complete) conditionally complete
linear order. A reparametrization trick is needed to avoid taking the infimum of sets which are
not bounded below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantf237dc893498b1fc633183f58d397223d30fb2317dea49ba126603cbf3db780f.lean#L980).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `173d0bad9d00e578f33453660721cea0cdeb4dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
