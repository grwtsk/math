# edgeDisjointTriangles_iff_mem_sym2_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67400989-2200-07b8-03fe-fe7e7066f993",
  "kind": "lemma",
  "lexical_name": "edgeDisjointTriangles_iff_mem_sym2_subsingleton",
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
  "slug": "edgedisjointtriangles-iff-mem-sym2-subsingleton--0830067b4630276081d3e035",
  "source": {
    "blob": "3a544490b5ae44a9044e412a4a1d2d899dc82ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0830067b4630276081d3e0352433c915e74d7130614556cfaade102af86faa63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67400989-2200-07b8-03fe-fe7e7066f993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edgeDisjointTriangles_iff_mem_sym2_subsingleton :
    G.EdgeDisjointTriangles ↔
      ∀ ⦃e : Sym2 α⦄, ¬ e.IsDiag → {s ∈ G.cliqueSet 3 | e ∈ (s : Finset α).sym2}.Subsingleton := by
  classical
  have (a b) (hab : a ≠ b) : {s ∈ (G.cliqueSet 3 : Set (Finset α)) | s(a, b) ∈ (s : Finset α).sym2}
    = {s | G.Adj a b ∧ ∃ c, G.Adj a c ∧ G.Adj b c ∧ s = {a, b, c}} := by
    ext s
    simp only [mem_sym2_iff, Sym2.mem_iff, forall_eq_or_imp, forall_eq, Set.sep_and,
      Set.mem_inter_iff, Set.mem_sep_iff, mem_cliqueSet_iff, Set.mem_setOf_eq,
      and_and_and_comm (b := _ ∈ _), and_self, is3Clique_iff]
    constructor
    · rintro ⟨⟨c, d, e, hcd, hce, hde, rfl⟩, hab⟩
      simp only [mem_insert, mem_singleton] at hab
      obtain ⟨rfl | rfl | rfl, rfl | rfl | rfl⟩ := hab
      any_goals
        simp only [*, adj_comm, true_and, Ne, eq_self_iff_true, not_true] at *
      any_goals
        first
        | exact ⟨c, by aesop⟩
        | exact ⟨d, by aesop⟩
        | exact ⟨e, by aesop⟩
        | simp only [*, adj_comm, true_and, Ne, eq_self_iff_true, not_true] at *
          exact ⟨c, by aesop⟩
        | simp only [*, adj_comm, true_and, Ne, eq_self_iff_true, not_true] at *
          exact ⟨d, by aesop⟩
        | simp only [*, adj_comm, true_and, Ne, eq_self_iff_true, not_true] at *
          exact ⟨e, by aesop⟩
    · rintro ⟨hab, c, hac, hbc, rfl⟩
      refine ⟨⟨a, b, c, ?_⟩, ?_⟩ <;> simp [*]
  constructor
  · rw [Sym2.forall]
    rintro hG a b hab
    simp only [Sym2.isDiag_iff_proj_eq] at hab
    rw [this _ _ (Sym2.mk_isDiag_iff.not.2 hab)]
    rintro _ ⟨hab, c, hac, hbc, rfl⟩ _ ⟨-, d, had, hbd, rfl⟩
    refine hG.eq ?_ ?_ (Set.Nontrivial.not_subsingleton ⟨a, ?_, b, ?_, hab.ne⟩) <;>
      simp [is3Clique_triple_iff, *]
  · simp only [EdgeDisjointTriangles, is3Clique_iff, Set.Pairwise, mem_cliqueSet_iff, Ne,
      forall_exists_index, and_imp, ← Set.not_nontrivial_iff (s := _ ∩ _), not_imp_not,
      Set.Nontrivial, Set.mem_inter_iff, mem_coe]
    rintro hG _ a b c hab hac hbc rfl _ d e f hde hdf hef rfl g hg₁ hg₂ h hh₁ hh₂ hgh
    refine hG (Sym2.mk_isDiag_iff.not.2 hgh) ⟨⟨a, b, c, ?_⟩, by simpa using And.intro hg₁ hh₁⟩
      ⟨⟨d, e, f, ?_⟩, by simpa using And.intro hg₂ hh₂⟩ <;> simp [is3Clique_triple_iff, *]

alias ⟨EdgeDisjointTriangles.mem_sym2_subsingleton, _⟩ :=
  edgeDisjointTriangles_iff_mem_sym2_subsingleton

variable [DecidableEq α] [Fintype α] [DecidableRel G.Adj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a544490b5ae44a9044e412a4a1d2d899dc82ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
