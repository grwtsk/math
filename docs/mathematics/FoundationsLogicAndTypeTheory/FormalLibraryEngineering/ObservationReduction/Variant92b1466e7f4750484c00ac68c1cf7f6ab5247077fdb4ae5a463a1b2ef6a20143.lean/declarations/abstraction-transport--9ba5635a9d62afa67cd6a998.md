# abstraction_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f757058-7703-ff80-91f0-a14d1083fd28",
  "kind": "theorem",
  "lexical_name": "abstraction_transport",
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
  "slug": "abstraction-transport--9ba5635a9d62afa67cd6a998",
  "source": {
    "blob": "3083cf86771e4628de8f5aac5999317f4f8d9520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 522,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ba5635a9d62afa67cd6a998be941789ad43f059cdfeb7afeefa4c3152bdaab6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f757058-7703-ff80-91f0-a14d1083fd28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstraction_transport {Γ : List (Expr S)} {D m E D' m' E' T : Expr S} {a a' s s' : S}
    (ht : HasType P Γ (.lam D m) T) (ht' : HasType P Γ (.lam D' m') T)
    (d : TypingTree P Γ D (.sort a)) (d' : TypingTree P Γ D' (.sort a'))
    (b : TypingTree P (D :: Γ) m E) (b' : TypingTree P (D' :: Γ) m' E')
    (hp : HasType P Γ (.pi D E) (.sort s)) (hp' : HasType P Γ (.pi D' E') (.sort s'))
    (hc : Converts T (.pi D E)) (hc' : Converts T (.pi D' E'))
    (hD : Converts D D') (hm : Converts m m') (hE : Converts E E')
    (hb : ∀ (e : Environment (hw := hw) Ω C hno Γ) n
      (hn : Ω.HasType n (D.subst e.images)) (hn' : Ω.HasType n (D'.subst e.images))
      p hpp hpp' ha ha', ValGood Ω C b (e.cons hn p hpp).images →
        ValGood Ω C b' (e.cons hn' p hpp').images ∧
        ((preEvaluate Ω C hno b (e.cons hn p hpp)).val ha).val =
        ((preEvaluate Ω C hno b' (e.cons hn' p hpp')).val ha').val) :
    GoodTransport (hw := hw) Ω C hno (.abstraction ht d b hp hc) (.abstraction ht' d' b' hp'
      hc') := by
  have hval : ∀ (e : Environment (hw := hw) Ω C hno Γ)
      (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)),
      ValGood Ω C (.abstraction ht d b hp hc) e.images →
      ValGood Ω C (.abstraction ht' d' b' hp' hc') e.images ∧
      ((preEvaluate Ω C hno (.abstraction ht d b hp hc) e).val ha).val =
      ((preEvaluate Ω C hno (.abstraction ht' d' b' hp' hc') e).val ha).val := by
    intro e ha hg
    have hnold {n : Expr S} (hn : Ω.HasType n (D'.subst e.images)) : Ω.HasType n (D.subst
      e.images) :=
      .conversion hn (ContextTower.HasType.subst d.typing e.typed) (.symm _ _ (hD.subst e.images))
    have hEeq (n : Expr S) (hn : Ω.HasType n (D'.subst e.images)) :
        (E.subst (Expr.consSub n e.images)).normalForm = (E'.subst (Expr.consSub n
          e.images)).normalForm :=
      Expr.normalForm_converts ((ContextTower.HasType.subst b.typing (e.typed.cons (hnold
        hn))).type_weaklyNormalizing hw)
        ((ContextTower.HasType.subst b'.typing (e.typed.cons hn)).type_weaklyNormalizing hw)
        (hE.subst (Expr.consSub n e.images))
    refine ⟨?_,?_⟩
    · intro n hn ha'
      have haold : ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n e.images)).normalForm) := by
        rw [hEeq n hn,Ω.profile_normalForm]; exact ha'
      obtain ⟨pa,hpD⟩ := PayloadFits.exists_of_actual (hw := hw) (C := C) (hno := hno)
        (e.actualExpression d.typing)
      have hDD := e.expression_convert_eq d.typing d'.typing hD
      have hpD' : PayloadFits Ω C hno (D'.subst e.images).normalForm pa := hDD ▸ hpD
      exact (hb e n (hnold hn) hn pa hpD hpD' haold
        (by simpa only [Ω.profile_normalForm,Environment.cons_images] using ha') (hg n (hnold hn)
          (by simpa only [Ω.profile_normalForm] using haold))).1
    · apply PreResult.abstraction_val_congr ht ht' hp hp' hc hc' _ _ e e rfl
      intro n n' hn hn' he p hpp hpp' haB haB'
      subst n'
      exact (hb e n hn hn' p hpp hpp' haB haB' (hg n hn
        (by simpa only [Ω.profile_normalForm,Environment.cons_images] using haB))).2
  refine ⟨hval,?_⟩
  intro e hr
  apply baseRead_transport Ω C hno ht (.abstraction ht' d' b' hp' hc') e
    (e.expression_convert_eq ht ht' (.lam hD hm)) (fun hn => by cases hn) _ _ hr
  exact hval e
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3083cf86771e4628de8f5aac5999317f4f8d9520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
