# IterM.Equiv.lift_step_bind_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d481f8c8-6d5b-62e9-5c06-d20877118606",
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
  "slug": "iterm-equiv-lift-step-bind-congr--2871ba20f29c2e92ff2146ed",
  "source": {
    "blob": "3db94a473ed8d8063916286cf5ef188941a3588d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2871ba20f29c2e92ff2146ed0bb8520c903f54eb08d64aa46a2ba483ae8c14d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d481f8c8-6d5b-62e9-5c06-d20877118606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–208.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db94a473ed8d8063916286cf5ef188941a3588d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
