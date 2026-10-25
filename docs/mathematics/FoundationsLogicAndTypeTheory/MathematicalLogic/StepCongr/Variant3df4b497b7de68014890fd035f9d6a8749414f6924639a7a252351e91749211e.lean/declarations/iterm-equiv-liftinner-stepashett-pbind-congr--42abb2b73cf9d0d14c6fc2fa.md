# IterM.Equiv.liftInner_stepAsHetT_pbind_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cde3f3e-1e16-36b5-27ea-6fb0025ddaeb",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.liftInner_stepAsHetT_pbind_congr",
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
  "slug": "iterm-equiv-liftinner-stepashett-pbind-congr--42abb2b73cf9d0d14c6fc2fa",
  "source": {
    "blob": "3db94a473ed8d8063916286cf5ef188941a3588d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42abb2b73cf9d0d14c6fc2fa6db40d8b14ce90abb8237b971ef4c830f154391b",
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

Occurrence: `result:7cde3f3e-1e16-36b5-27ea-6fb0025ddaeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.liftInner_stepAsHetT_pbind_congr [Monad m] [LawfulMonad m]
    [Monad n] [LawfulMonad n]
    [MonadLiftT m n] [LawfulMonadLiftT m n] [Iterator α₁ m β] [Iterator α₂ m β]
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β}
    {f : (_ : _) → _ → HetT n γ} {g : (_ : _) → _ → HetT n γ} (h : IterM.Equiv ita itb)
    (hfg : ∀ sa hsa sb hsb, sa.bundledQuotient = sb.bundledQuotient → f sa hsa = g sb hsb) :
    ((IterM.stepAsHetT ita).liftInner n).pbind f =
      ((IterM.stepAsHetT itb).liftInner n).pbind g := by
  simp only [HetT.ext_iff, HetT.prun_pbind, HetT.property_liftInner, Equivalence.property_step,
    Equivalence.prun_liftInner_step, HetT.property_pbind]
  refine ⟨?_, ?_⟩
  · ext c
    constructor
    · rintro ⟨s₁, hs₁, hf⟩
      rcases IterM.Equiv.exists_step_of_step h ⟨s₁, hs₁⟩ with ⟨s₂, h'⟩
      exact ⟨s₂.1, s₂.2, (hfg s₁ hs₁ s₂.1 s₂.2 h') ▸ hf⟩
    · rintro ⟨s₁, hs₁, hf⟩
      rcases IterM.Equiv.exists_step_of_step h.symm ⟨s₁, hs₁⟩ with ⟨s₂, h'⟩
      exact ⟨s₂.1, s₂.2, (hfg s₂.1 s₂.2 s₁ hs₁ h'.symm) ▸ hf⟩
  · intro γ l
    apply lift_step_bind_congr h
    intro s₁ s₂ h
    simp only [hfg s₁.inflate.1 s₁.inflate.2 s₂.inflate.1 s₂.inflate.2 h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant3df4b497b7de68014890fd035f9d6a8749414f6924639a7a252351e91749211e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db94a473ed8d8063916286cf5ef188941a3588d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
