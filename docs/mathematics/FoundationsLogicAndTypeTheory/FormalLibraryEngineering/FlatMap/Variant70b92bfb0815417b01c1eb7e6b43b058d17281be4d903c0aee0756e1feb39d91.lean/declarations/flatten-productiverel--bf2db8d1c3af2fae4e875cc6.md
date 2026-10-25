# Flatten.ProductiveRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:940be0fffd5d8ec865037b187a3581114b0256d30125f34fc639ae69f68442f5",
  "kind": "def",
  "lexical_name": "Flatten.ProductiveRel",
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
  "slug": "flatten-productiverel--bf2db8d1c3af2fae4e875cc6",
  "source": {
    "blob": "bb8dd3798c412a0e204c7d0850e228138c3b7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2db8d1c3af2fae4e875cc65601ac70e2c6c29e0992d2c065960ddd9ecd74d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:940be0fffd5d8ec865037b187a3581114b0256d30125f34fc639ae69f68442f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flatten.ProductiveRel [Monad m] [Iterator α m (IterM (α := α₂) m β)] [Iterator α₂ m β] [Finite α m]
    [Productive α₂ m] :
    IterM (α := Flatten α α₂ β m) m β → IterM (α := Flatten α α₂ β m) m β → Prop :=
  InvImage
    (Prod.Lex
      (InvImage IterM.TerminationMeasures.Finite.Rel IterM.finitelyManySteps)
      (Option.lt (InvImage IterM.TerminationMeasures.Productive.Rel IterM.finitelyManySkips)))
    (fun it => (it.internalState.it₁, it.internalState.it₂))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8dd3798c412a0e204c7d0850e228138c3b7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
