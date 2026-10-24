# mem_iSup_finset_iff_exists_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8af2b784-a971-e028-7840-832d57547dac",
  "kind": "theorem",
  "lexical_name": "mem_iSup_finset_iff_exists_sum",
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
  "slug": "mem-isup-finset-iff-exists-sum--b24c931f446672e781b1efa7",
  "source": {
    "blob": "aacb59887a4ddaaae0275b3e52b5ac621ebde6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 445,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b24c931f446672e781b1efa7e31a1a541d1fb59b7303b8e70b020fa989bc959a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8af2b784-a971-e028-7840-832d57547dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iSup_finset_iff_exists_sum {s : Finset ι} (p : ι → Submodule R N) (a : N) :
    (a ∈ ⨆ i ∈ s, p i) ↔ ∃ μ : ∀ i, p i, (∑ i ∈ s, (μ i : N)) = a := by
  classical
    rw [Submodule.mem_iSup_iff_exists_dfinsupp']
    constructor <;> rintro ⟨μ, hμ⟩
    · use fun i => ⟨μ i, (iSup_const_le : _ ≤ p i) (coe_mem <| μ i)⟩
      rw [← hμ]
      symm
      apply Finset.sum_subset
      · intro x
        contrapose
        intro hx
        rw [mem_support_iff, not_ne_iff]
        ext
        rw [coe_zero, ← mem_bot R]
        suffices ⊥ = ⨆ (_ : x ∈ s), p x from this.symm ▸ coe_mem (μ x)
        exact (iSup_neg hx).symm
      · intro x _ hx
        rw [mem_support_iff, not_ne_iff] at hx
        rw [hx]
        rfl
    · refine ⟨DFinsupp.mk s ?_, ?_⟩
      · rintro ⟨i, hi⟩
        refine ⟨μ i, ?_⟩
        rw [iSup_pos]
        · exact coe_mem _
        · exact hi
      simp only [DFinsupp.sum]
      rw [Finset.sum_subset support_mk_subset, ← hμ]
      · exact Finset.sum_congr rfl fun x hx => by rw [mk_of_mem hx]
      · intro x _ hx
        rw [mem_support_iff, not_ne_iff] at hx
        rw [hx]
        rfl

end Submodule

open DFinsupp

section Semiring

variable [DecidableEq ι] [Semiring R] [AddCommMonoid N] [Module R N]

/-- Independence of a family of submodules can be expressed as a quantifier over `DFinsupp`s.

This is an intermediate result used to prove
`iSupIndep_of_dfinsupp_lsum_injective` and
`iSupIndep.dfinsupp_lsum_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aacb59887a4ddaaae0275b3e52b5ac621ebde6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
