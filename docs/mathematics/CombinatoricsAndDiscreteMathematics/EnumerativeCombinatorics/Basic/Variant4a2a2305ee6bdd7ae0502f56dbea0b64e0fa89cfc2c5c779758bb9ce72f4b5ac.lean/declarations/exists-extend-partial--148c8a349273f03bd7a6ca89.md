# exists_extend_partial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:320db7ca-34b5-7cf2-b75e-ca83435c80bc",
  "kind": "lemma",
  "lexical_name": "exists_extend_partial",
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
  "slug": "exists-extend-partial--148c8a349273f03bd7a6ca89",
  "source": {
    "blob": "f8006ac214189d24392163d1cc519bef90e5b71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 527,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148c8a349273f03bd7a6ca89865297f4cf9d2fd07c39161411848bccebbefa27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320db7ca-34b5-7cf2-b75e-ca83435c80bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_extend_partial (P : Partition u) (f₀ : t → α)
    (h_notMem : ∀ x : t, x.1 ∉ u → f₀ x = x) (h_mem : ∀ x : t, x.1 ∈ u → P.Rel x (f₀ x))
    (h_eq : ∀ x y : t, P.Rel x y → f₀ x = f₀ y) : ∃ f, IsRepFun P f ∧ ∀ x : t, f x = f₀ x := by
  classical
  set f : α → α := fun a ↦ if ha : a ∈ u then
    (if hb : ∃ b : t, P.Rel a b then f₀ hb.choose else P.rep (P.partOf_mem ha)) else a with hfdef
  refine ⟨f, ⟨fun a ha ↦ by simp [hfdef, ha], fun a ha ↦ ?_, fun a b hab ↦ ?_⟩, fun a ↦ ?_⟩
  · simp only [hfdef, ha, ↓reduceDIte]
    split_ifs with h
    · exact h.choose_spec.trans <| h_mem h.choose h.choose_spec.right_mem
    push Not at h
    exact P.rep_rel (P.partOf_mem ha) (P.mem_partOf ha)
  · simp_rw [hfdef, dite_eq_left hab.left_mem, dite_eq_left hab.right_mem]
    split_ifs with h₁ h₂ h₂
    · exact h_eq _ _ <| (hab.symm.trans h₁.choose_spec).symm.trans h₂.choose_spec
    · exact h₂ ⟨_, hab.symm.trans h₁.choose_spec⟩ |>.elim
    · exact h₁ ⟨_, hab.trans h₂.choose_spec⟩ |>.elim
    congr 1
    rwa [← rel_iff_partOf_eq_partOf_of_mem _ hab.left_mem hab.right_mem]
  obtain (ha | ha) := em (a.1 ∈ u) |>.symm
  · simp [hfdef, ha, h_notMem _ ha]
  simp only [hfdef, ha, ↓reduceDIte]
  split_ifs with h
  · exact h_eq _ _ h.choose_spec |>.symm
  exact h ⟨a, rel_rfl_iff.mpr ha⟩ |>.elim

/-- For any set `t` containing no two distinct related elements, there is a representative function
equal to the identity on `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8006ac214189d24392163d1cc519bef90e5b71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
