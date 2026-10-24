# vanishingIdeal_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5040027d-147a-e352-cc74-bb42597bf046",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cf1454a-61df-d222-b34b-88e128268c3d",
  "kind": "theorem",
  "lexical_name": "vanishingIdeal_iUnion",
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
  "slug": "vanishingideal-iunion--48d53f63bce8853a5988840d",
  "source": {
    "blob": "8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48d53f63bce8853a5988840d5a02fda205839b08d6e85ef5f85db11c3ffd2f9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf1454a-61df-d222-b34b-88e128268c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanishingIdeal_iUnion {γ : Sort*} (t : γ → Set (ProjectiveSpectrum 𝒜)) :
    vanishingIdeal (⋃ i, t i) = ⨅ i, vanishingIdeal (t i) :=
  HomogeneousIdeal.toIdeal_injective <| by
    convert(gc_ideal 𝒜).u_iInf; exact HomogeneousIdeal.toIdeal_iInf _
#align projective_spectrum.vanishing_ideal_Union ProjectiveSpectrum.vanishingIdeal_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
