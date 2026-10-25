# Append.instProductivenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c513d1310f300891123661798e1609dabfae0e1b15cbc94972f74ba5fc77f0b4",
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
  "slug": "append-instproductivenessrelation--5832542916ace952cdac9f60",
  "source": {
    "blob": "43bbd837dc9952333d537dc4e237a611f2b61778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5832542916ace952cdac9f60ee656f1b88c46103b7d43822d254d57cf9056f73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c513d1310f300891123661798e1609dabfae0e1b15cbc94972f74ba5fc77f0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bbd837dc9952333d537dc4e237a611f2b61778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
