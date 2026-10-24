# GradeMinOrder.exists_nat_orderEmbedding_of_forall_covby_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57bd012df9c931c2dfe76f62842bf06b078f016a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f125c7-c019-d875-9a52-c376f83960a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c833760-5bde-9c76-bead-7249b9a7d91d",
  "kind": "theorem",
  "lexical_name": "GradeMinOrder.exists_nat_orderEmbedding_of_forall_covby_finite",
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
  "slug": "grademinorder-exists-nat-orderembedding-of-forall-covby-finite--a97815fa7c81d02ad2a7dec9",
  "source": {
    "blob": "57bd012df9c931c2dfe76f62842bf06b078f016a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a97815fa7c81d02ad2a7dec9ad913dc4c0b07274bcc53b4e03e2efcb1f24be76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c833760-5bde-9c76-bead-7249b9a7d91d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GradeMinOrder.exists_nat_orderEmbedding_of_forall_covby_finite
    [GradeMinOrder ℕ α] [OrderBot α] [Infinite α] (hfin : ∀ (a : α), {x | a ⋖ x}.Finite) :
    ∃ f : ℕ ↪o α, f 0 = ⊥ ∧ (∀ i, f i ⋖ f (i+1)) ∧ ∀ i, grade ℕ (f i) = i := by
  obtain ⟨f, h0, hf⟩ := exists_orderEmbedding_covby_of_forall_covby_finite_of_bot hfin
  refine ⟨f, h0, hf, fun i ↦ ?_⟩
  induction i with
  | zero => simp [h0]
  | succ i ih => simpa [Order.covBy_iff_add_one_eq, ih, eq_comm] using CovBy.grade ℕ <| hf i

end Sequence

section Graded

/-- A formulation of Kőnig's infinity lemma, useful in applications.
Given a sequence `α 0, α 1, ...` of nonempty types with `α 0` finite,
and a well-behaved family of projections `π : α j → α i` for all `i ≤ j`,
if each term in each `α i` is the projection of only finitely many terms in `α (i+1)`,
then we can find a sequence `(f 0 : α 0), (f 1 : α 1), ...`
where `f i` is the projection of `f j` for all `i ≤ j`.

In a typical application, the `α i` are function types with increasingly large domains,
and `π hij (f : α j)` is the restriction of the domain of `f` to that of `α i`.
In this case, the sequence given by the lemma is essentially a function whose domain
is the limit of the `α i`.

See also `nonempty_sections_of_finite_cofiltered_system`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bd012df9c931c2dfe76f62842bf06b078f016a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
