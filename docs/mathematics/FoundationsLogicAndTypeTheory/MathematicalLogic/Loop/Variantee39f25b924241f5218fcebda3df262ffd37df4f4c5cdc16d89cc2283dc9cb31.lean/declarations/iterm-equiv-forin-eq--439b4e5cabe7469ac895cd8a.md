# IterM.Equiv.forIn_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7c3b6af3fd3458177e55b56d3062c7ad4601838",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b39bfc6-c7c4-9544-8f71-f98ac1e5180c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c8af8ce-ee17-fa48-7bf3-66ddeafbae2d",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.forIn_eq",
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
  "slug": "iterm-equiv-forin-eq--439b4e5cabe7469ac895cd8a",
  "source": {
    "blob": "f7c3b6af3fd3458177e55b56d3062c7ad4601838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:439b4e5cabe7469ac895cd8a67b68a2e51e5565edb08a0811750dea449e35288",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8af8ce-ee17-fa48-7bf3-66ddeafbae2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.forIn_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    {n : Type w → Type w''} [Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m]
    [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n]
    [IteratorLoop α₁ m n] [LawfulIteratorLoop α₁ m n]
    [IteratorLoop α₂ m n] [LawfulIteratorLoop α₂ m n]
    [MonadLiftT m n] [LawfulMonadLiftT m n] {init : γ} {f : β → γ → n (ForInStep γ)}
    {ita : IterM (α := α₁) m β} {itb : IterM (α := α₂) m β} (h : IterM.Equiv ita itb) :
    ForIn.forIn (m := n) ita init f = ForIn.forIn (m := n) itb init f := by
  revert h itb init
  apply ita.inductSteps
  intro ita ihy ihs init itb h
  rw [IterM.forIn_eq_match_step, IterM.forIn_eq_match_step]
  apply h.lift_step_bind_congr
  intro sa sb hs
  simp only [IterStep.bundledQuotient, IterStep.mapIterator_comp, Function.comp_apply] at hs
  cases ha : sa.inflate using PlausibleIterStep.casesOn <;>
    cases hb : sb.inflate using PlausibleIterStep.casesOn
  all_goals try exfalso; simp_all; done
  · simp only [ha, hb, IterStep.mapIterator_yield, IterStep.yield.injEq,
      BundledIterM.Equiv.quotMk_eq_iff] at hs
    rcases hs with ⟨hs, rfl⟩
    apply bind_congr
    intro forInStep
    cases forInStep
    · rfl
    · exact ihy ‹_› hs
  · simp only [ha, hb, IterStep.mapIterator_skip, IterStep.skip.injEq,
      BundledIterM.Equiv.quotMk_eq_iff] at hs
    exact ihs ‹_› hs
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c3b6af3fd3458177e55b56d3062c7ad4601838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
