# goodness_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b65ad78-3bba-5f9c-d774-1f787b4173d9",
  "kind": "theorem",
  "lexical_name": "goodness_subst",
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
  "slug": "goodness-subst--24d11001430c14e6d6720bc6",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11464,
    "line": 11345,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24d11001430c14e6d6720bc6f05c9eb9b3ec181ec0d8a9376a95411aabca898d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b65ad78-3bba-5f9c-d774-1f787b4173d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11345–11464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem goodness_subst (hw : SystemWeaklyNormalizing P)
    {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (hΔ : ValidContext P Δ) (σ : Nat → Expr S)
    (ts : TypingTree.StoredSubstitution P Γ Δ σ) (ξ : Nat → Expr S)
    (hξ : Ω.TypedSubstitution Δ ξ)
    (hguard : SubstitutionGuard Ω C Γ σ (Expr.compSub σ ξ)) (hg : GoodReplacement Ω C ts ξ) :
    (ActiveLayer P C (Ω.profile (T.subst (Expr.compSub σ ξ))) →
      ValGood Ω C t (Expr.compSub σ ξ) → ValGood Ω C (t.subst hΔ σ ts) ξ) ∧
    (ReadGood Ω C t (Expr.compSub σ ξ) → ReadGood Ω C (t.subst hΔ σ ts) ξ) := by
  induction t generalizing Δ σ ξ with
  | @var Γ i A T ht hd hc =>
      have hcomp := hξ.comp ts.typed
      have hprof := Ω.profile_converts ((ContextTower.HasType.subst ht hcomp).type_weaklyNormalizing hw)
        ((ContextTower.HasType.subst (HasType.lookup ht.valid hd) hcomp).type_weaklyNormalizing hw)
        (hc.subst (Expr.compSub σ ξ))
      have hv : ActiveLayer P C (Ω.profile (T.subst (Expr.compSub σ ξ))) →
          ValGood Ω C ((TypingTree.var ht hd hc).subst hΔ σ ts) ξ := by
        intro ha
        change ValGood Ω C ((ts i A hd).retarget (ht.subst hΔ σ ts.typed) (hc.subst σ)) ξ
        exact (valGood_retarget Ω C _ _ _ _).mpr (hg i A hd (hprof ▸ ha))
      refine ⟨fun ha _ => hv ha,?_⟩
      intro hr
      by_cases hm : Ω.profile ((Expr.var i).subst (Expr.compSub σ ξ)) ∈ C
      · obtain ⟨s,he,hs,_,_⟩ := hr hm
        subst T
        by_cases ha : ActiveLayer P C (Ω.profile (Expr.sort s |>.subst (Expr.compSub σ ξ)))
        · exact (readGood_active_iff Ω C ((TypingTree.var ht hd hc).subst hΔ σ ts)
            (by exact hm) hs (by exact ha)).mpr (hv ha)
        · apply neutral_readGood Ω C _ _ ξ hs (by simpa only [Expr.subst,Ω.profile_sort] using ha)
          exact skipped_read_subst Ω C hw ht (.var i) hcomp hguard hs
            (by simpa only [Expr.subst,Ω.profile_sort] using ha)
      · exact readGood_outside Ω C _ ξ hm
  | sort ht ha hc => exact ⟨fun _ _ => trivial,fun _ => trivial⟩
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hD := d.typing.subst hΔ σ ts.typed
      let bs := b.subst (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD)
      have hbody : ValGood Ω C (.abstraction ht d b hp hc) (Expr.compSub σ ξ) →
          ValGood Ω C ((TypingTree.abstraction ht d b hp hc).subst hΔ σ ts) ξ := by
        intro hb n hn ha
        have hn' : Ω.HasType n (D.subst (Expr.compSub σ ξ)) := by simpa only [Expr.subst_compSub] using hn
        have hi := (ihb (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD) (Expr.consSub n ξ)
          (hξ.cons hn) (hguard.lift D n) (goodReplacement_lift Ω C ts hg hD n)).1
        apply hi
        · simpa only [Expr.subst_compSub] using ha
        · rw [Expr.lift_comp_cons]
          exact hb n hn' (by simpa only [Expr.subst_compSub,Expr.lift_comp_cons] using ha)
      refine ⟨fun _ => hbody,?_⟩
      intro hr hm
      have hm' : Ω.profile (Expr.lam D m |>.subst (Expr.compSub σ ξ)) ∈ C := by
        simpa only [Expr.subst_compSub] using hm
      obtain ⟨s',he,hs,hv,hn⟩ := hr hm'
      subst T
      exact False.elim ht.lambda_cannot_have_sort_type
  | @application Γ f n D E T ht ft nt hc ihf ihn =>
      have hcomp := hξ.comp ts.typed
      have hv : ActiveLayer P C (Ω.profile (T.subst (Expr.compSub σ ξ))) →
          ValGood Ω C (.application ht ft nt hc) (Expr.compSub σ ξ) →
          ValGood Ω C ((TypingTree.application ht ft nt hc).subst hΔ σ ts) ξ := by
        intro ha hg'
        change (if ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst (Expr.compSub σ ξ))) then
          ValGood Ω C ft (Expr.compSub σ ξ) ∧
            (ActiveLayer P C (Ω.profile (D.subst (Expr.compSub σ ξ))) → ValGood Ω C nt (Expr.compSub σ ξ))
          else Neutral (.app f n)) at hg'
        change (if ActiveLayer P C (Ω.profile ((Expr.pi D E |>.subst σ).subst ξ)) then
          ValGood Ω C (ft.subst hΔ σ ts) ξ ∧
            (ActiveLayer P C (Ω.profile ((D.subst σ).subst ξ)) → ValGood Ω C (nt.subst hΔ σ ts) ξ)
          else Neutral ((Expr.app f n).subst σ))
        simp only [Expr.subst_compSub]
        split <;> rename_i hF
        · rw [ite_eq_left hF] at hg'
          exact ⟨(ihf hΔ σ ts ξ hξ hguard hg).1 hF hg'.1,
            fun hA => (ihn hΔ σ ts ξ hξ hguard hg).1 hA (hg'.2 hA)⟩
        · rw [ite_eq_right hF] at hg'
          exact skipped_application_subst Ω C hw ht ft.typing nt.typing hc hg' hcomp hguard ha hF
      refine ⟨hv,?_⟩
      intro hr hm
      have hm' : Ω.profile (Expr.app f n |>.subst (Expr.compSub σ ξ)) ∈ C := by
        simpa only [Expr.subst_compSub] using hm
      obtain ⟨s,he,hs,hval,hne⟩ := hr hm'
      subst T
      refine ⟨s,rfl,hs,?_,?_⟩
      · intro ha
        apply hv (by exact ha)
        exact hval (by exact ha)
      · intro ha
        have hax : ¬ ActiveLayer P C (AxProfile P s) := by simpa only [Expr.subst,Ω.profile_sort] using ha
        exact skipped_read_subst Ω C hw ht (hne (by exact ha)) hcomp hguard hs hax
  | @product Γ D E a b c T ht d bt hr hc ihd ihb =>
      have hD := d.typing.subst hΔ σ ts.typed
      have hpg : ProductGood Ω C d bt (Expr.compSub σ ξ) →
          ProductGood Ω C (d.subst hΔ σ ts) (bt.subst (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD)) ξ := by
        intro hh
        constructor
        · intro hm
          exact (ihd hΔ σ ts ξ hξ hguard hg).2 (hh.1 (by simpa only [Expr.subst_compSub] using hm))
        · intro n hn hm
          have hn' : Ω.HasType n (D.subst (Expr.compSub σ ξ)) := by simpa only [Expr.subst_compSub] using hn
          apply (ihb (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD) (Expr.consSub n ξ)
            (hξ.cons hn) (hguard.lift D n) (goodReplacement_lift Ω C ts hg hD n)).2
          rw [Expr.lift_comp_cons]
          exact hh.2 n hn' (by simpa only [Expr.subst_compSub,Expr.lift_comp_cons] using hm)
      constructor
      · intro _ hv hgate
        apply hpg
        apply hv
        change ({c} : Set S) ∈ C ∧ Ω.profile (((Expr.pi D E).subst σ).subst ξ) ∈ C at hgate
        simpa only [Expr.subst_compSub] using hgate
      · intro hr' hm
        apply hpg
        apply hr'
        change Ω.profile (((Expr.pi D E).subst σ).subst ξ) ∈ C at hm
        simpa only [Expr.subst_compSub] using hm

end

universe u
open Classical
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L11345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
