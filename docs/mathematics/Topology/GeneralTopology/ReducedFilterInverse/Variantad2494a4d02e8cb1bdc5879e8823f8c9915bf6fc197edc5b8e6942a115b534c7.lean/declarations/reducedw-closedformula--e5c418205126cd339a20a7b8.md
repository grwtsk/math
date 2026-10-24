# reducedW_closedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b98493e39ebedc2d57bfafdeb50728d56798287",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9894344e-4b0a-b5fe-e48b-3d106835815a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:deec61ce-da33-82a1-95d8-dece431cec9c",
  "kind": "theorem",
  "lexical_name": "reducedW_closedFormula",
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
  "slug": "reducedw-closedformula--e5c418205126cd339a20a7b8",
  "source": {
    "blob": "8b98493e39ebedc2d57bfafdeb50728d56798287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5c418205126cd339a20a7b8c445a0ccbf399e58488561eda6659080f2a83ecb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverse/Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deec61ce-da33-82a1-95d8-dece431cec9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_closedFormula (w : ℂ) (hw : w ≠ 0) :
    reducedW w = 384 * (w + 1/2) *
      (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) /
      ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by
  rw [reducedW, bumpMoment_closedFormula w hw]
  have he : Complex.exp (-w) * Complex.exp w = 1 := by
    rw [← Complex.exp_add]
    simp
  have he2 : Complex.exp (-w) * Complex.exp (-w) = Complex.exp (-2*w) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  calc
    _ = 384 * (w + 1/2) *
        ((Complex.exp (-w) * Complex.exp w) * transformPolynomial w -
          (Complex.exp (-w) * Complex.exp (-w)) * transformPolynomial (-w)) /
        ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by ring
    _ = _ := by rw [he, he2, one_mul]

/-- The remaining linear source factor grows at least as fast as the parameter in the right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverse/Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b98493e39ebedc2d57bfafdeb50728d56798287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
