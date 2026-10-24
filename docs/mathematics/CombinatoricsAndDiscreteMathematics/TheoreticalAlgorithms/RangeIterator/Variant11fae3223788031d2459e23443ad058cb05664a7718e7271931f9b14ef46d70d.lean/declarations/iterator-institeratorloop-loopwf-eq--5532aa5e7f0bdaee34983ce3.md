# Iterator.instIteratorLoop.loopWf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6015c2a-6b6c-7892-a598-947cdb796f74",
  "kind": "theorem",
  "lexical_name": "Iterator.instIteratorLoop.loopWf_eq",
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
  "slug": "iterator-institeratorloop-loopwf-eq--5532aa5e7f0bdaee34983ce3",
  "source": {
    "blob": "2c65cc1b08eaaaddbf107917b05560b21bd9d163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 545,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5532aa5e7f0bdaee34983ce3326cc0de36da3bebe6d5bb3471f420ff94feb697",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6015c2a-6b6c-7892-a598-947cdb796f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Iterator.instIteratorLoop.loopWf_eq [UpwardEnumerable α] [LE α] [DecidableLE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    {n : Type u → Type w} [Monad n] [LawfulMonad n] (γ : Type u)
    {lift} [instLawfulMonadLiftFunction : Std.Internal.LawfulMonadLiftBindFunction (m := Id) (n := n) lift]
    (Pl : α → γ → ForInStep γ → Prop)
    (wf : IteratorLoop.WellFounded (Rxc.Iterator α) Id Pl)
    (LargeEnough : α → Prop) (hl : ∀ a b : α, a ≤ b → LargeEnough a → LargeEnough b)
    (upperBound : α) (acc : γ) (next : α) (h : LargeEnough next)
    (f : (out : α) → LargeEnough out → out ≤ upperBound → (c : γ) → n (Subtype (fun s : ForInStep γ => Pl out c s))) :
    loop.wf γ Pl wf LargeEnough hl upperBound acc next h f = (do
      if hu : next ≤ upperBound then
        match ← f next h hu acc with
        | ⟨.yield acc', _⟩ =>
          letI it' : IterM (α := Rxc.Iterator α) Id α := ⟨⟨succ? next, upperBound⟩⟩
          IterM.DefaultConsumers.forIn' (m := Id) (n := n) lift γ Pl it' acc'
            it'.IsPlausibleIndirectOutput (fun _ => id)
            fun next' h acc' => f next'
              (by
                refine hl next next' ?_ ‹_›
                simp only [it', Monadic.isPlausibleIndirectOutput_iff,
                  ← succMany?_add_one_eq_succ?_bind_succMany?] at h
                exact UpwardEnumerable.le_iff.mpr ⟨h.choose + 1, h.choose_spec.1⟩)
              (by
                simp only [it', Monadic.isPlausibleIndirectOutput_iff] at h
                exact h.choose_spec.2)
              acc'
        | ⟨.done acc', _⟩ => return acc'
      else return acc) := by
  haveI : Nonempty γ := ⟨acc⟩
  rw [loop.wf]
  congr 1; ext hu
  apply bind_congr; intro forInStep
  split
  · split
    · rw [loopWf_eq (lift := lift) _ Pl wf]
      rw [IterM.DefaultConsumers.forIn'_eq_match_step (lift := lift) Pl wf]; rotate_left
      · simp only [IterM.step_mk, Monadic.step_eq_step, Monadic.step,
          Shrink.inflate_deflate, instLawfulMonadLiftFunction.liftBind_pure, *]
        split
        · apply bind_congr; intro forInStep
          split
          · apply IterM.DefaultConsumers.forIn'_eq_forIn' Pl wf <;> (intros; rfl)
          · simp
        · simp
    · rw [IterM.DefaultConsumers.forIn'_eq_match_step Pl wf]
      simp only [IterM.step_eq, instLawfulMonadLiftFunction.liftBind_pure, Shrink.inflate_deflate, *]
      -- Unfolding `Monadic.step` earlier would make some defeq checks fail on reducible transparency:
      -- `Iterator.IsPlausibleStep` is reducible and it reduces to `Monadic.step`, but `Monadic.step`
      -- is semireducible, and `simp` isn't able to unfold `Monadic.step` inside `Iterator.IsPlausibleStep`,
      -- since that one only appears in the type of a constant -- I think?
      simp [Monadic.step]
  · simp
termination_by IteratorLoop.WithWF.mk ⟨⟨some next, upperBound⟩⟩ acc (hwf := wf)
decreasing_by
  simp [IteratorLoop.rel, Monadic.isPlausibleStep_iff, Monadic.step, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c65cc1b08eaaaddbf107917b05560b21bd9d163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
