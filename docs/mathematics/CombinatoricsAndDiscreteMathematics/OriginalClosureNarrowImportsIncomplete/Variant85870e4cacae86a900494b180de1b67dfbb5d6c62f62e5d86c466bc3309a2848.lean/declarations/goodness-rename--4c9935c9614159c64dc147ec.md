# goodness_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d105853d-377c-242c-1372-1a32b0a58156",
  "kind": "theorem",
  "lexical_name": "goodness_rename",
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
  "slug": "goodness-rename--4c9935c9614159c64dc147ec",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10818,
    "line": 10749,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c9935c9614159c64dc147ecf9f07b7843e1c8813d3c7d8c71fd95a919240408",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d105853d-377c-242c-1372-1a32b0a58156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10749–10818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodness_rename {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (hΔ : ValidContext P Δ) (ρ : Nat → Nat) (hρ : TypingTree.DeclRenaming Γ Δ ρ)
    (σ : Nat → Expr S) :
    goodness Ω C (t.rename hΔ ρ hρ) σ = goodness Ω C t (σ ∘ ρ) := by
  induction t generalizing Δ ρ σ with
  | var ht hd hc =>
      apply Prod.ext
      · rfl
      · exact propext (baseGood_rename Ω C ρ σ True)
  | sort ht ha hc => rfl
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hh : HasType P Δ (D.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      have hb (n : Expr S) := ihb (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D) (Expr.consSub n σ)
      simp only [Expr.consSub_liftRen] at hb
      have hv : (∀ n, Ω.HasType n ((D.rename ρ).subst σ) →
          ActiveLayer P C (Ω.profile ((E.rename (Expr.liftRen ρ)).subst (Expr.consSub n σ))) →
          (goodness Ω C (b.rename (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D)) (Expr.consSub n σ)).1) ↔
          (∀ n, Ω.HasType n (D.subst (σ ∘ ρ)) →
          ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n (σ ∘ ρ)))) →
          (goodness Ω C b (Expr.consSub n (σ ∘ ρ))).1) := by
        simp only [Expr.subst_rename,Expr.consSub_liftRen,hb]
      apply Prod.ext
      · exact propext hv
      · change baseGood Ω C (Expr.lam D m |>.rename ρ) (T.rename ρ) σ _ = _
        exact (propext (baseGood_rename Ω C ρ σ _)).trans
          (congrArg (baseGood Ω C (.lam D m) T (σ ∘ ρ)) (propext hv))
  | @application Γ g n D E T ht f a hc ihf iha =>
      have hg := ihf hΔ ρ hρ σ
      have hn := iha hΔ ρ hρ σ
      have hv : (goodness Ω C ((TypingTree.application ht f a hc).rename hΔ ρ hρ) σ).1 =
          (goodness Ω C (.application ht f a hc) (σ ∘ ρ)).1 := by
        change (if ActiveLayer P C (Ω.profile ((Expr.pi D E |>.rename ρ).subst σ)) then
          (goodness Ω C (f.rename hΔ ρ hρ) σ).1 ∧
            (ActiveLayer P C (Ω.profile ((D.rename ρ).subst σ)) → (goodness Ω C (a.rename hΔ ρ hρ) σ).1)
          else Neutral ((Expr.app g n).rename ρ)) =
          (if ActiveLayer P C (Ω.profile ((Expr.pi D E).subst (σ ∘ ρ))) then
            (goodness Ω C f (σ ∘ ρ)).1 ∧
              (ActiveLayer P C (Ω.profile (D.subst (σ ∘ ρ))) → (goodness Ω C a (σ ∘ ρ)).1)
            else Neutral (.app g n))
        rw [hg,hn]
        rw [Expr.subst_rename,Expr.subst_rename]
        split
        · rfl
        · exact propext Neutral.rename_iff
      apply Prod.ext hv
      change baseGood Ω C (Expr.app g n |>.rename ρ) (T.rename ρ) σ _ = _
      exact (propext (baseGood_rename Ω C ρ σ _)).trans
        (congrArg (baseGood Ω C (.app g n) T (σ ∘ ρ)) hv)
  | @product Γ D E a b c T ht d bt hr hc ihd ihb =>
      have hh : HasType P Δ (D.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      have hd := ihd hΔ ρ hρ σ
      have hb (n : Expr S) := ihb (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D) (Expr.consSub n σ)
      simp only [Expr.consSub_liftRen] at hb
      let g : Prop := (Ω.profile ((D.rename ρ).subst σ) ∈ C →
          (goodness Ω C (d.rename hΔ ρ hρ) σ).2) ∧
          ∀ n, Ω.HasType n ((D.rename ρ).subst σ) →
            Ω.profile ((E.rename (Expr.liftRen ρ)).subst (Expr.consSub n σ)) ∈ C →
              (goodness Ω C (bt.rename (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D)) (Expr.consSub n σ)).2
      let g' : Prop := (Ω.profile (D.subst (σ ∘ ρ)) ∈ C → (goodness Ω C d (σ ∘ ρ)).2) ∧
          ∀ n, Ω.HasType n (D.subst (σ ∘ ρ)) → Ω.profile (E.subst (Expr.consSub n (σ ∘ ρ))) ∈ C →
            (goodness Ω C bt (Expr.consSub n (σ ∘ ρ))).2
      have he : g = g' := by
        dsimp only [g,g']
        simp only [hd,hb,Expr.subst_rename,Expr.consSub_liftRen]
      change ((({c} : Set S) ∈ C ∧ Ω.profile ((Expr.pi D E |>.rename ρ).subst σ) ∈ C) → g,
        Ω.profile ((Expr.pi D E |>.rename ρ).subst σ) ∈ C → g) =
        ((({c} : Set S) ∈ C ∧ Ω.profile (Expr.pi D E |>.subst (σ ∘ ρ)) ∈ C) → g',
        Ω.profile (Expr.pi D E |>.subst (σ ∘ ρ)) ∈ C → g')
      simp only [Expr.subst_rename,he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L10749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
