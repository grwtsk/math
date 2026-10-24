# Iterator.instIteratorLoop.loopWf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2093b5bbbd36bee526de84a184714f26fcfadcf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da299c37-997d-c96e-bea9-0aa94edeae5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:422583ea-4246-23d8-38ce-74e29929334d",
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
  "slug": "iterator-institeratorloop-loopwf-eq--53fa0b2b1363a1aa35d005e4",
  "source": {
    "blob": "2093b5bbbd36bee526de84a184714f26fcfadcf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1163,
    "line": 1113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53fa0b2b1363a1aa35d005e43a77f8f4209c4f395cd9f7693f7b75732efd5e21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:422583ea-4246-23d8-38ce-74e29929334d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Iterator.instIteratorLoop.loopWf_eq [UpwardEnumerable α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    {n : Type u → Type w} [Monad n] [LawfulMonad n] (γ : Type u)
    {lift} [instLawfulMonadLiftFunction : Std.Internal.LawfulMonadLiftBindFunction (m := Id) (n := n) lift]
    (Pl : α → γ → ForInStep γ → Prop)
    (wf : IteratorLoop.WellFounded (Rxo.Iterator α) Id Pl)
    (LargeEnough : α → Prop) (hl : ∀ a b : α, UpwardEnumerable.LE a b → LargeEnough a → LargeEnough b)
    (upperBound : α) (acc : γ) (next : α) (h : LargeEnough next)
    (f : (out : α) → LargeEnough out → out < upperBound → (c : γ) → n (Subtype (fun s : ForInStep γ => Pl out c s))) :
    loop.wf γ Pl wf LargeEnough hl upperBound acc next h f = (do
      if hu : next < upperBound then
        match ← f next h hu acc with
        | ⟨.yield acc', _⟩ =>
          letI it' : IterM (α := Rxo.Iterator α) Id α := ⟨⟨succ? next, upperBound⟩⟩
          IterM.DefaultConsumers.forIn' (m := Id) (n := n) lift γ Pl it' acc'
            it'.IsPlausibleIndirectOutput (fun _ => id)
            fun next' h acc' => f next'
              (by
                refine hl next next' ?_ ‹_›
                simp only [it', Monadic.isPlausibleIndirectOutput_iff,
                  ← succMany?_add_one_eq_succ?_bind_succMany?] at h
                exact ⟨h.choose + 1, h.choose_spec.1⟩)
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
      · simp only [IterM.step_eq, Monadic.step,
          Shrink.inflate_deflate, instLawfulMonadLiftFunction.liftBind_pure, *]
        split
        · apply bind_congr; intro forInStep
          split
          · apply IterM.DefaultConsumers.forIn'_eq_forIn' Pl wf <;> (intros; rfl)
          · simp
        · simp
    · rw [IterM.DefaultConsumers.forIn'_eq_match_step Pl wf]
      simp [IterM.step_eq, Monadic.step, instLawfulMonadLiftFunction.liftBind_pure, *]
  · simp
termination_by IteratorLoop.WithWF.mk ⟨⟨some next, upperBound⟩⟩ acc (hwf := wf)
decreasing_by
  simp [IteratorLoop.rel, Monadic.isPlausibleStep_iff, Monadic.step, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2093b5bbbd36bee526de84a184714f26fcfadcf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
