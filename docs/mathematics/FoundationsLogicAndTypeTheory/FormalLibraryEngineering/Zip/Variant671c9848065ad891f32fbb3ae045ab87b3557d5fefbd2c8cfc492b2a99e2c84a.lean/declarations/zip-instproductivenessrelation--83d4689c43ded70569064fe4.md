# Zip.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca8f1ef4c79324dfd282e4c4ba465de77c8cd07b35b553040c5a069b1aec95fc",
  "kind": "def",
  "lexical_name": "Zip.instProductivenessRelation",
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
  "slug": "zip-instproductivenessrelation--83d4689c43ded70569064fe4",
  "source": {
    "blob": "c24e9496ada9f89563ff415b85b94deea88be8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 284,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83d4689c43ded70569064fe41d8965f20d7785df366a3ea34b7aab01d0216b62",
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

Occurrence: `declaration:ca8f1ef4c79324dfd282e4c4ba465de77c8cd07b35b553040c5a069b1aec95fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Zip.instProductivenessRelation [Monad m] [Productive α₁ m] [Productive α₂ m] :
    ProductivenessRelation (Zip α₁ m α₂ β₂) m where
  Rel := Zip.Rel₃ m
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · apply Option.SomeLtNone.wellFounded_lt
      exact emptyWf.wf
    · refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
      · exact WellFoundedRelation.wf
      · exact WellFoundedRelation.wf
  subrelation {it it'} h := by
    cases h
    case yieldLeft hm it' out hp =>
      apply Zip.rel₃_of_memoizedLeft
      simp [Option.SomeLtNone.lt, hm]
    case skipLeft hm it' hp =>
      obtain ⟨⟨left, memoizedLeft, right⟩⟩ := it
      simp only at hm
      rw [hm]
      apply Zip.rel₃_of_left
      exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›
    case skipRight out₁ hm it₂' hp =>
      apply Zip.rel₃_of_right
      · simp_all
      · exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variant671c9848065ad891f32fbb3ae045ab87b3557d5fefbd2c8cfc492b2a99e2c84a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24e9496ada9f89563ff415b85b94deea88be8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
