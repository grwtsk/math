# product_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f32d44-fc0a-dd52-2f0a-2c6fea56fb67",
  "kind": "theorem",
  "lexical_name": "product_transport",
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
  "slug": "product-transport--807d873f16841caf627f4885",
  "source": {
    "blob": "11985729aaad9d89a13e6e6f8bcce6ff1f8486fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant02d243d623529e15bad0954aa13f01d2e197a034e01d9e3ef78809cd0c691b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:807d873f16841caf627f48856113b6bd9a9c98f21c8e23a81469301b97a89f4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant02d243d623529e15bad0954aa13f01d2e197a034e01d9e3ef78809cd0c691b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f32d44-fc0a-dd52-2f0a-2c6fea56fb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_transport {Γ : List (Expr S)} {D E D' E' T : Expr S} {a q c : S}
    (ht : HasType P Γ (.pi D E) T) (ht' : HasType P Γ (.pi D' E') T)
    (d : TypingTree P Γ D (.sort a)) (d' : TypingTree P Γ D' (.sort a))
    (b : TypingTree P (D :: Γ) E (.sort q)) (b' : TypingTree P (D' :: Γ) E' (.sort q))
    (hr : P.rule a q c) (hc : Converts T (.sort c))
    (hD : Converts D D') (hE : Converts E E')
    (hd : ∀ (e : Environment (hw := hw) Ω C hno Γ), ReadGood Ω C d e.images →
      ReadGood Ω C d' e.images ∧ (preEvaluate Ω C hno d e).read.val = (preEvaluate Ω C hno d'
        e).read.val)
    (hb : ∀ (e : Environment (hw := hw) Ω C hno Γ) n
      (hn : Ω.HasType n (D.subst e.images)) (hn' : Ω.HasType n (D'.subst e.images))
      p hpp hpp', ReadGood Ω C b (e.cons hn p hpp).images →
        ReadGood Ω C b' (e.cons hn' p hpp').images ∧
        (preEvaluate Ω C hno b (e.cons hn p hpp)).read.val =
        (preEvaluate Ω C hno b' (e.cons hn' p hpp')).read.val) :
    GoodTransport (hw := hw) Ω C hno (.product ht d b hr hc) (.product ht' d' b' hr hc) := by
  have hdata (e : Environment (hw := hw) Ω C hno Γ) :
      (D.subst e.images).normalForm = (D'.subst e.images).normalForm ∧
      (E.subst (Expr.liftSub e.images)).normalForm = (E'.subst (Expr.liftSub
        e.images)).normalForm := by
    have hpi := e.expression_convert_eq ht ht' (.pi hD hE)
    have hwp := (ContextTower.HasType.subst ht e.typed).weaklyNormalizing hw
    have hwp' := (ContextTower.HasType.subst ht' e.typed).weaklyNormalizing hw
    rw [Expr.subst,Expr.subst,Expr.normalForm_pi hwp.pi_domain hwp.pi_body,
      Expr.normalForm_pi hwp'.pi_domain hwp'.pi_body] at hpi
    exact Expr.pi.inj hpi
  have hchildren (e : Environment (hw := hw) Ω C hno Γ)
      (hg : ProductGood Ω C d b e.images) :
      ProductGood Ω C d' b' e.images ∧
      (PreResult.productCandidate d.typing b.typing hr (preEvaluate Ω C hno d) (preEvaluate Ω
        C hno b) e).val =
      (PreResult.productCandidate d'.typing b'.typing hr (preEvaluate Ω C hno d') (preEvaluate
        Ω C hno b') e).val := by
    have hnold {n : Expr S} (hn : Ω.HasType n (D'.subst e.images)) : Ω.HasType n (D.subst
      e.images) :=
      .conversion hn (ContextTower.HasType.subst d.typing e.typed) (.symm _ _ (hD.subst e.images))
    have hEeq (n : Expr S) (hn : Ω.HasType n (D'.subst e.images)) :
        (E.subst (Expr.consSub n e.images)).normalForm = (E'.subst (Expr.consSub n
          e.images)).normalForm :=
      Expr.normalForm_converts ((ContextTower.HasType.subst b.typing (e.typed.cons (hnold
        hn))).weaklyNormalizing hw)
        ((ContextTower.HasType.subst b'.typing (e.typed.cons hn)).weaklyNormalizing hw)
        (hE.subst (Expr.consSub n e.images))
    refine ⟨⟨?_,?_⟩,?_⟩
    · intro hD'
      apply (hd e (hg.1 ?_)).1
      rw [← Ω.profile_normalForm,(hdata e).1,Ω.profile_normalForm]
      exact hD'
    · intro n hn hE'
      have hEold : Ω.profile (E.subst (Expr.consSub n e.images)) ∈ C := by
        rw [← Ω.profile_normalForm,hEeq n hn,Ω.profile_normalForm]; exact hE'
      obtain ⟨p,hp⟩ := PayloadFits.exists_of_actual (hw := hw) (C := C) (hno := hno)
        (e.actualExpression d.typing)
      have hp' : PayloadFits Ω C hno (D'.subst e.images).normalForm p := (hdata e).1 ▸ hp
      have hh := (hb e n (hnold hn) hn p hp hp' (by
        simpa only [Environment.cons_images] using hg.2 n (hnold hn) hEold)).1
      simpa only [Environment.cons_images] using hh
    · apply PreResult.productCandidate_congr d.typing b.typing hr d'.typing b'.typing hr _ _ _ _ e e
        (hdata e).1 (hdata e).2
      · intro hD
        exact (hd e (hg.1 (by simpa only [Ω.profile_normalForm] using hD))).2
      · intro n hn hn' p hp hp' hE
        exact (hb e n hn hn' p hp hp' (hg.2 n hn
          (by simpa only [Ω.profile_normalForm,Environment.cons_images] using hE))).2
  constructor
  · intro e ha hg
    have hM := e.expression_convert_eq ht ht' (.pi hD hE)
    refine ⟨?_,?_⟩
    · intro hgate
      exact (hchildren e (hg ⟨hgate.1,by
        rw [← Ω.profile_normalForm,hM,Ω.profile_normalForm]; exact hgate.2⟩)).1
    · by_cases hs : ({c} : Set S) ∈ C
      · apply PreResult.product_val_congr ht ht' d.typing b.typing hr d'.typing b'.typing hr hc hc
          _ _ _ _ e e rfl hM Iff.rfl
        intro hm
        exact (hchildren e (hg ⟨hs,by simpa only [Ω.profile_normalForm] using hm⟩)).2
      · have hgate : ¬ (({c} : Set S) ∈ C ∧ Ω.profile ((Expr.pi D E).subst
        e.images).normalForm ∈ C) :=
          fun h => hs h.1
        have hgate' : ¬ (({c} : Set S) ∈ C ∧ Ω.profile ((Expr.pi D' E').subst
          e.images).normalForm ∈ C) :=
          fun h => hs h.1
        simp only [preEvaluate,PreResult.product,dif_neg hgate,dif_neg hgate']
  · intro e hg
    have hM := e.expression_convert_eq ht ht' (.pi hD hE)
    refine ⟨?_,?_⟩
    · intro hm
      exact (hchildren e (hg (by rw [← Ω.profile_normalForm,hM,Ω.profile_normalForm]; exact hm))).1
    · apply PreResult.product_read_congr ht ht' d.typing b.typing hr d'.typing b'.typing hr hc hc
        _ _ _ _ e e hM
      intro hm
      exact (hchildren e (hg (by simpa only [Ω.profile_normalForm] using hm))).2
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant02d243d623529e15bad0954aa13f01d2e197a034e01d9e3ef78809cd0c691b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant02d243d623529e15bad0954aa13f01d2e197a034e01d9e3ef78809cd0c691b2b.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11985729aaad9d89a13e6e6f8bcce6ff1f8486fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
