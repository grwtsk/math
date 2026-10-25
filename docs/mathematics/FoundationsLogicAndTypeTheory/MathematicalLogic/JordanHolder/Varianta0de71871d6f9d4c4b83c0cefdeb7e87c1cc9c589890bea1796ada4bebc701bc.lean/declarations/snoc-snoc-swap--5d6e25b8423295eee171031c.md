# snoc_snoc_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2701be4fea9d98894655c9f52274acf331eab6e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6240f023-d4a7-2e6b-fffb-93765da3a7f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46c82f11-d2be-8c03-8319-fde13f38cdf6",
  "kind": "theorem",
  "lexical_name": "snoc_snoc_swap",
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
  "slug": "snoc-snoc-swap--5d6e25b8423295eee171031c",
  "source": {
    "blob": "2701be4fea9d98894655c9f52274acf331eab6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6e25b8423295eee171031c857cb1f0ac11eef94b7114521b1be14ab0cca58b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46c82f11-d2be-8c03-8319-fde13f38cdf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snoc_snoc_swap {s : CompositionSeries X} {x₁ x₂ y₁ y₂ : X} {hsat₁ : IsMaximal s.last x₁}
    {hsat₂ : IsMaximal s.last x₂} {hsaty₁ : IsMaximal (snoc s x₁ hsat₁).last y₁}
    {hsaty₂ : IsMaximal (snoc s x₂ hsat₂).last y₂} (hr₁ : Iso (s.last, x₁) (x₂, y₂))
    (hr₂ : Iso (x₁, y₁) (s.last, x₂)) :
    Equivalent (snoc (snoc s x₁ hsat₁) y₁ hsaty₁) (snoc (snoc s x₂ hsat₂) y₂ hsaty₂) :=
  let e : Fin (s.length + 1 + 1) ≃ Fin (s.length + 1 + 1) :=
    Equiv.swap (Fin.last _) (Fin.castSucc (Fin.last _))
  have h1 : ∀ {i : Fin s.length},
      (Fin.castSucc (Fin.castSucc i)) ≠ (Fin.castSucc (Fin.last _)) := by simp
  have h2 : ∀ {i : Fin s.length}, (Fin.castSucc (Fin.castSucc i)) ≠ Fin.last _ := by simp
  ⟨e, by
    intro i
    dsimp only [e]
    refine Fin.lastCases ?_ (fun i => ?_) i
    · erw [Equiv.swap_apply_left, snoc_castSucc,
      show (snoc s x₁ hsat₁).toFun (Fin.last _) = x₁ from last_snoc _ _ _, Fin.succ_last,
      show ((s.snoc x₁ hsat₁).snoc y₁ hsaty₁).toFun (Fin.last _) = y₁ from last_snoc _ _ _,
      snoc_castSucc, snoc_castSucc, Fin.succ_castSucc, snoc_castSucc, Fin.succ_last,
      show (s.snoc _ hsat₂).toFun (Fin.last _) = x₂ from last_snoc _ _ _]
      exact hr₂
    · refine Fin.lastCases ?_ (fun i => ?_) i
      · erw [Equiv.swap_apply_right, snoc_castSucc, snoc_castSucc, snoc_castSucc,
          Fin.succ_castSucc, snoc_castSucc, Fin.succ_last, last_snoc', last_snoc', last_snoc']
        exact hr₁
      · erw [Equiv.swap_apply_of_ne_of_ne h2 h1, snoc_castSucc, snoc_castSucc,
          snoc_castSucc, snoc_castSucc, Fin.succ_castSucc, snoc_castSucc,
          Fin.succ_castSucc, snoc_castSucc, snoc_castSucc, snoc_castSucc]
        exact (s.step i).iso_refl⟩

end Equivalent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Varianta0de71871d6f9d4c4b83c0cefdeb7e87c1cc9c589890bea1796ada4bebc701bc.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2701be4fea9d98894655c9f52274acf331eab6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
