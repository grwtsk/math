# gc_homogeneousIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9b7e12c-2b74-adbb-aa60-5a989504a493",
  "kind": "theorem",
  "lexical_name": "gc_homogeneousIdeal",
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
  "slug": "gc-homogeneousideal--f58bd0e0e7488726b33681ef",
  "source": {
    "blob": "76c38dea355928fbdf95c02167c4a5bbad38ea81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58bd0e0e7488726b33681ef7302e78b000cb05e7951f6c77c38080e2c906350",
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

Occurrence: `result:d9b7e12c-2b74-adbb-aa60-5a989504a493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gc_homogeneousIdeal :
    @GaloisConnection (HomogeneousIdeal 𝒜) (Set (ProjectiveSpectrum 𝒜))ᵒᵈ _ _
      (fun I => zeroLocus 𝒜 I) fun t => vanishingIdeal t :=
  fun I t => by
  simpa [show I.toIdeal ≤ (vanishingIdeal t).toIdeal ↔ I ≤ vanishingIdeal t from Iff.rfl] using
    subset_zeroLocus_iff_le_vanishingIdeal t I.toIdeal
#align projective_spectrum.gc_homogeneous_ideal ProjectiveSpectrum.gc_homogeneousIdeal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf6655b0eac79040225c217238beee4a357916497e25bd42d5756c708f216d00e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76c38dea355928fbdf95c02167c4a5bbad38ea81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
