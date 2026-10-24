# DisjointTransportCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23a94b5872a31d0b93f8bf9973229f08c96dc39cdd35b3345707a5295e57124f",
  "kind": "structure",
  "lexical_name": "DisjointTransportCapability",
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
  "slug": "disjointtransportcapability--325776a8cab86c18f6e1a254",
  "source": {
    "blob": "0d45d62ae6b2df5d11d53027dcbb1857423189dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 46,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:325776a8cab86c18f6e1a25428cc56608d80cd534bcbe780287eecff246ce7ef",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23a94b5872a31d0b93f8bf9973229f08c96dc39cdd35b3345707a5295e57124f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DisjointTransportCapability
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  transportAfter : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M),
    T.Disjoint first surviving →
      T.FramedEmbedding p' q' (T.surgery first)
  /-- Independent fixed-exterior construction of the surviving site. -/
  transportByFixedExterior : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M)
      (h : T.Disjoint first surviving),
    T.FramedEmbedding p' q' (T.surgery first)
  /-- Naturality is an equality with fixed-exterior transport, not an opaque predicate. -/
  transport_natural : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M)
      (h : T.Disjoint first surviving),
    transportAfter first surviving h = transportByFixedExterior first surviving h
  swap : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.Hom
      (T.surgery (transportAfter left right hleft))
      (T.surgery (transportAfter right left hright))
  swapExterior : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.CommonExterior
      (T.surgery (transportAfter left right hleft))
      (T.surgery (transportAfter right left hright))
  swap_selects_exterior : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.selectedExterior (swap left right hleft hright) =
      swapExterior left right hleft hright
  swap_reverse : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    swap right left hright hleft = G.symm (swap left right hleft hright)

namespace DisjointTransportCapability

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (D : DisjointTransportCapability T G)

/-- The two possible orders of two mutually disjoint surgeries are relatively diffeomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d45d62ae6b2df5d11d53027dcbb1857423189dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
