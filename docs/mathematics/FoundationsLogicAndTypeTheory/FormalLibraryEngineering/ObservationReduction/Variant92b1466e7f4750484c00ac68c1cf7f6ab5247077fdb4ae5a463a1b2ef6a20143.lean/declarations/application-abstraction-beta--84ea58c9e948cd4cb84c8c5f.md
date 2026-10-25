# application_abstraction_beta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a87f0cbb-6053-bf04-1099-9a04afc1c075",
  "kind": "theorem",
  "lexical_name": "application_abstraction_beta",
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
  "slug": "application-abstraction-beta--84ea58c9e948cd4cb84c8c5f",
  "source": {
    "blob": "3083cf86771e4628de8f5aac5999317f4f8d9520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ea58c9e948cd4cb84c8c5f4547d1ca4c4a4ae440e279bd8f71c2d5fb09656f",
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

Occurrence: `result:a87f0cbb-6053-bf04-1099-9a04afc1c075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem application_abstraction_beta {Γ : List (Expr S)} {D m E A B n T : Expr S} {a s : S}
    (ht : HasType P Γ (.app (.lam D m) n) T)
    (hf : HasType P Γ (.lam D m) (.pi A B))
    (d : TypingTree P Γ D (.sort a)) (b : TypingTree P (D :: Γ) m E)
    (hp : HasType P Γ (.pi D E) (.sort s)) (hcF : Converts (.pi A B) (.pi D E))
    (nt : TypingTree P Γ n A) (hc : Converts T (B.instantiate n))
    (hC : IsComponent (PrimaryEdge P) C) (e : Environment (hw := hw) Ω C hno Γ)
    (hF : ActiveLayer P C (Ω.profile ((Expr.pi A B).subst e.images).normalForm))
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)) :
    ∃ (hnD : Ω.HasType (n.subst e.images) (D.subst e.images))
      (hpp : PayloadFits Ω C hno (D.subst e.images).normalForm (preEvaluate Ω C hno nt e).parameter)
      (hb : ActiveLayer P C (Ω.profile (E.subst (Expr.consSub (n.subst e.images)
        e.images)).normalForm)),
      (Ω.profile (D.subst e.images) ∈ ObservationLayers P C → ActiveLayer P C (Ω.profile
        (D.subst e.images))) ∧
      ((preEvaluate Ω C hno (.application ht (.abstraction hf d b hp hcF) nt hc) e).val ha).val =
        ((preEvaluate Ω C hno b (e.cons hnD (preEvaluate Ω C hno nt e).parameter hpp)).val
          hb).val := by
  obtain ⟨k,hpk,hkn,hkD,hval⟩ := PreResult.application_frame ht hf nt.typing hc
    (preEvaluate Ω C hno (.abstraction hf d b hp hcF)) (preEvaluate Ω C hno nt) e hF ha
  have hnD : HasType P Γ n D := .conversion nt.typing d.typing hcF.product_compatibility.1
  have hAD := e.type_convert_eq nt.typing hnD hcF.product_compatibility.1
  have hpp : PayloadFits Ω C hno (D.subst e.images).normalForm (preEvaluate Ω C hno nt
    e).parameter :=
    hAD ▸ (preEvaluate Ω C hno nt e).parameter_fits
  have hbT : Converts T (E.instantiate n) := .trans _ _ _ hc
    (hcF.product_compatibility.2.subst (Expr.single n))
  have heT := e.type_convert_eq ht (b.typing.instantiate hnD) hbT
  have heT' : (T.subst e.images).normalForm =
      (E.subst (Expr.consSub (n.subst e.images) e.images)).normalForm := by
    simpa only [Expr.instantiate,Expr.subst_compSub,Expr.comp_single] using heT
  have hb : ActiveLayer P C (Ω.profile (E.subst (Expr.consSub (n.subst e.images)
    e.images)).normalForm) := heT' ▸ ha
  refine ⟨ContextTower.HasType.subst hnD e.typed,hpp,hb,?_,?_⟩
  · intro hH
    have heD : Ω.profile k.domain = Ω.profile (D.subst e.images) := by rw [hkD,hAD,
      Ω.profile_normalForm]
    rw [← heD]
    exact k.domain_active hw (heD.symm ▸ hH)
  · obtain ⟨F,hB⟩ := preEvaluate_uniform Ω C hno hC b
    refine hval.trans ?_
    rw [show ((preEvaluate Ω C hno (.abstraction hf d b hp hcF) e).val hF) =
      (PreResult.abstraction hf hp hcF (preEvaluate Ω C hno b) e).val hF from rfl,
      PreResult.abstraction_beta hf hp hcF _ hB e hF k _ hpk]
    apply PreResult.abstractionAction_raw hf hp hcF b hC e hF k _ hpk
      (n.subst e.images) (ContextTower.HasType.subst hnD e.typed) hpp _ hb
    rw [hkn]
    exact .symm _ _ (Expr.normalForm_spec ((ContextTower.HasType.subst nt.typing
      e.typed).weaklyNormalizing hw)).1.converts

open Classical in
/-- Exact tree transport at a fixed root expectation. Only good observations
are equated; raw environments and values are otherwise unrestricted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3083cf86771e4628de8f5aac5999317f4f8d9520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
