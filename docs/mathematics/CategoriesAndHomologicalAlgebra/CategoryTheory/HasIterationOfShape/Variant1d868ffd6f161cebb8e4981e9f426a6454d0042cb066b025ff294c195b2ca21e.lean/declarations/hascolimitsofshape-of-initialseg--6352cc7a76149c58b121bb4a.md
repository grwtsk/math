# hasColimitsOfShape_of_initialSeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1454a5e2-edba-e98a-3044-6ab27a315da6",
  "kind": "lemma",
  "lexical_name": "hasColimitsOfShape_of_initialSeg",
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
  "slug": "hascolimitsofshape-of-initialseg--6352cc7a76149c58b121bb4a",
  "source": {
    "blob": "6eb6ed56889f24d63d16dbf05eacc271d7e08b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6352cc7a76149c58b121bb4a854a15049056aeb14b66c2e079ed62c916a0dedb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1454a5e2-edba-e98a-3044-6ab27a315da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasColimitsOfShape_of_initialSeg
    {α : Type*} [PartialOrder α] (f : α ≤i J) [Nonempty α] :
    HasColimitsOfShape α C := by
  by_cases hf : Function.Surjective f
  · exact hasColimitsOfShape_of_equivalence
      (OrderIso.ofRelIsoLT (RelIso.ofSurjective f.toRelEmbedding hf)).equivalence.symm
  · let s := f.toPrincipalSeg hf
    obtain ⟨i, hi₀⟩ : ∃ i, i = s.top := ⟨_, rfl⟩
    induction i using SuccOrder.limitRecOn with
    | isMin i hi =>
      subst hi₀
      exact (hi.not_lt (s.lt_top (Classical.arbitrary _))).elim
    | succ i hi _ =>
      obtain ⟨a, rfl⟩ := (s.mem_range_iff_rel (b := i)).2 (by
        simpa only [← hi₀] using Order.lt_succ_of_not_isMax hi)
      have : OrderTop α :=
        { top := a
          le_top b := by
            rw [← s.le_iff_le]
            exact Order.le_of_lt_succ (by simpa only [hi₀] using s.lt_top b) }
      infer_instance
    | isSuccLimit i hi =>
      subst hi₀
      exact hasColimitsOfShape_of_isSuccLimit' C s hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb6ed56889f24d63d16dbf05eacc271d7e08b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
