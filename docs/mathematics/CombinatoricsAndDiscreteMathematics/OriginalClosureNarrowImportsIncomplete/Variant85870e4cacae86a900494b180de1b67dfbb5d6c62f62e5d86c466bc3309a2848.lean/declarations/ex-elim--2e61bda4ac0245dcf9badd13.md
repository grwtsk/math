# ex_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df1159f0-9886-bace-41bb-a791a92d904a",
  "kind": "theorem",
  "lexical_name": "ex_elim",
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
  "slug": "ex-elim--2e61bda4ac0245dcf9badd13",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19845,
    "line": 19798,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e61bda4ac0245dcf9badd13344cbcefcd511a1926ff179345ae0f463ef7e485",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df1159f0-9886-bace-41bb-a791a92d904a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19798–19845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ex_elim (hB : L.Formula B) (hp : Proves P Γ γ (L.code.ex K.code T Q))
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) a,
      HasType P Δ a (T.rename e.names) → WellModed δ a .data →
      Proves P Δ δ ((Q.rename (Expr.liftRen e.names)).instantiate a) →
      Proves P Δ δ (B.rename e.names)) : Proves P Γ γ B := by
  apply L.dne hB
  apply L.imp_intro_future (L.neg_formula hB) L.bottom_formula
  intro Δ δ e hn
  have ht := fun s hs => e.typing (hT s hs)
  have hq := hQ.rename e
  have hn' : Proves P Δ δ ((L.rename e).neg (B.rename e.names)) := by
    simpa only [neg,imp_rename,bottom_rename] using hn
  have hall : Proves P Δ δ ((L.rename e).code.guardAll (K.rename e).code (T.rename e.names)
      (Q.rename (Expr.liftRen e.names)) ((L.rename e).bottom.rename Nat.succ)) := by
    apply (L.rename e).guardAll_intro (K.rename e) ht (e.moded mT) hq (.constant (L.rename e).bottom_formula)
    intro Θ θ f a ha ma hqa
    have ha' : HasType P Θ a (T.rename (f.names ∘ e.names)) := by
      simpa only [Expr.rename_comp] using ha
    have hqa' : Proves P Θ θ ((Q.rename (Expr.liftRen (f.names ∘ e.names))).instantiate a) := by
      simpa only [Expr.rename_comp,Expr.lifted_comp] using hqa
    have hb' := hh Θ θ (e.comp f) a ha' ma hqa'
    have hf : ((L.rename e).rename f).Formula (B.rename (f.names ∘ e.names)) := by
      simpa only [Expr.rename_comp] using (hB.rename e).rename f
    have hnb : Proves P Θ θ (((L.rename e).rename f).neg (B.rename (f.names ∘ e.names))) := by
      simpa only [neg,imp_rename,bottom_rename,Expr.rename_comp] using hn'.rename f
    have hb'' : Proves P Θ θ (B.rename (f.names ∘ e.names)) := hb'
    have hb0 := ((L.rename e).rename f).imp_elim hf ((L.rename e).rename f).bottom_formula hnb hb''
    have hconst : ((((L.rename e).bottom.rename Nat.succ).rename (Expr.liftRen f.names)).instantiate a) =
        (L.rename e).bottom.rename f.names := by
      rw [Expr.rename_comp]
      rw [show Expr.liftRen f.names ∘ Nat.succ = Nat.succ ∘ f.names from rfl,
        ← Expr.rename_comp,Expr.instantiate_raise]
    exact hconst.symm ▸ hb0
  have hex : Proves P Δ δ ((L.rename e).neg
      ((K.rename e).code.all (T.rename e.names) ((L.rename e).code.negBody (Q.rename (Expr.liftRen e.names))))) := by
    simpa only [LogicCode.ex,LogicCode.neg_rename,QuantifierCode.all_rename,LogicCode.negBody_rename,
      ← LogicSetup.code_neg,LogicSetup.code_rename,QuantifierRoute.code_rename] using hp.rename e
  obtain ⟨s,hs⟩ := K.triple.domain.1
  have hfa := (L.rename e).all_formula_family (K.rename e) ht (e.moded mT) (e.typing (hT s hs)) hq.code_neg
  exact (L.rename e).imp_elim hfa (L.rename e).bottom_formula hex hall
end

variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    (L : LogicSetup P Γ γ C) {I : Set S} (K : QuantifierRoute L.witnesses C L.base I)
    {T Q R : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (hQ : L.Family T Q) (hR : L.Family T R)
include hT mT hQ hR
/-- Explicit uniform quantifier transport; no fixture of local witnesses leaks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L19798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
