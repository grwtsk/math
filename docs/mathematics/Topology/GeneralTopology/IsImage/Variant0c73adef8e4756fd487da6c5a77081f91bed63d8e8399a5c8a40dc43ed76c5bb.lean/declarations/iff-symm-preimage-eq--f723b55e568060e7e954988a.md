# iff_symm_preimage_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82bf3bb1-0d71-63e5-11d2-f109fde227f9",
  "kind": "theorem",
  "lexical_name": "iff_symm_preimage_eq",
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
  "slug": "iff-symm-preimage-eq--f723b55e568060e7e954988a",
  "source": {
    "blob": "9d2319cc374ce94c6480c63007b04e4c97fd6e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/IsImage/Variant0c73adef8e4756fd487da6c5a77081f91bed63d8e8399a5c8a40dc43ed76c5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f723b55e568060e7e954988a4f55d97c145ae6c0693aed4f19144680c7326695",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsImage/Variant0c73adef8e4756fd487da6c5a77081f91bed63d8e8399a5c8a40dc43ed76c5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82bf3bb1-0d71-63e5-11d2-f109fde227f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_symm_preimage_eq : e.IsImage s t ↔ e.target ∩ e.symm ⁻¹' s = e.target ∩ t :=
  symm_iff.symm.trans iff_preimage_eq

alias ⟨symm_preimage_eq, of_symm_preimage_eq⟩ := iff_symm_preimage_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsImage/Variant0c73adef8e4756fd487da6c5a77081f91bed63d8e8399a5c8a40dc43ed76c5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsImage/Variant0c73adef8e4756fd487da6c5a77081f91bed63d8e8399a5c8a40dc43ed76c5bb.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2319cc374ce94c6480c63007b04e4c97fd6e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
