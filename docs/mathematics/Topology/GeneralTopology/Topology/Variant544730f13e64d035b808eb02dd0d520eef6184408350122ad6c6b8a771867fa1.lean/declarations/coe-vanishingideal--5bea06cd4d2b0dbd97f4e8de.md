# coe_vanishingIdeal

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
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ba170e4-7df1-1674-326c-ee5049a02a8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c473356-f33c-ed37-fb60-a40b5abd8724",
  "kind": "theorem",
  "lexical_name": "coe_vanishingIdeal",
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
  "slug": "coe-vanishingideal--5bea06cd4d2b0dbd97f4e8de",
  "source": {
    "blob": "8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bea06cd4d2b0dbd97f4e8dec520d77591b166a923e4b302a43cff3c4688b0f5",
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

Occurrence: `result:4c473356-f33c-ed37-fb60-a40b5abd8724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_vanishingIdeal (t : Set (ProjectiveSpectrum 𝒜)) :
    (vanishingIdeal t : Set A) =
      { f | ∀ x : ProjectiveSpectrum 𝒜, x ∈ t → f ∈ x.asHomogeneousIdeal } := by
  ext f
  rw [vanishingIdeal, SetLike.mem_coe, ← HomogeneousIdeal.mem_iff, HomogeneousIdeal.toIdeal_iInf,
    Submodule.mem_iInf]
  refine' forall_congr' fun x => _
  rw [HomogeneousIdeal.toIdeal_iInf, Submodule.mem_iInf, HomogeneousIdeal.mem_iff]
#align projective_spectrum.coe_vanishing_ideal ProjectiveSpectrum.coe_vanishingIdeal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant544730f13e64d035b808eb02dd0d520eef6184408350122ad6c6b8a771867fa1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f4240ecd8b3fa7fb5783f42e77f1f0e74a3df7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
