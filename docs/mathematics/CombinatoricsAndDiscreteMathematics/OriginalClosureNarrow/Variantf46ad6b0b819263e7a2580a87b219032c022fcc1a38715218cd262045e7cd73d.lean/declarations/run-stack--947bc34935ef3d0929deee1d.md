# run_stack

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
      "line": 4878,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b2eb88b-7073-f15e-6cab-427ec6985254",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7855c484-7c80-d347-12a8-316b80b9e226",
  "kind": "theorem",
  "lexical_name": "run_stack",
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
  "slug": "run-stack--947bc34935ef3d0929deee1d",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4931,
    "line": 4878,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:947bc34935ef3d0929deee1d16da62a491ba2dde0984aeb2c708d701482c53a8",
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

Occurrence: `result:7855c484-7c80-d347-12a8-316b80b9e226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4878–4931.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_stack {k : Nat} {e : J.Env (Ω.context k)}
    (he : J.images e = Expr.var ∘ Expr.reverseIndex k)
    {T : Expr S} {ns : List (Expr S)} (hstack : StackAt Ω k T ns) :
    ∀ {s}, HasType P (Ω.context k) (T.rename (Expr.reverseIndex k)) (.sort s) →
    Normal T → Ω.profile T ∈ U ∨ Ω.profile T ∈ C →
    ∀ h, h ∈ J.R (T.rename (Expr.reverseIndex k)) e → StronglyNormalizing (h.apps ns) := by
  induction hstack with
  | nil T =>
      intro s ht hN _ h hr
      exact (J.candidate e (.sorted ht)).upper hr |>.2
  | @cons D E n ns hn hsn hstack ih =>
      intro s ht hN hprofile h hr
      have hactual : ActualType Ω (.pi D E) := .inl ⟨hN,s,⟨k,ht⟩⟩
      rcases hprofile with hU | hC
      · have htop := (J.candidate e (.sorted ht)).upper hr
        rw [J.identity_actual he,Expr.normalForm_of_normal hN] at htop
        have hg : h ∈ Ground Ω (.pi D E) := by
          rw [H.invariant hactual hU]; exact htop
        exact hg.2 (n :: ns) (.cons ⟨⟨k,hn⟩,hsn⟩ hstack.tested)
      · obtain ⟨a,b,c,hD,hE,_,_⟩ := ht.generation_pi
        have hnR := (J.sn_fundamental H (hsn.reverseIndex k) _ _ hn e
          (J.identity_admissible he)).1
        have hr' := J.specialization e ht hn (by
          change Profile P (Ω.context k) ((Expr.pi D E).rename (Expr.reverseIndex k)) ∈ C
          rwa [← Ω.profile_at hw ht])
          (by
            change Ω.profile (((Expr.pi D E).rename (Expr.reverseIndex k)).subst (J.images e)) ∈ C
            rwa [J.identity_actual he]) h hr hnR
        change Expr.app h ((n.rename (Expr.reverseIndex k)).subst (J.images e)) ∈
          J.R ((E.rename (Expr.liftRen (Expr.reverseIndex k))).instantiate
            (n.rename (Expr.reverseIndex k))) e at hr'
        rw [J.identity_actual he,Expr.instantiate_rename] at hr'
        have htarget : HasType P (Ω.context k) ((E.instantiate n).rename (Expr.reverseIndex k)) (.sort b) := by
          have hti := hE.instantiate hn
          change HasType P (Ω.context k) ((E.rename (Expr.liftRen (Expr.reverseIndex k))).instantiate
            (n.rename (Expr.reverseIndex k))) (.sort b) at hti
          rwa [Expr.instantiate_rename] at hti
        have htargetΩ : Ω.HasType (E.instantiate n) (.sort b) := ⟨k,htarget⟩
        have hwtarget := htargetΩ.weaklyNormalizing hw
        have htargetN : HasType P (Ω.context k) ((E.instantiate n).normalForm.rename (Expr.reverseIndex k)) (.sort b) := by
          rw [← Expr.normalForm_rename hwtarget]
          exact htarget.normalForm hw
        have hconv : Converts ((E.instantiate n).rename (Expr.reverseIndex k))
            ((E.instantiate n).normalForm.rename (Expr.reverseIndex k)) :=
          (Expr.normalForm_spec hwtarget).1.converts.rename _
        rw [J.conversion e (.sorted htarget) (.sorted htargetN) hconv] at hr'
        have hprofile' : Ω.profile (E.instantiate n).normalForm ∈ U ∨
            Ω.profile (E.instantiate n).normalForm ∈ C := by
          rw [Ω.profile_normalForm]
          exact H.before hC (Ω.profile_instantiate_product_path hw ⟨k,ht⟩ ⟨k,hn⟩).reach
        exact ih htargetN (Expr.normalForm_spec hwtarget).2 hprofile' (.app h n) hr'

/-- Advancing a component uses one identity evaluation, not a new
substitution choice at each stack prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L4878).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
