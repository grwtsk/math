# oangle_left_eq_arccos_of_oangle_eq_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ca1f21c9b8128a1645700549e1243f412dc15da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9ce0e6d-6d62-b9ba-63a3-bc392bd94ae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91f63358-cdba-042a-f4dc-e9122923edba",
  "kind": "theorem",
  "lexical_name": "oangle_left_eq_arccos_of_oangle_eq_pi_div_two",
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
  "slug": "oangle-left-eq-arccos-of-oangle-eq-pi-div-two--2eba97ce13081af0a92bb1c0",
  "source": {
    "blob": "8ca1f21c9b8128a1645700549e1243f412dc15da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 535,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eba97ce13081af0a92bb1c0a741070ad5b9a761d292b187c1257d216342e8fc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91f63358-cdba-042a-f4dc-e9122923edba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_left_eq_arccos_of_oangle_eq_pi_div_two {p₁ p₂ p₃ : P} (h : ∡ p₁ p₂ p₃ = ↑(π / 2)) :
    ∡ p₃ p₁ p₂ = Real.arccos (dist p₁ p₂ / dist p₁ p₃) := by
  have hs : (∡ p₃ p₁ p₂).sign = 1 := by rw [← oangle_rotate_sign, h, Real.Angle.sign_coe_pi_div_two]
  rw [oangle_eq_angle_of_sign_eq_one hs, angle_comm,
    angle_eq_arccos_of_angle_eq_pi_div_two (angle_rev_eq_pi_div_two_of_oangle_eq_pi_div_two h),
    dist_comm p₁ p₃]

/-- An angle in a right-angled triangle expressed using `arcsin`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc206bdd73cadc0ddb5a2405dcfca544b1d581b1046cf86e8120840b80b0a3429.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca1f21c9b8128a1645700549e1243f412dc15da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
