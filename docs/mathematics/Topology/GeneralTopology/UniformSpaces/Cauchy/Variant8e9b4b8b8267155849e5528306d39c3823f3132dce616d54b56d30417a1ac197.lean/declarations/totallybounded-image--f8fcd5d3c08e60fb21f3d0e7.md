# TotallyBounded.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83e8fe6b-d1d7-c9cc-ab18-0251282f6232",
  "kind": "theorem",
  "lexical_name": "TotallyBounded.image",
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
  "slug": "totallybounded-image--f8fcd5d3c08e60fb21f3d0e7",
  "source": {
    "blob": "768044dc607acfa19eb9c8e0182095611b50e530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 566,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8fcd5d3c08e60fb21f3d0e79a49e036a9db699144ae2adbf14aef8c956eabfa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e8fe6b-d1d7-c9cc-ab18-0251282f6232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TotallyBounded.image [UniformSpace β] {f : α → β} {s : Set α} (hs : TotallyBounded s)
    (hf : UniformContinuous f) : TotallyBounded (f '' s) := fun t ht =>
  have : { p : α × α | (f p.1, f p.2) ∈ t } ∈ 𝓤 α := hf ht
  let ⟨c, hfc, hct⟩ := hs _ this
  ⟨f '' c, hfc.image f, by
    simp only [mem_image, iUnion_exists, biUnion_and', iUnion_iUnion_eq_right, image_subset_iff,
      preimage_iUnion, preimage_setOf_eq]
    simp? [subset_def] at hct says
      simp only [mem_setOf_eq, subset_def, mem_iUnion, exists_prop] at hct
    intro x hx
    simpa using hct x hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768044dc607acfa19eb9c8e0182095611b50e530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
