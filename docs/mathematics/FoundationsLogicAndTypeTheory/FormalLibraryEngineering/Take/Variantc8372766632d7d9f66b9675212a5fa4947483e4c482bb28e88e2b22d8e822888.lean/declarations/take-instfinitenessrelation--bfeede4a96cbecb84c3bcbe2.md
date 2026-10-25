# Take.instFinitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ae57275ebdbd978e81bc96b7b350c2431c6001b7ae217b163b19c0fd22c6400",
  "kind": "def",
  "lexical_name": "Take.instFinitenessRelation",
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
  "slug": "take-instfinitenessrelation--bfeede4a96cbecb84c3bcbe2",
  "source": {
    "blob": "af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfeede4a96cbecb84c3bcbe2ad1f39115569301d08308603524d7aaf8606b26c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ae57275ebdbd978e81bc96b7b350c2431c6001b7ae217b163b19c0fd22c6400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Take.instFinitenessRelation [Monad m] [Iterator α m β]
    [Productive α m] :
    FinitenessRelation (Take α m) m where
  Rel := Take.Rel m
  wf := by
    rw [Rel]
    split
    all_goals
      apply InvImage.wf
      refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
      · exact WellFoundedRelation.wf
      · exact WellFoundedRelation.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h'
    case yield it' out k h' h'' =>
      cases h
      cases it.internalState.finite
      · apply rel_of_countdown
        simp only
        omega
      · by_cases h : it.internalState.countdown = 0
        · simp only [h, Nat.zero_le, Nat.sub_eq_zero_of_le]
          apply rel_of_zero_of_inner h rfl
          exact .single ⟨_, rfl, h'⟩
        · apply rel_of_countdown
          simp only
          omega
    case skip it' out k h' h'' =>
      cases h
      by_cases h : it.internalState.countdown = 0
      · simp only [h]
        apply Take.rel_of_zero_of_inner h rfl
        exact .single ⟨_, rfl, h'⟩
      · obtain ⟨it, k, rfl⟩ := IterM.take.surjective_of_zero_lt it (by omega)
        apply Take.rel_of_inner
        exact IterM.TerminationMeasures.Productive.rel_of_skip h'
    case done _ =>
      cases h
    case depleted _ =>
      cases h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
