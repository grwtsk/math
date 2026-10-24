# Sphere.secondInter_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1e7d7c997e835176f57fab2a54aaa83fe19c53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b765ba0-e62d-df4d-956e-d1fd2de67c94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96fbcc96-4fee-0ae0-bb7d-3a2eb9e8f170",
  "kind": "theorem",
  "lexical_name": "Sphere.secondInter_smul",
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
  "slug": "sphere-secondinter-smul--0dc4085a148f15fc0b6953e3",
  "source": {
    "blob": "8c1e7d7c997e835176f57fab2a54aaa83fe19c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dc4085a148f15fc0b6953e3945c10f9776d05f185954905c7b21c002dcfa511",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96fbcc96-4fee-0ae0-bb7d-3a2eb9e8f170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sphere.secondInter_smul (s : Sphere P) (p : P) (v : V) {r : ℝ} (hr : r ≠ 0) :
    s.secondInter p (r • v) = s.secondInter p v := by
  simp_rw [Sphere.secondInter, real_inner_smul_left, inner_smul_right, smul_smul,
    div_mul_eq_div_div]
  rw [mul_comm, ← mul_div_assoc, ← mul_div_assoc, mul_div_cancel_left₀ _ hr, mul_comm, mul_assoc,
    mul_div_cancel_left₀ _ hr, mul_comm]

/-- `secondInter` is unchanged by negating the vector. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1e7d7c997e835176f57fab2a54aaa83fe19c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
