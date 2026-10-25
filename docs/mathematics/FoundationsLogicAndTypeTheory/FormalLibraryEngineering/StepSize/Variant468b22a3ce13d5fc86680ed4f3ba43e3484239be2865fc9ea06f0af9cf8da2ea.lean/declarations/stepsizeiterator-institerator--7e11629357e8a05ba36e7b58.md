# StepSizeIterator.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b645d191c83361cb30fb80290e87a3bac3ee7e48e6e7f8d6492e82759e146df6",
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
  "slug": "stepsizeiterator-institerator--7e11629357e8a05ba36e7b58",
  "source": {
    "blob": "4cf00a615b69fe8cb66f24abf6577d2f543f37c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e11629357e8a05ba36e7b589263927961adc5a981d55fbd3b9e449aa6e6376c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b645d191c83361cb30fb80290e87a3bac3ee7e48e6e7f8d6492e82759e146df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf00a615b69fe8cb66f24abf6577d2f543f37c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
