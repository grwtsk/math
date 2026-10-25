# Drop.instFinitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab4e23458b5f046f044274856b2228760da6f930d96afd58b3768d49836cb588",
  "kind": "def",
  "lexical_name": "Drop.instFinitenessRelation",
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
  "slug": "drop-instfinitenessrelation--0bec3307b283b6731addb56b",
  "source": {
    "blob": "99f7cbba7249e447764a47c3ce82a5c9b5c19236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variant78d7854554ef3440bc6c465879a11bec6944c24d38dbb2b5a283df949a7bc3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bec3307b283b6731addb56b9fd074bc15f1a107f376fa10798b96c6af9fd300",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variant78d7854554ef3440bc6c465879a11bec6944c24d38dbb2b5a283df949a7bc3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab4e23458b5f046f044274856b2228760da6f930d96afd58b3768d49836cb588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Drop.instFinitenessRelation [Iterator α m β] [Monad m]
    [Finite α m] :
    FinitenessRelation (Drop α m β) m where
  Rel := Drop.FiniteRel m
  wf := by
    apply InvImage.wf
    exact WellFoundedRelation.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h'
    case drop it' h' _ =>
      cases h
      apply IterM.TerminationMeasures.Finite.rel_of_yield
      exact h'
    case skip it' h' =>
      cases h
      apply IterM.TerminationMeasures.Finite.rel_of_skip
      exact h'
    case done h' =>
      cases h
    case yield it' out h' h'' =>
      cases h
      apply IterM.TerminationMeasures.Finite.rel_of_yield
      exact h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variant78d7854554ef3440bc6c465879a11bec6944c24d38dbb2b5a283df949a7bc3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Drop/Variant78d7854554ef3440bc6c465879a11bec6944c24d38dbb2b5a283df949a7bc3b7.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f7cbba7249e447764a47c3ce82a5c9b5c19236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
