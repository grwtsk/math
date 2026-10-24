# cubic_monic_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6bec6210ab3f543f469d14133abd5a25a46f48f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52c864bb-2ea0-43a8-5f26-ed817ee75142",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9a924f4-8d05-43b2-db78-afdb557537b8",
  "kind": "theorem",
  "lexical_name": "cubic_monic_eq_zero_iff",
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
  "slug": "cubic-monic-eq-zero-iff--ae986ccb2c9ca09927ccb412",
  "source": {
    "blob": "d6bec6210ab3f543f469d14133abd5a25a46f48f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae986ccb2c9ca09927ccb4127e86c078b8167227b5cdd3031f5dbf795810e0dd",
  "verification": {
    "reference": "docs/verification/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a924f4-8d05-43b2-db78-afdb557537b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_monic_eq_zero_iff (hω : IsPrimitiveRoot ω 3) (hp : p = (3 * c - b ^ 2) / 9)
    (hp_nonzero : p ≠ 0) (hq : q = (9 * b * c - 2 * b ^ 3 - 27 * d) / 54)
    (hr : r ^ 2 = q ^ 2 + p ^ 3) (hs3 : s ^ 3 = q + r) (ht : t * s = p) (x : K) :
    x ^ 3 + b * x ^ 2 + c * x + d = 0 ↔
      x = s - t - b / 3 ∨ x = s * ω - t * ω ^ 2 - b / 3 ∨ x = s * ω ^ 2 - t * ω - b / 3 := by
  let y := x + b / 3
  have hi2 : (2 : K) ≠ 0 := nonzero_of_invertible _
  have hi3 : (3 : K) ≠ 0 := nonzero_of_invertible _
  have h9 : (9 : K) = 3 ^ 2 := by norm_num
  have h54 : (54 : K) = 2 * 3 ^ 3 := by norm_num
  have h₁ : x ^ 3 + b * x ^ 2 + c * x + d = y ^ 3 + 3 * p * y - 2 * q := by
    rw [hp, hq]
    field_simp [h9, h54]; ring
  rw [h₁, cubic_basic_eq_zero_iff hω hp_nonzero hr hs3 ht y]
  simp_rw [eq_sub_iff_add_eq]
#align theorems_100.cubic_monic_eq_zero_iff Theorems100.cubic_monic_eq_zero_iff

/-- **The Solution of Cubic**.
  The roots of a cubic polynomial whose discriminant is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SolutionOfCubic/Variantc30e60ee961d66db0a449f99d1727704801f5fe22035caf6fc1fc9d8f08ea89f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bec6210ab3f543f469d14133abd5a25a46f48f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
