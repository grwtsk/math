# specialization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b832725-3913-72a5-0eb0-9f8f359979a6",
  "kind": "theorem",
  "lexical_name": "specialization",
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
  "slug": "specialization--d651e3a5bb4e560e2e18b7a1",
  "source": {
    "blob": "230cae76f88c4053bec60af05b705e7422ee3438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d651e3a5bb4e560e2e18b7a14d232cdbd91df8b6db59a9f09d91b263487a6915",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b832725-3913-72a5-0eb0-9f8f359979a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem specialization {Γ : List (Expr S)} {D E N : Expr S} {s : S}
    (e : Environment (hw := hw) Ω C hno Γ) (hp : HasType P Γ (.pi D E) (.sort s))
    (hN : HasType P Γ N D) (hg : Profile P Γ (.pi D E) ∈ C)
    (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C) (h : Expr S)
    (hh : h ∈ R Ω C hno (.pi D E) e) (hn : N.subst e.images ∈ R Ω C hno D e) :
    Expr.app h (N.subst e.images) ∈ R Ω C hno (E.instantiate N) e := by
  obtain ⟨a,b,c,hD,hE,hr,_⟩ := hp.generation_pi
  have hNN := hN.normalForm hw
  let n := TypingTree.ofTyping hNN
  let pn := (preEvaluate Ω C hno n e).parameter
  have pp := (preEvaluate Ω C hno n e).parameter_fits
  let f := e.cons (ContextTower.HasType.subst hN e.typed) pn pp
  let g := e.cons (ContextTower.HasType.subst hNN e.typed) pn pp
  have hm := ((product_iff Ω C hno hC hp hg e ha h).mp hh).2 (N.subst e.images) hn f
    (e.cons_ext _ pn pp)
  have hnE := (Expr.normalForm_spec (hE.weaklyNormalizing hw)).2
  have hnN := (Expr.normalForm_spec (hN.weaklyNormalizing hw)).2
  have cE := (Expr.normalForm_spec (hE.weaklyNormalizing hw)).1.converts
  have cN := (Expr.normalForm_spec (hN.weaklyNormalizing hw)).1.converts
  have hp' : HasType P Γ (.pi D E.normalForm) (.sort c) := .product hD (hE.normalForm hw) hr
  have cP : Converts (.pi D E) (.pi D E.normalForm) := .pi (.refl _) cE
  have cT : Converts (E.instantiate N) (E.normalForm.instantiate N.normalForm) :=
    .trans _ _ _ (cE.subst (Expr.single N)) (cN.instantiate_right E.normalForm)
  have hT := hE.instantiate hN
  have hT' := (hE.normalForm hw).instantiate hNN
  have hRT := R_sorted_conversion Ω C hno hT hT' cT e
  by_cases htC : Ω.profile ((E.normalForm.instantiate N.normalForm).subst e.images) ∈ C
  · have hgg := Profile.converts (P := P) (Γ := Γ) (hp.weaklyNormalizing hw)
      (hp'.weaklyNormalizing hw) cP
    have haa := Ω.profile_converts ((ContextTower.HasType.subst hp e.typed).weaklyNormalizing hw)
      ((ContextTower.HasType.subst hp' e.typed).weaklyNormalizing hw) (cP.subst e.images)
    have hfg : f.Compatible g := by
      constructor
      · intro i hi
        cases i with
        | zero => exact cN.subst e.images
        | succ i => exact .refl _
      · intro i hi; cases i <;> rfl
    have hrE := (R_normalForm Ω C hno (.sorted hE) f).trans
      ((R_compatible Ω C hno hC (.sorted (hE.normalForm hw)) f g hfg).trans
      (R_instantiate_normal Ω C hno hC hD (hE.normalForm hw) hr n hnE hnN e (hgg ▸ hg) (haa ▸
        ha) htC))
    exact hRT.symm ▸ (hrE ▸ hm)
  · have hmem := (R_candidate Ω C hno E f).upper hm
    have he : (E.subst f.images).normalForm = ((E.instantiate N).subst e.images).normalForm := by
      congr 1
      rw [← Expr.instantiate_subst,Expr.instantiate_liftSub]
      rfl
    have hnf := Expr.normalForm_converts ((ContextTower.HasType.subst hT
      e.typed).weaklyNormalizing hw)
      ((ContextTower.HasType.subst hT' e.typed).weaklyNormalizing hw) (cT.subst e.images)
    rw [hRT,R_outside Ω C hno _ e (.inr htC)]
    exact (hnf ▸ he ▸ hmem)

end

universe u
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

open Classical in
/-- The actual observation interpretation, with arbitrary typed raw images and
all matching payload extensions. No component interface law is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230cae76f88c4053bec60af05b705e7422ee3438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
