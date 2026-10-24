# zeroLocus_anti_mono_homogeneousIdeal

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
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cc8c38d-8f25-17a4-3911-81f80cb84049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c77a4e3-d2e6-5f97-0d59-5c190ee996b5",
  "kind": "theorem",
  "lexical_name": "zeroLocus_anti_mono_homogeneousIdeal",
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
  "slug": "zerolocus-anti-mono-homogeneousideal--f2ee7d5e173f2f12686fc0ef",
  "source": {
    "blob": "8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2ee7d5e173f2f12686fc0ef727f9382958d77f08fab8553c8fbac9e66e9aae9",
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

Occurrence: `result:1c77a4e3-d2e6-5f97-0d59-5c190ee996b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroLocus_anti_mono_homogeneousIdeal {s t : HomogeneousIdeal 𝒜} (h : s ≤ t) :
    zeroLocus 𝒜 (t : Set A) ⊆ zeroLocus 𝒜 (s : Set A) :=
  (gc_homogeneousIdeal _).monotone_l h
#align projective_spectrum.zero_locus_anti_mono_homogeneous_ideal ProjectiveSpectrum.zeroLocus_anti_mono_homogeneousIdeal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
