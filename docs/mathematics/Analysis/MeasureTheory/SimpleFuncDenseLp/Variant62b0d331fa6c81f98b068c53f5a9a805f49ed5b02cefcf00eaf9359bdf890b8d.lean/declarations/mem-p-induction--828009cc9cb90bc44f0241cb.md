# Memℒp.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b72eb650-18f4-f46b-5046-ff3d7bbd4eb7",
  "kind": "theorem",
  "lexical_name": "Memℒp.induction",
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
  "slug": "mem-p-induction--828009cc9cb90bc44f0241cb",
  "source": {
    "blob": "5c77dc9c371fa99d42ebbb15160925d62de4b858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 959,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:828009cc9cb90bc44f0241cb6bfa4bff891ffdbf3162ec660f0b69f6c8d43fe9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b72eb650-18f4-f46b-5046-ff3d7bbd4eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.induction [_i : Fact (1 ≤ p)] (hp_ne_top : p ≠ ∞) (P : (α → E) → Prop)
    (h_ind : ∀ (c : E) ⦃s⦄, MeasurableSet s → μ s < ∞ → P (s.indicator fun _ => c))
    (h_add : ∀ ⦃f g : α → E⦄, Disjoint (support f) (support g) → Memℒp f p μ → Memℒp g p μ →
      P f → P g → P (f + g))
    (h_closed : IsClosed { f : Lp E p μ | P f })
    (h_ae : ∀ ⦃f g⦄, f =ᵐ[μ] g → Memℒp f p μ → P f → P g) :
    ∀ ⦃f : α → E⦄, Memℒp f p μ → P f := by
  have : ∀ f : SimpleFunc α E, Memℒp f p μ → P f := by
    apply SimpleFunc.induction
    · intro c s hs h
      by_cases hc : c = 0
      · subst hc; convert h_ind 0 MeasurableSet.empty (by simp) using 1; ext; simp [const]
      have hp_pos : p ≠ 0 := (lt_of_lt_of_le zero_lt_one _i.elim).ne'
      exact h_ind c hs (SimpleFunc.measure_lt_top_of_memℒp_indicator hp_pos hp_ne_top hc hs h)
    · intro f g hfg hf hg int_fg
      rw [SimpleFunc.coe_add,
        memℒp_add_of_disjoint hfg f.stronglyMeasurable g.stronglyMeasurable] at int_fg
      refine' h_add hfg int_fg.1 int_fg.2 (hf int_fg.1) (hg int_fg.2)
  have : ∀ f : Lp.simpleFunc E p μ, P f := by
    intro f
    exact
      h_ae (Lp.simpleFunc.toSimpleFunc_eq_toFun f) (Lp.simpleFunc.memℒp f)
        (this (Lp.simpleFunc.toSimpleFunc f) (Lp.simpleFunc.memℒp f))
  have : ∀ f : Lp E p μ, P f := fun f =>
    (Lp.simpleFunc.denseRange hp_ne_top).induction_on f h_closed this
  exact fun f hf => h_ae hf.coeFn_toLp (Lp.memℒp _) (this (hf.toLp f))
#align measure_theory.mem_ℒp.induction MeasureTheory.Memℒp.induction

/-- If a set of ae strongly measurable functions is stable under addition and approximates
characteristic functions in `ℒp`, then it is dense in `ℒp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c77dc9c371fa99d42ebbb15160925d62de4b858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
