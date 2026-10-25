# Flatten.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48c66aa2e7d1400e345203870c8f023705d8c55665a603d01daab9737dc390d4",
  "kind": "instance",
  "lexical_name": "Flatten.instIterator",
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
  "slug": "flatten-institerator--a864bf2ff5b275be5088494d",
  "source": {
    "blob": "bb8dd3798c412a0e204c7d0850e228138c3b7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a864bf2ff5b275be5088494d75d70ee306c77abea441b85e1e684bfd6a5cb7d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48c66aa2e7d1400e345203870c8f023705d8c55665a603d01daab9737dc390d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance Flatten.instIterator [Monad m] [Iterator α m (IterM (α := α₂) m β)] [Iterator α₂ m β] :
    Iterator (Flatten α α₂ β m) m β where
  IsPlausibleStep := IsPlausibleStep
  step it :=
    match it with
    | ⟨it₁, none⟩ => do
      match (← it₁.step).inflate with
      | .yield it₁' it₂' h =>
          pure <| .deflate <| .skip ⟨it₁', some it₂'⟩ (.outerYield h)
      | .skip it₁' h =>
          pure <| .deflate <| .skip ⟨it₁', none⟩ (.outerSkip h)
      | .done h =>
          pure <| .deflate <| .done (.outerDone h)
    | ⟨it₁, some it₂⟩ => do
      match (← it₂.step).inflate with
      | .yield it₂' c h =>
          pure <| .deflate <| .yield ⟨it₁, some it₂'⟩ c (.innerYield h)
      | .skip it₂' h =>
          pure <| .deflate <| .skip ⟨it₁, some it₂'⟩ (.innerSkip h)
      | .done h =>
          pure <| .deflate <| .skip ⟨it₁, none⟩ (.innerDone h)

section Finite

variable {α : Type w} {α₂ : Type w} {β : Type w} {m : Type w → Type w'}

variable (α m β) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8dd3798c412a0e204c7d0850e228138c3b7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
