# Take.instIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a005bbf3b77360f332bf39ef0158bc350b2e844beae461a70713d5c5669c0f3a",
  "kind": "instance",
  "lexical_name": "Take.instIterator",
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
  "slug": "take-institerator--0c7e1c9ac110c09f5771f145",
  "source": {
    "blob": "af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c7e1c9ac110c09f5771f14539e73b9b1f2cdde5256d5c8209a47a7e0bec0b42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a005bbf3b77360f332bf39ef0158bc350b2e844beae461a70713d5c5669c0f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Take.instIterator [Monad m] [Iterator α m β] : Iterator (Take α m) m β where
  IsPlausibleStep := Take.PlausibleStep
  step it :=
    if h : it.internalState.countdown = 1 then
      pure <| .deflate <| .done (.depleted h)
    else do
      match (← it.internalState.inner.step).inflate with
      | .yield it' out h' =>
        pure <| .deflate <| .yield ⟨it.internalState.countdown - 1, it', (it.internalState.finite.imp_left (by omega))⟩ out (.yield h' h)
      | .skip it' h' => pure <| .deflate <| .skip ⟨it.internalState.countdown, it', it.internalState.finite⟩ (.skip h' h)
      | .done h' => pure <| .deflate <| .done (.done h')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variantc8372766632d7d9f66b9675212a5fa4947483e4c482bb28e88e2b22d8e822888.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af12b055c54f8bcfdbdfd1e2a6e84f5efe69f018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
