# hasBasis_nhds_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df517c25fb971cc4aa696a2effd764201a721ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb7c597e-f824-27bb-0903-876d510eff12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a11f5efa-4c15-5fe4-a6da-7fe80434c915",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_infty",
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
  "slug": "hasbasis-nhds-infty--5ead7e92a7393d9a4193ae92",
  "source": {
    "blob": "8df517c25fb971cc4aa696a2effd764201a721ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ead7e92a7393d9a4193ae92ab7c43b02481a0d537499a39b9ad8e49b84455ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11f5efa-4c15-5fe4-a6da-7fe80434c915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds_infty :
    (𝓝 (∞ : OnePoint X)).HasBasis (fun s : Set X => IsClosed s ∧ IsCompact s) fun s =>
      (↑) '' sᶜ ∪ {∞} := by
  rw [nhds_infty_eq]
  exact (hasBasis_coclosedCompact.map _).sup_pure _
#align alexandroff.has_basis_nhds_infty OnePoint.hasBasis_nhds_infty

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variant55b737f432bbff1f47ef09021b267a94d1ba8c3e4a0d8fb99f7155923567367a.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df517c25fb971cc4aa696a2effd764201a721ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
