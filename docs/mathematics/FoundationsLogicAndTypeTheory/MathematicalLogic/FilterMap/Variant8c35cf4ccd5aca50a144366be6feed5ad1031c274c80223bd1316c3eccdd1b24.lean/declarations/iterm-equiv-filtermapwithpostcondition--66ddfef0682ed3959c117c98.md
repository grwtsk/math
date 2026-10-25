# IterM.Equiv.filterMapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208be576-5c51-ad3e-e273-96bdc7cc13c4",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.filterMapWithPostcondition",
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
  "slug": "iterm-equiv-filtermapwithpostcondition--66ddfef0682ed3959c117c98",
  "source": {
    "blob": "dc833ea93d5863f75424ff0903ee4be0df5bf442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66ddfef0682ed3959c117c98a9d64bb37c338f67e852f3d5f716a8fe0062766b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208be576-5c51-ad3e-e273-96bdc7cc13c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.filterMapWithPostcondition {α₁ α₂ β γ : Type w}
    {m : Type w → Type w'} {n : Type w → Type w''}
    [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n] [Iterator α₁ m β] [Iterator α₂ m β]
    [MonadLiftT m n] [LawfulMonadLiftT m n]
    {f : β → PostconditionT n (Option γ)} {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β}
    (h : IterM.Equiv ita itb) :
    IterM.Equiv (ita.filterMapWithPostcondition f) (itb.filterMapWithPostcondition f) := by
  rw [IterM.Equiv]
  refine BundledIterM.Equiv.coinduct n γ ?R ?implies (.ofIterM _) (.ofIterM _) ?hR
  case R =>
    intro ita' itb'
    exact ∃ (ita : IterM (α := α₁) m β) (itb : IterM (α := α₂) m β),
      ita' = .ofIterM (ita.filterMapWithPostcondition f) ∧
      itb' = .ofIterM (itb.filterMapWithPostcondition f) ∧
      IterM.Equiv ita itb
  case hR =>
    exact ⟨_, _, rfl, rfl, h⟩
  case implies =>
    rintro _ _ ⟨ita, itb, rfl, rfl, h'⟩
    replace h := h'
    simp only [BundledIterM.step, HetT.map_eq_pure_bind,
      HetT.bind_assoc, Function.comp_apply, HetT.pure_bind, IterStep.mapIterator_mapIterator]
    rw [stepAsHetT_filterMapWithPostcondition, stepAsHetT_filterMapWithPostcondition]
    simp only [HetT.bind_assoc]
    simp only [Equiv, BundledIterM.Equiv, BundledIterM.step,
      HetT.map_eq_pure_bind, HetT.bind_assoc, Function.comp_apply, HetT.pure_bind,
      IterStep.mapIterator_mapIterator] at h'
    apply liftInner_stepAsHetT_bind_congr h
    intro sa hsa sb hsb hs
    simp only [IterStep.bundledQuotient] at hs
    cases sa <;> cases sb <;> (try exfalso; simp_all; done)
    case yield =>
      simp only [IterStep.mapIterator_yield, Function.comp_apply, IterStep.yield.injEq,
        BundledIterM.Equiv.quotMk_eq_iff] at hs
      cases hs.2
      simp only [bind, HetT.bind_assoc]
      congr
      ext out
      cases out
      all_goals
        simp only [pure, HetT.pure_bind, IterStep.mapIterator_skip, IterStep.mapIterator_yield,
          Function.comp_apply]
        congr 2
        apply Quot.sound
        exact ⟨_, _, rfl, rfl, hs.1⟩
    case skip =>
      simp only [IterStep.mapIterator_skip, Function.comp_apply, IterStep.skip.injEq,
        BundledIterM.Equiv.quotMk_eq_iff] at hs
      simp only [pure, HetT.pure_bind, IterStep.mapIterator_skip, Function.comp_apply]
      congr 2
      apply Quot.sound
      exact ⟨_, _, rfl, rfl, hs⟩
    case done =>
      simp [Pure.pure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variant8c35cf4ccd5aca50a144366be6feed5ad1031c274c80223bd1316c3eccdd1b24.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc833ea93d5863f75424ff0903ee4be0df5bf442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
