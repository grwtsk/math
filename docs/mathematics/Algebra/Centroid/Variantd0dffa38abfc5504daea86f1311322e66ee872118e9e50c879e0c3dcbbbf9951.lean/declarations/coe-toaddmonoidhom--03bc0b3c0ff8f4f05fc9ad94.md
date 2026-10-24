# coe_toAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f3fa4a1-c508-11a3-88b5-e3b144cad494",
  "kind": "theorem",
  "lexical_name": "coe_toAddMonoidHom",
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
  "slug": "coe-toaddmonoidhom--03bc0b3c0ff8f4f05fc9ad94",
  "source": {
    "blob": "7ad17068d19af5520603dd1a3d5d77974f1a65e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 127,
    "path": "GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03bc0b3c0ff8f4f05fc9ad94e5bdefc166e59e6f9f8a788ef378982fe9a86461",
  "verification": {
    "reference": "docs/verification/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3fa4a1-c508-11a3-88b5-e3b144cad494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_toAddMonoidHom (f : CentroidHom α) : ⇑(f : α →+ α) = f :=
  rfl
#align centroid_hom.coe_to_add_monoid_hom CentroidHom.coe_toAddMonoidHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Centroid/Variantd0dffa38abfc5504daea86f1311322e66ee872118e9e50c879e0c3dcbbbf9951.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad17068d19af5520603dd1a3d5d77974f1a65e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
