# Zip.instFinitenessRelation₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae99823e01ee48112a975222e33c3c0c016e6c61acfdab044e22f62ddcde9fa7",
  "kind": "def",
  "lexical_name": "Zip.instFinitenessRelation₂",
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
  "slug": "zip-instfinitenessrelation--6ca66cba8ce0b6305cd4967e",
  "source": {
    "blob": "c24e9496ada9f89563ff415b85b94deea88be8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ca66cba8ce0b6305cd4967ee4b245c0fbef835c5aeb5aa4e5bbe7d79f085c79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae99823e01ee48112a975222e33c3c0c016e6c61acfdab044e22f62ddcde9fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Zip.instFinitenessRelation₂ [Monad m] [Productive α₁ m] [Finite α₂ m] :
    FinitenessRelation (Zip α₁ m α₂ β₂) m where
  Rel := Zip.Rel₂ m
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · exact WellFoundedRelation.wf
    · refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
      · apply Option.SomeLtNone.wellFounded_lt
        exact emptyWf.wf
      · exact WellFoundedRelation.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h'
    case yieldLeft hm it' out hp =>
      cases h
      apply Zip.rel₂_of_memoizedLeft
      simp_all [Option.SomeLtNone.lt]
    case skipLeft hm it' hp =>
      cases h
      apply Zip.rel₂_of_left
      · simp_all
      · exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›
    case doneLeft hm hp =>
      cases h
    case yieldRight out₁ hm it₂' out₂ hp =>
      cases h
      apply Zip.rel₂_of_right
      exact IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case skipRight out₁ hm it₂' hp =>
      cases h
      apply Zip.rel₂_of_right
      exact IterM.TerminationMeasures.Finite.rel_of_skip ‹_›
    case doneRight out₁ hm hp =>
      cases h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24e9496ada9f89563ff415b85b94deea88be8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
