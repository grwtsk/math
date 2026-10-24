# root_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12062,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e80c5adf-cbb5-f9ec-e130-fced37d153a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f383b79b-aaf2-c726-5ae4-4e08b083f3f3",
  "kind": "theorem",
  "lexical_name": "root_transport",
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
  "slug": "root-transport--da1b51b3fee018107217e74f",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12136,
    "line": 12062,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1b51b3fee018107217e74fea72f3d09168de66027a408464ee0f83aee33030",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f383b79b-aaf2-c726-5ae4-4e08b083f3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12062–12136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem root_transport {Γ : List (Expr S)} {D m E A B n T : Expr S} {a s : S}
    (ht : HasType P Γ (.app (.lam D m) n) T)
    (hf : HasType P Γ (.lam D m) (.pi A B))
    (d : TypingTree P Γ D (.sort a)) (b : TypingTree P (D :: Γ) m E)
    (hp : HasType P Γ (.pi D E) (.sort s)) (hcF : Converts (.pi A B) (.pi D E))
    (nt : TypingTree P Γ n A) (hc : Converts T (B.instantiate n))
    (hC : IsComponent (PrimaryEdge P) C) :
    ∃ t' : TypingTree P Γ (m.instantiate n) T,
      GoodTransport (hw := hw) Ω C hno (.application ht (.abstraction hf d b hp hcF) nt hc) t' := by
  have hnD : HasType P Γ n D := .conversion nt.typing d.typing hcF.product_compatibility.1
  let ntD := nt.retarget hnD (.symm _ _ hcF.product_compatibility.1)
  let ts := TypingTree.StoredSubstitution.single ntD
  let bt := b.subst ht.valid (Expr.single n) ts
  have ht' := ht.subject_reduction (.head D m n)
  have hc' : Converts T (E.instantiate n) := .trans _ _ _ hc (hcF.product_compatibility.2.subst (Expr.single n))
  let t' := bt.retarget ht' hc'
  refine ⟨t',?_⟩
  have hval : ∀ (e : Environment (hw := hw) Ω C hno Γ)
      (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)),
      ValGood Ω C (.application ht (.abstraction hf d b hp hcF) nt hc) e.images →
      ValGood Ω C t' e.images ∧
      ((preEvaluate Ω C hno (.application ht (.abstraction hf d b hp hcF) nt hc) e).val ha).val =
        ((preEvaluate Ω C hno t' e).val ha).val := by
    intro e ha hg
    have hF : ActiveLayer P C (Ω.profile ((Expr.pi A B).subst e.images)) := by
      by_contra hh
      change (if ActiveLayer P C (Ω.profile ((Expr.pi A B).subst e.images)) then _ else _) at hg
      rw [ite_eq_right hh] at hg
      cases hg with | app hf => cases hf
    change (if ActiveLayer P C (Ω.profile ((Expr.pi A B).subst e.images)) then _ else _) at hg
    rw [ite_eq_left hF] at hg
    obtain ⟨hraw,hpp,hbody,hguard,hbeta⟩ := application_abstraction_beta Ω C hno ht hf d b hp hcF nt hc hC e
      (by simpa only [Ω.profile_normalForm] using hF) ha
    let er := e.cons (ContextTower.HasType.subst hnD e.typed) (preEvaluate Ω C hno ntD e).parameter
      (preEvaluate Ω C hno ntD e).parameter_fits
    have herimages : er.images = Expr.consSub (n.subst e.images) e.images := by
      funext i; cases i <;> rfl
    have hpEq : (preEvaluate Ω C hno nt e).parameter = (preEvaluate Ω C hno ntD e).parameter :=
      preEvaluate_retarget_parameter Ω C hno nt hnD (.symm _ _ hcF.product_compatibility.1) e
    have heren : (e.cons hraw (preEvaluate Ω C hno nt e).parameter hpp).Compatible er := by
      constructor
      · intro i hi; exact .refl _
      · intro i hi; cases i with
        | zero => exact hpEq
        | succ i => rfl
    have hgoodB : ValGood Ω C b er.images := hg.1 (n.subst e.images) hraw
      (by simpa only [Ω.profile_normalForm] using hbody)
    have heT := e.type_convert_eq ht bt.typing hc'
    have haBt : ActiveLayer P C (Ω.profile ((E.instantiate n).subst e.images).normalForm) := heT ▸ ha
    have hsGuard : SubstitutionGuard Ω C (D :: Γ) (Expr.single n) er.images := single_guard Ω C e.images hguard
    have hgoodN : GoodReplacement Ω C ts e.images := single_goodReplacement Ω C ntD e.images (by
      intro hD
      apply (valGood_retarget Ω C nt hnD (.symm _ _ hcF.product_compatibility.1) e.images).mpr
      apply hg.2
      have heD := e.type_convert_eq nt.typing hnD hcF.product_compatibility.1
      rw [← Ω.profile_normalForm,heD,Ω.profile_normalForm]
      exact hD)
    have hgoodBt : ValGood Ω C bt e.images := (goodness_subst Ω C hw b ht.valid (Expr.single n) ts e.images e.typed
      (by simpa only [Expr.comp_single,←herimages] using hsGuard) hgoodN).1
      (by simpa only [Expr.comp_single,Ω.profile_normalForm] using hbody)
      (by simpa only [Expr.comp_single,←herimages] using hgoodB)
    refine ⟨(valGood_retarget Ω C bt ht' hc' e.images).mpr hgoodBt,?_⟩
    refine hbeta.trans (Eq.trans ?_ (preEvaluate_retarget_val Ω C hno bt ht' hc' e haBt ha))
    refine Eq.trans (PreResult.val_congr _ _ (preEvaluate_compatible Ω C hno hC b _ _ heren).1 hbody hbody) ?_
    exact (preEvaluate_subst Ω C hno b ht.valid (Expr.single n) ts er e (single_assigned Ω C hno ntD e) hsGuard).1
      hbody haBt hgoodB
  refine ⟨hval,?_⟩
  intro e hr
  apply baseRead_transport Ω C hno ht t' e
    (e.expression_convert_eq ht ht' (.rel _ _ (.head D m n)))
    (fun h => by cases h with | app hf => cases hf) _ _ hr
  exact hval e

namespace Environment
variable {Ω C hno} {Γ : List (Expr S)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L12062).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
