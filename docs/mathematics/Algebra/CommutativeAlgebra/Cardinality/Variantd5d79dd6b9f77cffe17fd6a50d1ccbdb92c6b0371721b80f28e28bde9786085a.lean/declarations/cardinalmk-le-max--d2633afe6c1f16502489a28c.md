# cardinalMk_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a7df44a-9a5d-6d83-842b-0fa3935866a0",
  "kind": "theorem",
  "lexical_name": "cardinalMk_le_max",
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
  "slug": "cardinalmk-le-max--d2633afe6c1f16502489a28c",
  "source": {
    "blob": "b305dbf8197fe7f0dcc064bafd849ae7f5070aa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2633afe6c1f16502489a28cb43621532e8698cf2760270ee7d5a35ec3fb8ac5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7df44a-9a5d-6d83-842b-0fa3935866a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_le_max : #L ≤ max #R ℵ₀ := by
  simpa only [lift_id] using lift_cardinalMk_le_max R L

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_max := cardinalMk_le_max

end Algebra.IsAlgebraic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b305dbf8197fe7f0dcc064bafd849ae7f5070aa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
