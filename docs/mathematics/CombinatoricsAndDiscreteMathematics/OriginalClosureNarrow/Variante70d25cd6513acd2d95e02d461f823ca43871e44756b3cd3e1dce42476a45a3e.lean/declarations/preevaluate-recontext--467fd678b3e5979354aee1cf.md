# preEvaluate_recontext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:543bc0cf-549c-1a9b-df37-9ae6452f8fb8",
  "kind": "theorem",
  "lexical_name": "preEvaluate_recontext",
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
  "slug": "preevaluate-recontext--467fd678b3e5979354aee1cf",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10336,
    "line": 10255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:467fd678b3e5979354aee1cfe1d82c9f03fb58700e95a6203ef7b20ac2351245",
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

Occurrence: `result:543bc0cf-549c-1a9b-df37-9ae6452f8fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10255–10336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preEvaluate_recontext {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (h : ContextEquivalent P Γ Δ)
    (e : Environment (hw := hw) Ω C hno Γ) (f : Environment (hw := hw) Ω C hno Δ)
    (hef : e.SameData f) :
    (preEvaluate Ω C hno t e).parameter = (preEvaluate Ω C hno (t.recontext h) f).parameter ∧
    (preEvaluate Ω C hno t e).read.val = (preEvaluate Ω C hno (t.recontext h) f).read.val := by
  induction t generalizing Δ with
  | var ht hd hc =>
      have ht' := (h.typing _ _).mp ht
      let g := ht'.generation
      have hparam : (PreResult.lookup ht hd hc e).parameter =
          (PreResult.lookup ht' g.choose_spec.1 g.choose_spec.2 f).parameter := by
        rw [PreResult.lookup_parameter, PreResult.lookup_parameter]
        exact congrFun hef.2 _
      refine ⟨hparam,?_⟩
      apply PreResult.baseRead_congr ht ht' (hef.expr_eq _) (hef.expr_eq _)
      · exact Iff.rfl
      · exact fun ha hb => PreResult.val_congr _ _ hparam ha hb
  | sort ht ha hc =>
      constructor
      · apply PreResult.parameter_congr _ _ (hef.expr_eq _)
        intro hs hs'
        exact distinguished_congr Ω C hno (hef.expr_eq _)
      · exact congrArg (Candidates.Top Ω) (hef.expr_eq _)
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have he := hef.expr_eq T
      have hv : ∀ ha ha', ((preEvaluate Ω C hno (.abstraction ht d b hp hc) e).val ha).val =
          ((preEvaluate Ω C hno ((TypingTree.abstraction ht d b hp hc).recontext h) f).val ha').val := by
        apply PreResult.abstraction_val_congr ht ((h.typing _ _).mp ht) hp ((h.typing _ _).mp hp)
          hc hc _ _ e f he
        intro n m hn hm hnm p hpp hpp' ha ha'
        apply PreResult.val_congr
        exact (ihb (h.cons d.typing) (e.cons hn p hpp) (f.cons hm p hpp') (hef.cons hn hm hnm p hpp hpp')).1
      constructor
      · exact PreResult.parameter_congr _ _ he hv
      · apply PreResult.baseRead_congr ht ((h.typing _ _).mp ht) (hef.expr_eq _) he
        · exact Iff.rfl
        · exact hv
  | @application Γ g n D E T ht gtr ntr hc ihg ihn =>
      have hg := ihg h e f hef
      have hn := ihn h e f hef
      have he := hef.expr_eq T
      have hv : ∀ ha ha', ((preEvaluate Ω C hno (.application ht gtr ntr hc) e).val ha).val =
          ((preEvaluate Ω C hno ((TypingTree.application ht gtr ntr hc).recontext h) f).val ha').val := by
        apply PreResult.application_val_congr ht ((h.typing _ _).mp ht) gtr.typing
          ((h.typing _ _).mp gtr.typing) ntr.typing ((h.typing _ _).mp ntr.typing)
          hc hc _ _ _ _ e f he (hef.expr_eq _) (hef.expr_eq _)
        · exact fun ha ha' => PreResult.val_congr _ _ hg.1 ha ha'
        · exact hn.1
      constructor
      · exact PreResult.parameter_congr _ _ he hv
      · apply PreResult.baseRead_congr ht ((h.typing _ _).mp ht) (hef.expr_eq _) he
        · exact Iff.rfl
        · exact hv
  | @product Γ D E a b c T ht d btr hr hc ihd ihb =>
      have hh := (h.typing _ _).mp d.typing
      have hb := ((h.cons d.typing).typing _ _).mp btr.typing
      have hm := hef.expr_eq (.pi D E)
      have he := hef.expr_eq T
      have hDE := Expr.pi.inj (hef.raw_eq (.pi D E))
      have hpc : ∀ (_ : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C),
          (PreResult.productCandidate d.typing btr.typing hr (preEvaluate Ω C hno d)
            (preEvaluate Ω C hno btr) e).val =
          (PreResult.productCandidate hh hb hr (preEvaluate Ω C hno (d.recontext h))
            (preEvaluate Ω C hno (btr.recontext (h.cons d.typing))) f).val := by
        intro _
        apply PreResult.productCandidate_congr d.typing btr.typing hr hh hb hr _ _ _ _ e f
          (congrArg Expr.normalForm hDE.1) (congrArg Expr.normalForm hDE.2)
        · intro _
          exact (ihd h e f hef).2
        · intro n hn hn' p hp hp' _
          exact (ihb (h.cons d.typing) (e.cons hn p hp) (f.cons hn' p hp') (hef.cons hn hn' rfl p hp hp')).2
      constructor
      · apply PreResult.parameter_congr _ _ he
        apply PreResult.product_val_congr ht ((h.typing _ _).mp ht) d.typing btr.typing hr hh hb hr
          hc hc _ _ _ _ e f he hm Iff.rfl hpc
      · exact PreResult.product_read_congr ht ((h.typing _ _).mp ht) d.typing btr.typing hr hh hb hr
          hc hc _ _ _ _ e f hm hpc
end ObservationValues

namespace Expr
variable {S : Type u}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L10255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
