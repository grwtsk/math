# IterM.stepAsHetT_filterMapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cb54f7be75c066edf6792cf9df0d9ebdc7cb651",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd4c05b0-6b9f-5592-c339-775ec06feb44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42b7dacd-131e-8f31-9174-f2e33b3fc76e",
  "kind": "theorem",
  "lexical_name": "IterM.stepAsHetT_filterMapWithPostcondition",
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
  "slug": "iterm-stepashett-filtermapwithpostcondition--1ec7c7cc2c7b9e72096eb132",
  "source": {
    "blob": "6cb54f7be75c066edf6792cf9df0d9ebdc7cb651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ec7c7cc2c7b9e72096eb132f47ec13b52ff5761bfaa36838e1329b4a5be98e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42b7dacd-131e-8f31-9174-f2e33b3fc76e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.stepAsHetT_filterMapWithPostcondition [Monad m] [LawfulMonad m] [Monad n]
    [LawfulMonad n] [Iterator α m β] [MonadLiftT m n] [LawfulMonadLiftT m n]
    {f : β → PostconditionT n (Option γ)} {it : IterM (α := α) m β} :
    (IterM.stepAsHetT (it.filterMapWithPostcondition f)) =
      (((IterM.stepAsHetT it).liftInner n : HetT n _)).bind (match · with
        | .yield it' out => do match ← HetT.ofPostconditionT (f out) with
          | some out' => return .yield (it'.filterMapWithPostcondition f) out'
          | none => return .skip (it'.filterMapWithPostcondition f)
        | .skip it' => return .skip (it'.filterMapWithPostcondition f)
        | .done => return .done) := by
  simp only [HetT.ext_iff, Equivalence.property_step, Equivalence.prun_step, HetT.prun_bind,
    HetT.property_liftInner, Equivalence.prun_liftInner_step, HetT.property_bind]
  refine ⟨?_, ?_⟩
  · ext step
    constructor
    · intro h
      cases h
      case yieldNone it' out h h' =>
        refine ⟨_, h, ?_⟩
        simp only [bind, HetT.property_bind, HetT.property_ofPostconditionT]
        exact ⟨none, by simp [Pure.pure]; exact ⟨h', rfl⟩⟩
      case yieldSome it' out out' h h' =>
        refine ⟨_, h, ?_⟩
        simp only [bind, HetT.property_bind, HetT.property_ofPostconditionT]
        exact ⟨some out', by simp [Pure.pure]; exact ⟨h', rfl⟩⟩
      case skip it' h =>
        exact ⟨_, h, by simp [Pure.pure]; rfl⟩
      case done h =>
        exact ⟨_, h, by simp [Pure.pure]⟩
    · rintro ⟨step', h, h'⟩
      cases step'
      case yield it' out =>
        simp only [bind, HetT.property_bind, HetT.property_ofPostconditionT] at h'
        rcases h' with ⟨out', h'⟩
        cases out'
        · simp only [pure, HetT.property_pure] at h'
          cases h'.2
          exact .yieldNone h h'.1
        · simp only [pure, HetT.property_pure] at h'
          cases h'.2
          exact .yieldSome h h'.1
      case skip it' =>
        simp only [pure, HetT.property_pure] at h'
        cases h'
        exact .skip h
      case done =>
        simp only [pure, HetT.property_pure] at h'
        cases h'
        exact .done h
  · intro β f
    simp only [IterM.step_filterMapWithPostcondition, PlausibleIterStep.skip,
      PlausibleIterStep.yield, PlausibleIterStep.done, bind_assoc]
    apply bind_congr
    intro step
    cases step.inflate using PlausibleIterStep.casesOn
    · simp only [bind_assoc, bind, HetT.prun_bind, HetT.prun_ofPostconditionT]
      apply bind_congr
      rintro ⟨out, _⟩
      cases out <;> simp [pure]
    · simp [pure]
    · simp [pure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb54f7be75c066edf6792cf9df0d9ebdc7cb651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
