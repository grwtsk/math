# subset_zeroLocus_vanishingIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a12cbfa9-de52-99d7-241d-b49083fc8920",
  "kind": "theorem",
  "lexical_name": "subset_zeroLocus_vanishingIdeal",
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
  "slug": "subset-zerolocus-vanishingideal--1ec8538c9fab867c9a6d2069",
  "source": {
    "blob": "76c38dea355928fbdf95c02167c4a5bbad38ea81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ec8538c9fab867c9a6d206978f4afd312ce5ca06dcb39e3842a9657da03dce1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a12cbfa9-de52-99d7-241d-b49083fc8920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_zeroLocus_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) :
    t ⊆ zeroLocus 𝒜 (vanishingIdeal t) :=
  (gc_ideal _).l_u_le t
#align projective_spectrum.subset_zero_locus_vanishing_ideal ProjectiveSpectrum.subset_zeroLocus_vanishingIdeal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76c38dea355928fbdf95c02167c4a5bbad38ea81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
