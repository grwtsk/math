# Flatten.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:866a2a651bc03abce5c324d190a9f303b4b4a62bc0e8db0fe9582d81d768e655",
  "kind": "def",
  "lexical_name": "Flatten.instProductivenessRelation",
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
  "slug": "flatten-instproductivenessrelation--295cfe6a7fb8bfed78496cc1",
  "source": {
    "blob": "2411b061bd0cd1dfa62ed912144a70ef4f94bfd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:295cfe6a7fb8bfed78496cc1d79f3a5711262e212c1bedf49d654ab91d8a8ef0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:866a2a651bc03abce5c324d190a9f303b4b4a62bc0e8db0fe9582d81d768e655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flatten.instProductivenessRelation [Monad m] [Iterator α m (IterM (α := α₂) m β)]
    [Iterator α₂ m β] [Finite α m] [Productive α₂ m] :
    ProductivenessRelation (Flatten α α₂ β m) m where
  Rel := ProductiveRel α β m
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · exact InvImage.wf _ WellFoundedRelation.wf
    · exact Option.wellFounded_lt <| InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    cases h
    case outerYield =>
      apply Flatten.productiveRel_of_left
      exact IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case outerSkip =>
      apply Flatten.productiveRel_of_left
      exact IterM.TerminationMeasures.Finite.rel_of_skip ‹_›
    case innerSkip =>
      apply Flatten.productiveRel_of_right₁
      exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›
    case innerDone =>
      apply Flatten.productiveRel_of_right₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2411b061bd0cd1dfa62ed912144a70ef4f94bfd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
