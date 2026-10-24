# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f38a710b8d3ab91ecd17baca46c645ef096ab01c7da6de847d29106e9a677cd",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--07f85b69d41eeae88c74d228",
  "source": {
    "blob": "9d37bd0a7568d2a7efa593cc80742b38468baa89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07f85b69d41eeae88c74d228ccdb2fc0b61f7ec283f70b922fb86747308380c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f38a710b8d3ab91ecd17baca46c645ef096ab01c7da6de847d29106e9a677cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : ProjectiveSpectrum 𝒜) : Ideal.IsPrime x.asHomogeneousIdeal.toIdeal := x.isPrime

/-- The zero locus of a set `s` of elements of a commutative ring `A` is the set of all relevant
homogeneous prime ideals of the ring that contain the set `s`.

An element `f` of `A` can be thought of as a dependent function on the projective spectrum of `𝒜`.
At a point `x` (a homogeneous prime ideal) the function (i.e., element) `f` takes values in the
quotient ring `A` modulo the prime ideal `x`. In this manner, `zeroLocus s` is exactly the subset
of `ProjectiveSpectrum 𝒜` where all "functions" in `s` vanish simultaneously. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Varianta0e7c1cb6d5fa16ac86396b19c86c4322032f96ea98503735f323a58bb1a8df9.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d37bd0a7568d2a7efa593cc80742b38468baa89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
