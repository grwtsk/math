# Append.instFinitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:451bdf9c8321bc60c22e0aadcc6316c2e9099b5e85046342aaa1395ffd7135d9",
  "kind": "def",
  "lexical_name": "Append.instFinitenessRelation",
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
  "slug": "append-instfinitenessrelation--bbdf9e14a0fc2c23a3e11870",
  "source": {
    "blob": "75a51b7f706ab0065a09022be049c24221e04ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbdf9e14a0fc2c23a3e11870edb83e562e74a9ae49b8166b340c3302da8f1054",
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

Occurrence: `declaration:451bdf9c8321bc60c22e0aadcc6316c2e9099b5e85046342aaa1395ffd7135d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Append.instFinitenessRelation [Monad m] [Iterator α₁ m β] [Iterator α₂ m β]
    [Finite α₁ m] [Finite α₂ m] :
    FinitenessRelation (Append α₁ α₂ m β) m where
  Rel := Append.Rel α₁ α₂ m β
  wf := by
    apply InvImage.wf
    refine ⟨fun (a, b) => Prod.lexAccessible (WellFounded.apply ?_ a) (WellFounded.apply ?_) b⟩
    · exact Option.wellFounded_lt <| InvImage.wf _ WellFoundedRelation.wf
    · exact InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    cases h' <;> cases h
    case fstYield =>
      apply Append.rel_of_fst
      exact IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case fstSkip =>
      apply Append.rel_of_fst
      exact IterM.TerminationMeasures.Finite.rel_of_skip ‹_›
    case fstDone =>
      exact Append.rel_fstDone
    case sndYield =>
      apply Append.rel_of_snd
      exact IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case sndSkip =>
      apply Append.rel_of_snd
      exact IterM.TerminationMeasures.Finite.rel_of_skip ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant5efc19f21a8d64dd57b22abf71b90f3202135fe75025e39069a116e3034b6f19.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a51b7f706ab0065a09022be049c24221e04ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
