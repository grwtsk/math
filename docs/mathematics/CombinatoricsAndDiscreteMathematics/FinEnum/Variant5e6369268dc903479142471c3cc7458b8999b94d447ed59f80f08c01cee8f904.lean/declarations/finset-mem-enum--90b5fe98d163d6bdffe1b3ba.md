# Finset.mem_enum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d300dd1-f443-b8ef-5752-643eec150880",
  "kind": "theorem",
  "lexical_name": "Finset.mem_enum",
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
  "slug": "finset-mem-enum--90b5fe98d163d6bdffe1b3ba",
  "source": {
    "blob": "7fad82bcc2719c37eb8a500c9fa332132459b260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b5fe98d163d6bdffe1b3ba3f71fcb590d99d069ef7460dd9f878f5a1c9760b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d300dd1-f443-b8ef-5752-643eec150880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.mem_enum [DecidableEq α] (s : Finset α) (xs : List α) :
    s ∈ Finset.enum xs ↔ ∀ x ∈ s, x ∈ xs := by
  induction' xs with xs_hd generalizing s <;> simp [*, Finset.enum]
  · simp [Finset.eq_empty_iff_forall_not_mem]
  · constructor
    · rintro ⟨a, h, h'⟩ x hx
      cases' h' with _ h' a b
      · right
        apply h
        subst a
        exact hx
      · simp only [h', mem_union, mem_singleton] at hx ⊢
        cases' hx with hx hx'
        · exact Or.inl hx
        · exact Or.inr (h _ hx')
    · intro h
      exists s \ ({xs_hd} : Finset α)
      simp only [and_imp, mem_sdiff, mem_singleton]
      simp only [or_iff_not_imp_left] at h
      exists h
      by_cases h : xs_hd ∈ s
      · have : {xs_hd} ⊆ s
        simp only [HasSubset.Subset, *, forall_eq, mem_singleton]
        simp only [union_sdiff_of_subset this, or_true_iff, Finset.union_sdiff_of_subset,
          eq_self_iff_true]
      · left
        symm
        simp only [sdiff_eq_self]
        intro a
        simp only [and_imp, mem_inter, mem_singleton]
        rintro h₀ rfl
        exact (h h₀).elim
#align fin_enum.finset.mem_enum FinEnum.Finset.mem_enum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fad82bcc2719c37eb8a500c9fa332132459b260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
