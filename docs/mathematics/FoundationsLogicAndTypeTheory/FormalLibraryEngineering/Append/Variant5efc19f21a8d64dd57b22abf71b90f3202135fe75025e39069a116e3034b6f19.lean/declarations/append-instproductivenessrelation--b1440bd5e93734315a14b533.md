# Append.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b59e9a05cff2971941e98a4d706f13bd9873cc15210daaa30dd1328cd9c236e6",
  "kind": "def",
  "lexical_name": "Append.instProductivenessRelation",
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
  "slug": "append-instproductivenessrelation--b1440bd5e93734315a14b533",
  "source": {
    "blob": "75a51b7f706ab0065a09022be049c24221e04ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1440bd5e93734315a14b533031b7d09c9424d8792d6de4b72685fe1d938f5dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b59e9a05cff2971941e98a4d706f13bd9873cc15210daaa30dd1328cd9c236e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Append.instProductivenessRelation [Monad m] [Iterator α₁ m β] [Iterator α₂ m β]
    [Productive α₁ m] [Productive α₂ m] :
    ProductivenessRelation (Append α₁ α₂ m β) m where
  Rel := Append.ProductiveRel α₁ α₂ m β
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · exact Option.wellFounded_lt <| InvImage.wf _ WellFoundedRelation.wf
    · exact InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    cases h
    case fstSkip =>
      apply Append.productiveRel_of_fst
      exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›
    case fstDone =>
      exact Append.productiveRel_fstDone
    case sndSkip =>
      apply Append.productiveRel_of_snd
      exact IterM.TerminationMeasures.Productive.rel_of_skip ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a51b7f706ab0065a09022be049c24221e04ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
