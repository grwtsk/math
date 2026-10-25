# compare_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3785b15-8b67-82b0-da49-72019d112e93",
  "kind": "theorem",
  "lexical_name": "compare_subst",
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
  "slug": "compare-subst--36df8af394e946b2c89f5a06",
  "source": {
    "blob": "03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 588,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36df8af394e946b2c89f5a061e29546c7538108ab30ddfaafba1c978b3cef501",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3785b15-8b67-82b0-da49-72019d112e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_subst {Γ Δ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) (hN : Normal A)
    (hrel : ∃ K ∈ C, Reach (PrimaryEdge P) (Profile P Γ A) K)
    (hΔ : ValidContext P Δ) (δ : Nat → Expr S) (hδ : TypedSubstitution P Γ Δ δ)
    (e : Environment Ω Δ) (θ : Bits) (dir : Bool)
    (hb : CompatibleBits (support (P := P) C Γ A) dir δ θ e.bits) :
    Below dir (eval Ω C Γ A (fun i => (δ i).subst e.images) θ) (R Ω C (A.subst δ) e) := by
  induction A generalizing Γ Δ s δ θ dir with
  | var i =>
    have ht := hA.subst hΔ δ hδ
    have he : (((Expr.var i).subst δ).subst e.images) = (Expr.var i).subst (fun i => (δ
      i).subst e.images) := Expr.subst_subst _ _ _
    have hpa := Ω.profile_subst_path hw ht e.typed
    have hpg := subst_profile_path hw hA hΔ δ hδ
    by_cases ha : Ω.profile ((Expr.var i).subst (fun i => (δ i).subst e.images)) ∈ C
    swap
    · rw [eval_outside Ω C (.inr ha),R_outside Ω C hw (.sorted ht) e (.inr (by rwa [he])),he]
      cases dir <;> exact Set.Subset.rfl
    have hg : Profile P Γ (Expr.var i) ∈ C := by
      obtain ⟨K,hK,hpath⟩ := hrel
      rw [he] at hpa
      exact hC.between ha hK (hpa.reach.trans hpg.reach) hpath
    have hp : Profile P Δ ((Expr.var i).subst δ) ∈ C := by
      rw [he] at hpa
      exact hC.between ha hg hpa.reach hpg.reach
    exact neutral_compare Ω C hw hA hΔ δ hδ e θ dir rfl hg hp ha hb
  | app f n ihf ihn =>
    have ht := hA.subst hΔ δ hδ
    have he : (((Expr.app f n).subst δ).subst e.images) = (Expr.app f n).subst (fun i => (δ
      i).subst e.images) := Expr.subst_subst _ _ _
    have hpa := Ω.profile_subst_path hw ht e.typed
    have hpg := subst_profile_path hw hA hΔ δ hδ
    by_cases ha : Ω.profile ((Expr.app f n).subst (fun i => (δ i).subst e.images)) ∈ C
    swap
    · rw [eval_outside Ω C (.inr ha),R_outside Ω C hw (.sorted ht) e (.inr (by rwa [he])),he]
      cases dir <;> exact Set.Subset.rfl
    have hg : Profile P Γ (Expr.app f n) ∈ C := by
      obtain ⟨K,hK,hpath⟩ := hrel
      rw [he] at hpa
      exact hC.between ha hK (hpa.reach.trans hpg.reach) hpath
    have hp : Profile P Δ ((Expr.app f n).subst δ) ∈ C := by
      rw [he] at hpa
      exact hC.between ha hg hpa.reach hpg.reach
    obtain ⟨i,hi⟩ := normal_app_head hA hN
    exact neutral_compare Ω C hw hA hΔ δ hδ e θ dir hi hg hp ha hb
  | sort a =>
    have ht := hA.subst hΔ δ hδ
    have he : (((Expr.sort a).subst δ).subst e.images) = (Expr.sort a).subst (fun i => (δ
      i).subst e.images) := Expr.subst_subst _ _ _
    have hpa := Ω.profile_subst_path hw ht e.typed
    have hpg := subst_profile_path hw hA hΔ δ hδ
    by_cases ha : Ω.profile ((Expr.sort a).subst (fun i => (δ i).subst e.images)) ∈ C
    swap
    · rw [eval_outside Ω C (.inr ha),R_outside Ω C hw (.sorted ht) e (.inr (by rwa [he])),he]
      cases dir <;> exact Set.Subset.rfl
    have hg : Profile P Γ (Expr.sort a) ∈ C := by
      obtain ⟨K,hK,hpath⟩ := hrel
      rw [he] at hpa
      exact hC.between ha hK (hpa.reach.trans hpg.reach) hpath
    have hp : Profile P Δ ((Expr.sort a).subst δ) ∈ C := by
      rw [he] at hpa
      exact hC.between ha hg hpa.reach hpg.reach
    rw [eval_sort,Expr.subst,R_sort]
    cases dir <;> exact Set.Subset.rfl
  | lam D m ihD ihm =>
    have ht := hA.subst hΔ δ hδ
    have he : (((Expr.lam D m).subst δ).subst e.images) = (Expr.lam D m).subst (fun i => (δ
      i).subst e.images) := Expr.subst_subst _ _ _
    have hpa := Ω.profile_subst_path hw ht e.typed
    have hpg := subst_profile_path hw hA hΔ δ hδ
    by_cases ha : Ω.profile ((Expr.lam D m).subst (fun i => (δ i).subst e.images)) ∈ C
    swap
    · rw [eval_outside Ω C (.inr ha),R_outside Ω C hw (.sorted ht) e (.inr (by rwa [he])),he]
      cases dir <;> exact Set.Subset.rfl
    have hg : Profile P Γ (Expr.lam D m) ∈ C := by
      obtain ⟨K,hK,hpath⟩ := hrel
      rw [he] at hpa
      exact hC.between ha hK (hpa.reach.trans hpg.reach) hpath
    have hp : Profile P Δ ((Expr.lam D m).subst δ) ∈ C := by
      rw [he] at hpa
      exact hC.between ha hg hpa.reach hpg.reach
    exact False.elim hA.lambda_cannot_have_sort_type
  | pi D E ihD ihE =>
    have ht := hA.subst hΔ δ hδ
    have he : (((Expr.pi D E).subst δ).subst e.images) = (Expr.pi D E).subst (fun i => (δ
      i).subst e.images) := Expr.subst_subst _ _ _
    have hpa := Ω.profile_subst_path hw ht e.typed
    have hpg := subst_profile_path hw hA hΔ δ hδ
    by_cases ha : Ω.profile ((Expr.pi D E).subst (fun i => (δ i).subst e.images)) ∈ C
    swap
    · rw [eval_outside Ω C (.inr ha),R_outside Ω C hw (.sorted ht) e (.inr (by rwa [he])),he]
      cases dir <;> exact Set.Subset.rfl
    have hg : Profile P Γ (Expr.pi D E) ∈ C := by
      obtain ⟨K,hK,hpath⟩ := hrel
      rw [he] at hpa
      exact hC.between ha hK (hpa.reach.trans hpg.reach) hpath
    have hp : Profile P Δ ((Expr.pi D E).subst δ) ∈ C := by
      rw [he] at hpa
      exact hC.between ha hg hpa.reach hpg.reach
    obtain ⟨a,b,c,hD,hE,hr,_⟩ := hA.generation_pi
    have hDn := hN.pi_domain
    have hEn := hN.pi_body
    have tr := Profile.triple hw hA
    have relD : ∃ K ∈ C, Reach (PrimaryEdge P) (Profile P Γ D) K := ⟨_,hg,.single (.domain tr)⟩
    have relE : ∃ K ∈ C, Reach (PrimaryEdge P) (Profile P (D :: Γ) E) K := ⟨_,hg,.single
      (.codomain tr)⟩
    have hδD := hD.subst hΔ δ hδ
    have dom := ihD hD hDn relD hΔ δ hδ e θ (!dir) (bits_domain C hg hb)
    have body (n : Expr S) (hn : n ∈ R Ω C (D.subst δ) e) (bit : Bool) :
        Below dir (eval Ω C (D :: Γ) E (Expr.extend (fun i => (δ i).subst e.images) n)
          (extendBit θ bit))
          (eval Ω C (D.subst δ :: Δ) (E.subst (Expr.liftSub δ)).normalForm
            (Expr.extend e.images n) (extendBit e.bits bit)) := by
      have hrawD := ContextTower.HasType.subst hδD e.typed
      have hnt := ((R_candidate Ω C hw (.sorted hδD) e).upper hn).1.conversion hrawD
        (.symm _ _ (Expr.normalForm_spec (hrawD.weaklyNormalizing hw)).1.converts)
      let f : Environment Ω (D.subst δ :: Δ) := ⟨Expr.extend e.images n,e.typed.cons
        hnt,extendBit e.bits bit⟩
      have hbody := ihE hE hEn relE (.cons hΔ hδD) (Expr.liftSub δ) (hδ.lift hδD)
        f (extendBit θ bit) dir (bits_body C hw hno hA hg hb bit)
      have hei : (fun i => (Expr.liftSub δ i).subst f.images) = Expr.extend (fun i => (δ
        i).subst e.images) n := by
        funext i
        cases i with
        | zero => rfl
        | succ i => exact Expr.subst_raise_extend (δ i) n e.images
      rw [hei] at hbody
      exact hbody
    rw [eval_pi, if_pos ⟨hg, ha⟩, R, Expr.subst,
      normal_product Ω C hw ht _ e.typed e.bits, if_pos ⟨hp, by
        change Ω.profile (((Expr.pi D E).subst δ).subst e.images) ∈ C
        rwa [he]⟩]
    change Below dir (RawProduct Ω D E _ _ _) (RawProduct Ω (D.subst δ) (E.subst (Expr.liftSub
      δ)) e.images _ _)
    have hraw : ((Expr.pi (D.subst δ) (E.subst (Expr.liftSub δ))).subst e.images).normalForm =
        ((Expr.pi D E).subst (fun i => (δ i).subst e.images)).normalForm := congrArg
          Expr.normalForm he
    cases dir with
    | false =>
      intro h hh
      refine ⟨hraw.symm ▸ hh.1,?_⟩
      intro n hn bit
      exact body n hn bit (hh.2 n (dom hn) bit)
    | true =>
      intro h hh
      refine ⟨hraw ▸ hh.1,?_⟩
      intro n hn bit
      exact body n (dom hn) bit (hh.2 n (dom hn) bit)

end

universe u
open Candidates
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) (C : Set (Set S))
variable (hw : SystemWeaklyNormalizing P) (hC : IsComponent (PrimaryEdge P) C)
variable (hno : ∀ {I J K}, ProfileTriple P I J K → I ∈ C → J ∈ C → K ∈ C → False)
include hw hC hno

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
