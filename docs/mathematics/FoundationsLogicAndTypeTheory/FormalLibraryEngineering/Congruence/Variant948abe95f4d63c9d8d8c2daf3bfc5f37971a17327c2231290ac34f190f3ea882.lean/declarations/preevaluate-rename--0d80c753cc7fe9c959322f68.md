# preEvaluate_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed4207e0-fea4-5203-9cbe-5d96c4c01b48",
  "kind": "theorem",
  "lexical_name": "preEvaluate_rename",
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
  "slug": "preevaluate-rename--0d80c753cc7fe9c959322f68",
  "source": {
    "blob": "fc8b46f226b462286f2b1ca9f76a4d37bb84c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d80c753cc7fe9c959322f68e88c1de95ebcdc64241882b8a1bd457991d93bf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed4207e0-fea4-5203-9cbe-5d96c4c01b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preEvaluate_rename {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {Δ : List (Expr S)} (hΔ : ValidContext P Δ) (ρ : Nat → Nat) (hρ : TypingTree.DeclRenaming Γ Δ ρ)
    (e : Environment (hw := hw) Ω C hno Γ) (f : Environment (hw := hw) Ω C hno Δ)
    (hef : e.Reindexed f ρ) :
    (preEvaluate Ω C hno t e).parameter = (preEvaluate Ω C hno (t.rename hΔ ρ hρ) f).parameter ∧
    (preEvaluate Ω C hno t e).read.val = (preEvaluate Ω C hno (t.rename hΔ ρ hρ) f).read.val := by
  induction t generalizing Δ ρ with
  | var ht hd hc =>
      have hparam : (PreResult.lookup ht hd hc e).parameter =
          (PreResult.lookup (ht.rename hΔ ρ (hρ.typed hΔ)) (hρ _ _ hd) (hc.rename ρ)
            f).parameter := by
        exact (PreResult.lookup_parameter ht hd hc e).trans
          ((hef _ ht.scope.1).2.trans (PreResult.lookup_parameter
            (ht.rename hΔ ρ (hρ.typed hΔ)) (hρ _ _ hd) (hc.rename ρ) f).symm)
      refine ⟨hparam,?_⟩
      apply PreResult.baseRead_congr ht (ht.rename hΔ ρ (hρ.typed hΔ))
        (hef.expr_eq ht) (hef.type_eq ht)
      · simp only [Expr.rename_eq_sort]
      · exact fun ha hb => PreResult.val_congr _ _ hparam ha hb
  | sort ht ha hc =>
      constructor
      · apply PreResult.parameter_congr _ _ (hef.type_eq ht)
        intro hs hs'
        exact distinguished_congr Ω C hno (hef.type_eq ht)
      · exact congrArg (Candidates.Top Ω) (hef.expr_eq ht)
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hh : HasType P Δ (D.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      have he := hef.type_eq ht
      have hv : ∀ ha ha', ((preEvaluate Ω C hno (.abstraction ht d b hp hc) e).val ha).val =
          ((preEvaluate Ω C hno ((TypingTree.abstraction ht d b hp hc).rename hΔ ρ hρ) f).val
            ha').val := by
        apply PreResult.abstraction_val_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) hp
          (hp.rename hΔ ρ (hρ.typed hΔ)) hc (hc.rename ρ) _ _ e f he
        intro n m hn hm hnm p hpp hpp' ha ha'
        apply PreResult.val_congr
        exact (ihb (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D)
          (e.cons hn p hpp) (f.cons hm p hpp') (hef.cons hn hm hnm p hpp hpp')).1
      constructor
      · exact PreResult.parameter_congr _ _ he hv
      · apply PreResult.baseRead_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) (hef.expr_eq ht) he
        · simp only [Expr.rename_eq_sort]
        · exact hv
  | @application Γ g n D E T ht gtr ntr hc ihg ihn =>
      have hg := ihg hΔ ρ hρ e f hef
      have hn := ihn hΔ ρ hρ e f hef
      have he := hef.type_eq ht
      have hv : ∀ ha ha', ((preEvaluate Ω C hno (.application ht gtr ntr hc) e).val ha).val =
          ((preEvaluate Ω C hno ((TypingTree.application ht gtr ntr hc).rename hΔ ρ hρ) f).val
            ha').val := by
        apply PreResult.application_val_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) gtr.typing
          (gtr.typing.rename hΔ ρ (hρ.typed hΔ)) ntr.typing (ntr.typing.rename hΔ ρ (hρ.typed hΔ))
          hc _ _ _ _ _ e f he (hef.type_eq gtr.typing) (hef.expr_eq ntr.typing)
        · exact fun ha ha' => PreResult.val_congr _ _ hg.1 ha ha'
        · exact hn.1
      constructor
      · exact PreResult.parameter_congr _ _ he hv
      · apply PreResult.baseRead_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) (hef.expr_eq ht) he
        · simp only [Expr.rename_eq_sort]
        · exact hv
  | @product Γ D E a b c T ht d btr hr hc ihd ihb =>
      have hh : HasType P Δ (D.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      have hb := btr.typing.rename (.cons hΔ hh) (Expr.liftRen ρ) ((hρ.lift D).typed (.cons hΔ hh))
      have hm := hef.expr_eq ht
      have he := hef.type_eq ht
      have hDE := Expr.pi.inj (hef.raw_eq ht.scope.1)
      have hpc : ∀ (_ : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C),
          (PreResult.productCandidate d.typing btr.typing hr (preEvaluate Ω C hno d)
            (preEvaluate Ω C hno btr) e).val =
          (PreResult.productCandidate hh hb hr (preEvaluate Ω C hno (d.rename hΔ ρ hρ))
            (preEvaluate Ω C hno (btr.rename (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D)))
              f).val := by
        intro _
        apply PreResult.productCandidate_congr d.typing btr.typing hr hh hb hr _ _ _ _ e f
          (congrArg Expr.normalForm hDE.1) (congrArg Expr.normalForm hDE.2)
        · intro _
          exact (ihd hΔ ρ hρ e f hef).2
        · intro n hn hn' p hp hp' _
          exact (ihb (.cons hΔ hh) (Expr.liftRen ρ) (hρ.lift D)
            (e.cons hn p hp) (f.cons hn' p hp') (hef.cons hn hn' rfl p hp hp')).2
      constructor
      · apply PreResult.parameter_congr _ _ he
        apply PreResult.product_val_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) d.typing
          btr.typing hr hh hb hr
          hc (hc.rename ρ) _ _ _ _ e f he hm Iff.rfl hpc
      · exact PreResult.product_read_congr ht (ht.rename hΔ ρ (hρ.typed hΔ)) d.typing
          btr.typing hr hh hb hr
          hc (hc.rename ρ) _ _ _ _ e f hm hpc

end ObservationValues

namespace TypingTree
variable {S : Type u} {P : Specification S} {Γ Δ : List (Expr S)} {M T : Expr S}
/-- Context conversion retains every nonvariable core and all sort choices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8b46f226b462286f2b1ca9f76a4d37bb84c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
