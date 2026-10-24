# oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63622395-da9a-962c-8288-958ac56b7e1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de8b4a7c-171f-12e8-4db1-cd7ab19499c8",
  "kind": "theorem",
  "lexical_name": "oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real",
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
  "slug": "oangle-eq-two-zsmul-oangle-sub-of-norm-eq-real--4ff1e57fdf2209fc7697c14b",
  "source": {
    "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 50,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff1e57fdf2209fc7697c14b1d474667bbefef907e566dced6000b053831cc87",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de8b4a7c-171f-12e8-4db1-cd7ab19499c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real {x y z : V} (hxyne : x ≠ y) (hxzne : x ≠ z)
    {r : ℝ} (hx : ‖x‖ = r) (hy : ‖y‖ = r) (hz : ‖z‖ = r) :
    o.oangle y z = (2 : ℤ) • o.oangle (y - x) (z - x) :=
  o.oangle_eq_two_zsmul_oangle_sub_of_norm_eq hxyne hxzne (hy.symm ▸ hx) (hz.symm ▸ hx)

/-- Oriented vector angle version of "angles in same segment are equal" and "opposite angles of
a cyclic quadrilateral add to π", for oriented angles mod π (for which those are the same
result), represented here as equality of twice the angles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dd52eb843d47b38007a135f73dc570641932d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
