# symm_image_eq_source_inter_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d0002de-2949-bdac-0241-d44dfd815ea3",
  "kind": "theorem",
  "lexical_name": "symm_image_eq_source_inter_preimage",
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
  "slug": "symm-image-eq-source-inter-preimage--90549d60cf4687ec896f74d2",
  "source": {
    "blob": "65d550b3aab803ff8f76d8f700f3f5ea09985b18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90549d60cf4687ec896f74d2c7b7c487b959572cdb948dbf5e9b2d47d865b8bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d0002de-2949-bdac-0241-d44dfd815ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_image_eq_source_inter_preimage {s : Set Y} (h : s ⊆ e.target) :
    e.symm '' s = e.source ∩ e ⁻¹' s :=
  e.symm.image_eq_target_inter_inv_preimage h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d550b3aab803ff8f76d8f700f3f5ea09985b18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
