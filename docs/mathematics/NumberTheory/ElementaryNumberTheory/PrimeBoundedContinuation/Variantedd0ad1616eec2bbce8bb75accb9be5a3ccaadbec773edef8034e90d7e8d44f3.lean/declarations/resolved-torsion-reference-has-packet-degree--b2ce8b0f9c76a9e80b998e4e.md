# resolved_torsion_reference_has_packet_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc8160c2-d21e-8d9f-2cd1-e5093fa63c25",
  "kind": "theorem",
  "lexical_name": "resolved_torsion_reference_has_packet_degree",
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
  "slug": "resolved-torsion-reference-has-packet-degree--b2ce8b0f9c76a9e80b998e4e",
  "source": {
    "blob": "5c678628ba0919f8548a7b1cc7b256f7c012445a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 546,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2ce8b0f9c76a9e80b998e4e225d41d12ae3ec3864d3b20eb4e5959919e29ef0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc8160c2-d21e-8d9f-2cd1-e5093fa63c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolved_torsion_reference_has_packet_degree
    (packet : CertifiedTorsionPacket)
    (reference : CertifiedTorsionFactorReference packet) :
    (resolveTorsionFactor packet reference).degree = packet.degree :=
  packet.allFactorsAtDegree _
    (every_certified_torsion_reference_resolves packet reference)

/-! ## Executable first-five-prime specimen -/

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c678628ba0919f8548a7b1cc7b256f7c012445a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
