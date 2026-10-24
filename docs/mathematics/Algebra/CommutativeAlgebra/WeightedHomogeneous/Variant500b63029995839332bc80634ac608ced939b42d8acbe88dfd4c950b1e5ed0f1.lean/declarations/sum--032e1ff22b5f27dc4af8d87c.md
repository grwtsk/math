# sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ce9782a9eb2d24d4acf11e24ed4500e80f6ff7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/500b63029995839332bc80634ac608ced939b42d8acbe88dfd4c950b1e5ed0f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12913b45-b2d7-9640-2842-185557b436db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32c3ba36-f77f-7cce-a372-4f58def28070",
  "kind": "theorem",
  "lexical_name": "sum",
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
  "slug": "sum--032e1ff22b5f27dc4af8d87c",
  "source": {
    "blob": "2ce9782a9eb2d24d4acf11e24ed4500e80f6ff7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 244,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant500b63029995839332bc80634ac608ced939b42d8acbe88dfd4c950b1e5ed0f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032e1ff22b5f27dc4af8d87cdbe4f9a4f596cdbf315cf34108898e4f619d6188",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant500b63029995839332bc80634ac608ced939b42d8acbe88dfd4c950b1e5ed0f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32c3ba36-f77f-7cce-a372-4f58def28070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum {ι : Type*} (s : Finset ι) (φ : ι → MvPolynomial σ R) (n : M) {w : σ → M}
    (h : ∀ i ∈ s, IsWeightedHomogeneous w (φ i) n) : IsWeightedHomogeneous w (∑ i ∈ s, φ i) n :=
  (weightedHomogeneousSubmodule R w n).sum_mem h

/-- The product of weighted homogeneous polynomials of weighted degrees `m` and `n` is weighted
  homogeneous of weighted degree `m + n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant500b63029995839332bc80634ac608ced939b42d8acbe88dfd4c950b1e5ed0f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant500b63029995839332bc80634ac608ced939b42d8acbe88dfd4c950b1e5ed0f1.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce9782a9eb2d24d4acf11e24ed4500e80f6ff7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
