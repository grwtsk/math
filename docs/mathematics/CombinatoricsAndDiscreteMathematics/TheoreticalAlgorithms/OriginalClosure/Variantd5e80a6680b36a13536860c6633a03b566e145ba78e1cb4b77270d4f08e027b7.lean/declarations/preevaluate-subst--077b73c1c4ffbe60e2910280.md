# preEvaluate_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce6bd7f5-48e7-8bbe-0ce2-18632d34bc6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b82f0786-233e-e23e-cef0-cae4e61f3dbc",
  "kind": "theorem",
  "lexical_name": "preEvaluate_subst",
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
  "slug": "preevaluate-subst--077b73c1c4ffbe60e2910280",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11603,
    "line": 11479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077b73c1c4ffbe60e291028051b820173feea725334476dfd8f4057958cdc630",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82f0786-233e-e23e-cef0-cae4e61f3dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11479–11603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem preEvaluate_subst {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (hΔ : ValidContext P Δ) (σ : Nat → Expr S)
    (ts : TypingTree.StoredSubstitution P Γ Δ σ)
    (e : Environment (hw := hw) Ω C hno Γ) (f : Environment (hw := hw) Ω C hno Δ)
    (he : e.Assigned f ts) (hg : SubstitutionGuard Ω C Γ σ e.images) :
    (∀ ha hb, ValGood Ω C t e.images →
      ((preEvaluate Ω C hno t e).val ha).val =
        ((preEvaluate Ω C hno (t.subst hΔ σ ts) f).val hb).val) ∧
    (ReadGood Ω C t e.images →
      (preEvaluate Ω C hno t e).read.val = (preEvaluate Ω C hno (t.subst hΔ σ ts) f).read.val) := by
  induction t generalizing Δ σ with
  | @var Γ i A T ht hd hc =>
      have hp : (preEvaluate Ω C hno (.var ht hd hc) e).parameter =
          (preEvaluate Ω C hno ((TypingTree.var ht hd hc).subst hΔ σ ts) f).parameter := by
        exact (PreResult.lookup_parameter ht hd hc e).trans
          ((he.parameters i A hd).trans (preEvaluate_retarget_parameter Ω C hno
            (ts i A hd) (ht.subst hΔ σ ts.typed) (hc.subst σ) f))
      have hv : ∀ ha hb, ValGood Ω C (.var ht hd hc) e.images →
          ((preEvaluate Ω C hno (.var ht hd hc) e).val ha).val =
            ((preEvaluate Ω C hno ((TypingTree.var ht hd hc).subst hΔ σ ts) f).val hb).val :=
        fun ha hb _ => PreResult.val_congr _ _ hp ha hb
      exact ⟨hv,fun hr => baseRead_substitution Ω C hno ht _ e f he.images hg _ _ hr hv⟩
  | sort ht ha hc =>
      exact ⟨fun _ _ _ => distinguished_congr Ω C hno (he.normal_eq _),
        fun _ => congrArg (Candidates.Top Ω) (he.normal_eq _)⟩
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hD := d.typing.subst hΔ σ ts.typed
      have hv : ∀ ha hb, ValGood Ω C (.abstraction ht d b hp hc) e.images →
          ((preEvaluate Ω C hno (.abstraction ht d b hp hc) e).val ha).val =
            ((preEvaluate Ω C hno ((TypingTree.abstraction ht d b hp hc).subst hΔ σ ts) f).val hb).val := by
        intro ha hb hgood
        apply PreResult.abstraction_val_congr ht (ht.subst hΔ σ ts.typed) hp
          (hp.subst hΔ σ ts.typed) hc (hc.subst σ) _ _ e f (he.normal_eq _)
        intro n n' hn hn' hnn p hp hp' ha' hb'
        subst n'
        have hae := he.cons hD n hn hn' p hp hp'
        have hgu : SubstitutionGuard Ω C (D :: Γ) (Expr.liftSub σ) (e.cons hn p hp).images := by
          rw [hae.images]
          apply SubstitutionGuard.lift
          rwa [← he.images]
        exact (ihb (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD)
          (e.cons hn p hp) (f.cons hn' p hp') hae hgu).1 ha' hb'
          (hgood n hn (by
            change ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n e.images)).normalForm) at ha'
            simpa only [Ω.profile_normalForm] using ha'))
      exact ⟨hv,fun hr => baseRead_substitution Ω C hno ht _ e f he.images hg _ _ hr hv⟩
  | @application Γ g n D E T ht gt nt hc ihg ihn =>
      have hv : ∀ ha hb, ValGood Ω C (.application ht gt nt hc) e.images →
          ((preEvaluate Ω C hno (.application ht gt nt hc) e).val ha).val =
            ((preEvaluate Ω C hno ((TypingTree.application ht gt nt hc).subst hΔ σ ts) f).val hb).val := by
        intro ha hb hgood
        by_cases hF : ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images))
        · change (if ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images)) then
            ValGood Ω C gt e.images ∧ (ActiveLayer P C (Ω.profile (D.subst e.images)) → ValGood Ω C nt e.images)
            else Neutral (.app g n)) at hgood
          rw [ite_eq_left hF] at hgood
          apply PreResult.application_val_congr ht (ht.subst hΔ σ ts.typed) gt.typing
            (gt.typing.subst hΔ σ ts.typed) nt.typing (nt.typing.subst hΔ σ ts.typed)
            hc _ _ _ _ _ e f (he.normal_eq _) (he.normal_eq _) (he.normal_eq _)
          · exact fun hA hB => (ihg hΔ σ ts e f he hg).1 hA hB hgood.1
          · apply PreResult.parameter_congr _ _ (he.normal_eq _)
            intro hA hB
            exact (ihn hΔ σ ts e f he hg).1 hA hB (hgood.2 (by simpa only [Ω.profile_normalForm] using hA))
        · have hF' : ¬ ActiveLayer P C (Ω.profile (((Expr.pi D E).subst σ).subst f.images).normalForm) := by
            rw [← he.normal_eq _ ,Ω.profile_normalForm]
            exact hF
          have hF0 : ¬ ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst e.images).normalForm) := by
            simpa only [Ω.profile_normalForm] using hF
          change ((PreResult.application ht gt.typing nt.typing hc _ _ e).val ha).val =
            ((PreResult.application (ht.subst hΔ σ ts.typed) (gt.typing.subst hΔ σ ts.typed)
              (nt.typing.subst hΔ σ ts.typed) _ _ _ f).val hb).val
          change ¬ ActiveLayer P C (Ω.profile ((Expr.pi (D.subst σ) (E.subst (Expr.liftSub σ))).subst f.images).normalForm) at hF'
          simp only [PreResult.application,PreResult.baseResult,PreResult.applicationValue,dite_eq_right hF0,dite_eq_right hF']
          exact distinguished_congr Ω C hno (he.normal_eq T)
      exact ⟨hv,fun hr => baseRead_substitution Ω C hno ht _ e f he.images hg _ _ hr hv⟩
  | @product Γ D E a b c T ht d bt hr hc ihd ihb =>
      have hD := d.typing.subst hΔ σ ts.typed
      have hB := bt.typing.subst (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD).typed
      have hpc : ProductGood Ω C d bt e.images →
          (PreResult.productCandidate d.typing bt.typing hr (preEvaluate Ω C hno d)
            (preEvaluate Ω C hno bt) e).val =
          (PreResult.productCandidate hD hB hr (preEvaluate Ω C hno (d.subst hΔ σ ts))
            (preEvaluate Ω C hno (bt.subst (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD))) f).val := by
        intro hgood
        have hDE := Expr.pi.inj (he.raw_eq (.pi D E))
        apply PreResult.productCandidate_congr d.typing bt.typing hr hD hB hr _ _ _ _ e f
          (congrArg Expr.normalForm hDE.1) (congrArg Expr.normalForm hDE.2)
        · intro hm
          exact (ihd hΔ σ ts e f he hg).2 (hgood.1 (by simpa only [Ω.profile_normalForm] using hm))
        · intro n hn hn' p hp hp' hm
          have hae := he.cons hD n hn hn' p hp hp'
          have hgu : SubstitutionGuard Ω C (D :: Γ) (Expr.liftSub σ) (e.cons hn p hp).images := by
            rw [hae.images]
            apply SubstitutionGuard.lift
            rwa [← he.images]
          exact (ihb (.cons hΔ hD) (Expr.liftSub σ) (ts.lift hD)
            (e.cons hn p hp) (f.cons hn' p hp') hae hgu).2
            (hgood.2 n hn (by
              change Ω.profile (E.subst (Expr.consSub n e.images)).normalForm ∈ C at hm
              simpa only [Ω.profile_normalForm] using hm))
      constructor
      · intro ha hb hv
        by_cases hs : ({c} : Set S) ∈ C
        · apply PreResult.product_val_congr ht (ht.subst hΔ σ ts.typed) d.typing bt.typing hr
            hD hB hr hc (hc.subst σ) _ _ _ _ e f (he.normal_eq _) (he.normal_eq _) Iff.rfl
          intro hm
          exact hpc (hv ⟨hs,by simpa only [Ω.profile_normalForm] using hm⟩)
        · have hgate : ¬ (({c} : Set S) ∈ C ∧ Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C) := fun h => hs h.1
          have hgate' : ¬ (({c} : Set S) ∈ C ∧ Ω.profile (((Expr.pi D E).subst σ).subst f.images).normalForm ∈ C) := fun h => hs h.1
          change ((PreResult.product ht d.typing bt.typing hr hc _ _ e).val ha).val =
            ((PreResult.product (ht.subst hΔ σ ts.typed) hD hB hr (hc.subst σ) _ _ f).val hb).val
          change ¬ (({c} : Set S) ∈ C ∧ Ω.profile ((Expr.pi (D.subst σ) (E.subst (Expr.liftSub σ))).subst f.images).normalForm ∈ C) at hgate'
          simp only [PreResult.product,dite_eq_right hgate,dite_eq_right hgate']
          exact distinguished_congr Ω C hno (he.normal_eq T)
      · intro hgood
        apply PreResult.product_read_congr ht (ht.subst hΔ σ ts.typed) d.typing bt.typing hr
          hD hB hr hc (hc.subst σ) _ _ _ _ e f (he.normal_eq _)
        intro hm
        exact hpc (hgood (by simpa only [Ω.profile_normalForm] using hm))
end PureTypeSystem.ObservationValues

namespace PureTypeSystem
universe u
namespace Expr
variable {S : Type u}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L11479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
