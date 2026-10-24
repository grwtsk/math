# compactSpace_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:608e453c-faf0-5952-a1f1-6c3e5eb9d989",
  "kind": "theorem",
  "lexical_name": "compactSpace_uniformity",
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
  "slug": "compactspace-uniformity--e504b18595d6ac9efaae93d2",
  "source": {
    "blob": "7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e504b18595d6ac9efaae93d29b9c3192033ec7559054f4e6cc145aba51eadf21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:608e453c-faf0-5952-a1f1-6c3e5eb9d989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactSpace_uniformity [CompactSpace α] : 𝓤 α = ⨆ x, 𝓝 (x, x) :=
  nhdsSet_diagonal_eq_uniformity.symm.trans (nhdsSet_diagonal _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant11aa6ebc3b78b5e70b3c536783f9059bf13c3a880f570c0160b4315e85b1a19d.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd6f354c2fb6fd4c7cd28287ecc9f752a0d98d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
