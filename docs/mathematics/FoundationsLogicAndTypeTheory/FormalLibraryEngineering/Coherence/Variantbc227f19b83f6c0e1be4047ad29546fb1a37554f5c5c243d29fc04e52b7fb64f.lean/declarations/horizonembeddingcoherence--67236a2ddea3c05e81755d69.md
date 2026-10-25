# HorizonEmbeddingCoherence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c83f0ed4e1a5c42a830ec64717725e083bb8351d461cd9bbd782b7ad88fea3b",
  "kind": "structure",
  "lexical_name": "HorizonEmbeddingCoherence",
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
  "slug": "horizonembeddingcoherence--67236a2ddea3c05e81755d69",
  "source": {
    "blob": "dc37639585f94e93a19367da290de86efa4afd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coherence/Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67236a2ddea3c05e81755d69b1420ceb6a48c139af634c373cb49afa23683c4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coherence/Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c83f0ed4e1a5c42a830ec64717725e083bb8351d461cd9bbd782b7ad88fea3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HorizonEmbeddingCoherence
    (Low Mid High : FinitePrimeHorizon)
    (ι₁ : HorizonEmbedding Low Mid)
    (ι₂ : HorizonEmbedding Mid High)
    (ι₃ : HorizonEmbedding Low High) :
    Prop where
  mapCut_comp :
    ∀ S,
      ι₃.mapCut S =
      ι₂.mapCut (ι₁.mapCut S)
  persistent_id_comp :
    ∀ S,
      ι₃.persistent_cut_id S =
      ι₂.persistent_cut_id
        (ι₁.mapCut S)

end Mathematics.SemiLocalDefect.SoninCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coherence/Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coherence/Variantbc227f19b83f6c0e1be4047ad29546fb1a37554f5c5c243d29fc04e52b7fb64f.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc37639585f94e93a19367da290de86efa4afd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
