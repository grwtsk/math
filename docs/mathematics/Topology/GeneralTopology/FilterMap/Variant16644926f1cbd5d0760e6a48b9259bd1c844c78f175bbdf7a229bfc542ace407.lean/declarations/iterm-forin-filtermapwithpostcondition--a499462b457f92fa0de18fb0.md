# IterM.forIn_filterMapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acf60501-9535-431b-1b26-aec53270a162",
  "kind": "theorem",
  "lexical_name": "IterM.forIn_filterMapWithPostcondition",
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
  "slug": "iterm-forin-filtermapwithpostcondition--a499462b457f92fa0de18fb0",
  "source": {
    "blob": "2d9f20680a123ddbd21d6deb3e478fa83d8e6191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1280,
    "line": 1250,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a499462b457f92fa0de18fb0483cf1ae64a4cfb4234fa930334f9419f8296f76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf60501-9535-431b-1b26-aec53270a162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1250–1280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.forIn_filterMapWithPostcondition
    [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n] [Monad o] [LawfulMonad o]
    [MonadLiftT m n] [LawfulMonadLiftT m n] [MonadLiftT n o] [LawfulMonadLiftT n o]
    [Iterator α m β] [Finite α m]
    [IteratorLoop α m o] [LawfulIteratorLoop α m o]
    {it : IterM (α := α) m β} {f : β → PostconditionT n (Option β₂)} {init : γ}
    {g : β₂ → γ → o (ForInStep γ)} :
    haveI : MonadLift n o := ⟨monadLift⟩
    forIn (it.filterMapWithPostcondition f) init g = forIn it init (fun out acc => do
        match ← (f out).run with
        | some c => g c acc
        | none => return .yield acc) := by
  letI : MonadLift n o := ⟨monadLift⟩
  simp only [PostconditionT.run_eq_map]
  induction it using IterM.inductSteps generalizing init with | step it ihy ihs
  rw [IterM.forIn_eq_match_step, IterM.forIn_eq_match_step, IterM.step_filterMapWithPostcondition]
  simp only [liftM_bind, bind_assoc]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [liftM_bind, bind_assoc, liftM_map, bind_map_left]
    apply bind_congr; intro fx
    match fx with
    | ⟨none, _⟩ =>
      simp [liftM_pure, pure_bind, Shrink.inflate_deflate, ihy ‹_›]
    | ⟨some _, _⟩ =>
      simp only [liftM_pure, pure_bind, Shrink.inflate_deflate]
      apply bind_congr; intro gx
      split <;> simp [ihy ‹_›]
  · simp [ihs ‹_›]
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean#L1250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9f20680a123ddbd21d6deb3e478fa83d8e6191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
