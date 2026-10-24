# MemLp.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f2ab97c-b531-5071-bd73-9de7e0ed3741",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2d5e34c-ac3f-316c-f845-a8c29ec86d1d",
  "kind": "theorem",
  "lexical_name": "MemLp.induction",
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
  "slug": "memlp-induction--aca05299c1ad2bcff7059e64",
  "source": {
    "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 842,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca05299c1ad2bcff7059e64bb24d5d0118be7e283cc6d1451ac3c84cbc0fbde",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d5e34c-ac3f-316c-f845-a8c29ec86d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.induction [_i : Fact (1 ≤ p)] (hp_ne_top : p ≠ ∞) (motive : (α → E) → Prop)
    (indicator : ∀ (c : E) ⦃s⦄, MeasurableSet s → μ s < ∞ → motive (s.indicator fun _ => c))
    (add : ∀ ⦃f g : α → E⦄, Disjoint (support f) (support g) → MemLp f p μ → MemLp g p μ →
      motive f → motive g → motive (f + g))
    (closed : IsClosed { f : Lp E p μ | motive f })
    (ae : ∀ ⦃f g⦄, f =ᵐ[μ] g → MemLp f p μ → motive f → motive g) :
    ∀ ⦃f : α → E⦄, MemLp f p μ → motive f := by
  have : ∀ f : SimpleFunc α E, MemLp f p μ → motive f := by
    apply SimpleFunc.induction
    · intro c s hs h
      by_cases hc : c = 0
      · subst hc; convert indicator 0 MeasurableSet.empty (by simp) using 1; ext; simp [const]
      have hp_pos : p ≠ 0 := (lt_of_lt_of_le zero_lt_one _i.elim).ne'
      exact indicator c hs (SimpleFunc.measure_lt_top_of_memLp_indicator hp_pos hp_ne_top hc hs h)
    · intro f g hfg hf hg int_fg
      rw [SimpleFunc.coe_add,
        memLp_add_of_disjoint hfg f.stronglyMeasurable g.stronglyMeasurable] at int_fg
      exact add hfg int_fg.1 int_fg.2 (hf int_fg.1) (hg int_fg.2)
  have : ∀ f : Lp.simpleFunc E p μ, motive f := by
    intro f
    exact
      ae (Lp.simpleFunc.toSimpleFunc_eq_toFun f) (Lp.simpleFunc.memLp f)
        (this (Lp.simpleFunc.toSimpleFunc f) (Lp.simpleFunc.memLp f))
  have : ∀ f : Lp E p μ, motive f := fun f =>
    (Lp.simpleFunc.denseRange hp_ne_top).induction_on f closed this
  exact fun f hf => ae hf.coeFn_toLp (Lp.memLp _) (this (hf.toLp f))

/-- If a set of ae strongly measurable functions is stable under addition and approximates
characteristic functions in `ℒp`, then it is dense in `ℒp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c42bc3f0aa0818639c71056518a58cf5f53418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
