# tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58ff28d971aa0b5bdfcc671b817d8140181900b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 694,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5300d858-21f4-5813-843e-6f4630b90907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b46fde2-f9bf-b55d-0870-6f8881469acb",
  "kind": "theorem",
  "lexical_name": "tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi",
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
  "slug": "tan-eq-inv-of-two-zsmul-add-two-zsmul-eq-pi--d61359d74ec92b63064ecd84",
  "source": {
    "blob": "58ff28d971aa0b5bdfcc671b817d8140181900b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 694,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d61359d74ec92b63064ecd841a98ccef1635ad6d430d8b352f74f4c1dd96e14f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b46fde2-f9bf-b55d-0870-6f8881469acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi {θ ψ : Angle}
    (h : (2 : ℤ) • θ + (2 : ℤ) • ψ = π) : tan ψ = (tan θ)⁻¹ := by
  simp_rw [two_zsmul, ← two_nsmul] at h
  exact tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi h

/-- The sign of a `Real.Angle` is `0` if the angle is `0` or `π`, `1` if the angle is strictly
between `0` and `π` and `-1` is the angle is strictly between `-π` and `0`. It is defined as the
sign of the sine of the angle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantbc95425013abd79c48bd3283151df2b1ce1900978429cd99c7c69f2f5a18d845.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ff28d971aa0b5bdfcc671b817d8140181900b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
