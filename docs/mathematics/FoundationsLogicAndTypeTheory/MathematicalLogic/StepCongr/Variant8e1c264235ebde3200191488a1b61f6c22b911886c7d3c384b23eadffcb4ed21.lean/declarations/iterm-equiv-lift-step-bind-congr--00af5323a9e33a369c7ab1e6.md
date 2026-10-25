# IterM.Equiv.lift_step_bind_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f20833768a33bdf44dcde85294657a9dfdc94161",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d8e2b67-8543-5f96-459c-a9c1d3405bcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77e3ffea-942a-5278-0f87-d27bca869f7c",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.lift_step_bind_congr",
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
  "slug": "iterm-equiv-lift-step-bind-congr--00af5323a9e33a369c7ab1e6",
  "source": {
    "blob": "f20833768a33bdf44dcde85294657a9dfdc94161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00af5323a9e33a369c7ab1e6adf4b425e7b3d287b494447e6a18497713caf73f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e3ffea-942a-5278-0f87-d27bca869f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.lift_step_bind_congr {α₁ α₂ : Type w} [Monad m] [LawfulMonad m]
    [Monad n] [LawfulMonad n] [MonadLiftT m n] [LawfulMonadLiftT m n]
    [Iterator α₁ m β] [Iterator α₂ m β]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb)
    {f : _ → n γ} {g : _ → n γ}
    (hfg : ∀ s₁ s₂, s₁.inflate.1.bundledQuotient = s₂.inflate.1.bundledQuotient → f s₁ = g s₂) :
    ((ita.step : n _) >>= f) = ((itb.step : n _) >>= g) := by -- .deflate this
  let flift : Shrink ita.QuotStep → n γ := by
    refine ?_ ∘ Shrink.inflate
    refine Quot.lift ?_ ?_
    · exact f ∘ Shrink.deflate
    · intro s s' h''
      have hs := (IterM.Equiv.exists_step_of_step h s)
      simp only [Function.comp_apply]
      rw [hfg (.deflate s) (.deflate hs.choose) (by simpa using hs.choose_spec),
        hfg (.deflate s') (.deflate hs.choose) (by simpa [h''] using hs.choose_spec)]
  have hf : f = flift ∘ Shrink.deflate ∘ Quot.mk _ ∘ Shrink.inflate := by simp [Function.comp_def, flift]
  let glift : Shrink itb.QuotStep → n γ := by
    refine ?_ ∘ Shrink.inflate
    refine Quot.lift ?_ ?_
    · exact g ∘ Shrink.deflate
    · intro s s' h''
      have hs := (IterM.Equiv.exists_step_of_step h.symm s)
      simp only [Function.comp_apply]
      rw [← hfg (.deflate hs.choose) (.deflate s) (by simpa using hs.choose_spec.symm),
        ← hfg (.deflate hs.choose) (.deflate s') (by simpa [h''] using hs.choose_spec.symm)]
  have hg : g = glift ∘ Shrink.deflate ∘ Quot.mk _ ∘ Shrink.inflate := by simp [Function.comp_def, glift]
  rw [hf, bind_comp_eq_map_bind (g := flift), hg, bind_comp_eq_map_bind (g := glift)]
  have := congrArg (fun x => liftM (n := n) x) (step_eq h)
  simp only [liftM_map] at this
  simp only [Function.comp_def, this, Functor.map_map, Shrink.inflate_deflate]
  simp only [map_eq_pure_bind, bind_assoc]
  apply bind_congr; intro step
  simp only [QuotStep.transportAlongEquiv, pure_bind, flift, glift]
  have hex := exists_step_of_step h.symm step.inflate
  simp [hfg (.deflate hex.choose) step (by simpa using hex.choose_spec.symm)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20833768a33bdf44dcde85294657a9dfdc94161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
