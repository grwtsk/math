# eq_one_of_noncommProd_eq_one_of_iSupIndep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e249bcb-7a2f-8a11-a640-723e6ec0c4a4",
  "kind": "theorem",
  "lexical_name": "eq_one_of_noncommProd_eq_one_of_iSupIndep",
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
  "slug": "eq-one-of-noncommprod-eq-one-of-isupindep--27d7890cbc3a90a4d657cc19",
  "source": {
    "blob": "6f948329efb44a1b07759eceb5cdb566fc81842f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 60,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d7890cbc3a90a4d657cc194d583bab8863dfa8c9e70a7f1f2fcdb1d290af15",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e249bcb-7a2f-8a11-a640-723e6ec0c4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_one_of_noncommProd_eq_one_of_iSupIndep {ι : Type*} (s : Finset ι) (f : ι → G) (comm)
    (K : ι → Subgroup G) (hind : iSupIndep K) (hmem : ∀ x ∈ s, f x ∈ K x)
    (heq1 : s.noncommProd f comm = 1) : ∀ i ∈ s, f i = 1 := by
  classical
    revert heq1
    induction' s using Finset.induction_on with i s hnotMem ih
    · simp
    · have hcomm := comm.mono (Finset.coe_subset.2 <| Finset.subset_insert _ _)
      simp only [Finset.forall_mem_insert] at hmem
      have hmem_bsupr : s.noncommProd f hcomm ∈ ⨆ i ∈ (s : Set ι), K i := by
        refine Subgroup.noncommProd_mem _ _ ?_
        intro x hx
        have : K x ≤ ⨆ i ∈ (s : Set ι), K i := le_iSup₂ (f := fun i _ => K i) x hx
        exact this (hmem.2 x hx)
      intro heq1
      rw [Finset.noncommProd_insert_of_notMem _ _ _ _ hnotMem] at heq1
      have hnotMem' : i ∉ (s : Set ι) := by simpa
      obtain ⟨heq1i : f i = 1, heq1S : s.noncommProd f _ = 1⟩ :=
        Subgroup.disjoint_iff_mul_eq_one.mp (hind.disjoint_biSup hnotMem') hmem.1 hmem_bsupr heq1
      intro i h
      simp only [Finset.mem_insert] at h
      rcases h with (rfl | h)
      · exact heq1i
      · refine ih hcomm hmem.2 heq1S _ h

@[deprecated (since := "2024-11-24")]
alias eq_one_of_noncommProd_eq_one_of_independent := eq_one_of_noncommProd_eq_one_of_iSupIndep

end Subgroup

section FamilyOfMonoids

variable {M : Type*} [Monoid M]

-- We have a family of monoids
-- The fintype assumption is not always used, but declared here, to keep things in order
variable {ι : Type*} [Fintype ι]
variable {N : ι → Type*} [∀ i, Monoid (N i)]

-- And morphisms ϕ into G
variable (ϕ : ∀ i : ι, N i →* M)

-- We assume that the elements of different morphism commute
variable (hcomm : Pairwise fun i j => ∀ x y, Commute (ϕ i x) (ϕ j y))

namespace MonoidHom

/-- The canonical homomorphism from a family of monoids. -/
@[to_additive "The canonical homomorphism from a family of additive monoids. See also
`LinearMap.lsum` for a linear version without the commutativity assumption."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f948329efb44a1b07759eceb5cdb566fc81842f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
