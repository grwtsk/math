# StepSizeIterator.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0615313ad6d286160daa52b38aa7c493d89adc9d59cd9da91c2a3ecb137e50b",
  "kind": "instance",
  "lexical_name": "StepSizeIterator.instIterator",
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
  "slug": "stepsizeiterator-institerator--6e48e482bf01ec35e8f15e48",
  "source": {
    "blob": "440d1cbd839953f6b0b0db331cda018a2216a4d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e48e482bf01ec35e8f15e489050f1bcd3963b88e072a0a546b9e284f8d934ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0615313ad6d286160daa52b38aa7c493d89adc9d59cd9da91c2a3ecb137e50b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance StepSizeIterator.instIterator [Iterator α m β] [IteratorAccess α m] [Monad m] :
    Iterator (Types.StepSizeIterator α m β) m β where
  IsPlausibleStep it step :=
    it.internalState.inner.IsPlausibleNthOutputStep it.internalState.nextIdx
        (step.mapIterator (Types.StepSizeIterator.inner ∘ IterM.internalState)) ∧
      ∀ it' out, step = .yield it' out →
        it'.internalState.n = it.internalState.n ∧ it'.internalState.nextIdx = it.internalState.n
  step it := (fun s => .deflate ⟨s.1.mapIterator (⟨⟨it.internalState.n, it.internalState.n, ·⟩⟩), by
      simp only [IterStep.mapIterator_mapIterator]
      refine cast ?_ s.property
      rw (occs := [1]) [← IterStep.mapIterator_id (step := s.val)]
      congr, by
      intro it' out
      cases s.val
      · simp only [IterStep.mapIterator_yield, IterStep.yield.injEq, and_imp]
        rintro h _
        simp [← h]
      · simp
      · simp
      done⟩) <$> it.internalState.inner.nextAtIdx? it.internalState.nextIdx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440d1cbd839953f6b0b0db331cda018a2216a4d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
