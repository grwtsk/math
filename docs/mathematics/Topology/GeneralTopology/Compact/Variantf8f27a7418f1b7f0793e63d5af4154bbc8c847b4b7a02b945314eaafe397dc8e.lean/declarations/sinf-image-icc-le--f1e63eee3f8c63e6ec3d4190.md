# sInf_image_Icc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:902662ec-239f-5fab-8336-92745c50c84d",
  "kind": "theorem",
  "lexical_name": "sInf_image_Icc_le",
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
  "slug": "sinf-image-icc-le--f1e63eee3f8c63e6ec3d4190",
  "source": {
    "blob": "40e86aa14c6ad98f29c908a95a2d3c8cf87b1250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 542,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e63eee3f8c63e6ec3d4190c788c9e721f6ddf438f267e98b4b76e0585fb684",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902662ec-239f-5fab-8336-92745c50c84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_image_Icc_le (h : ContinuousOn f <| Icc a b) (hc : c ∈ Icc a b) :
    sInf (f '' Icc a b) ≤ f c := by
  have := mem_image_of_mem f hc
  rw [h.image_Icc (hc.1.trans hc.2)] at this
  exact this.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e86aa14c6ad98f29c908a95a2d3c8cf87b1250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
