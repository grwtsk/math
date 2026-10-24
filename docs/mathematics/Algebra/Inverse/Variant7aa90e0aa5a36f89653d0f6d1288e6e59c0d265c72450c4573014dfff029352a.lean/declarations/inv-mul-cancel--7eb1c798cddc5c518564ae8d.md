# inv_mul_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23d90508-9e50-0cda-a2ab-589cdd50e9ad",
  "kind": "theorem",
  "lexical_name": "inv_mul_cancel",
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
  "slug": "inv-mul-cancel--7eb1c798cddc5c518564ae8d",
  "source": {
    "blob": "6807c2c077b7bf31bc182ff59c692b6d5508d154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 178,
    "path": "GRWTSK/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb1c798cddc5c518564ae8d1a28493ead6062accfd07359332a518c43bd6f83",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d90508-9e50-0cda-a2ab-589cdd50e9ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem inv_mul_cancel (φ : k⟦X⟧) (h : constantCoeff k φ ≠ 0) : φ⁻¹ * φ = 1 :=
  MvPowerSeries.inv_mul_cancel φ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant7aa90e0aa5a36f89653d0f6d1288e6e59c0d265c72450c4573014dfff029352a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6807c2c077b7bf31bc182ff59c692b6d5508d154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
