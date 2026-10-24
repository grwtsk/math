# sum_weightedHomogeneousComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7058f553d4e5cbb412c381a098548b98c9524fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c71bf419-7c4d-4c84-5009-9efd55e01e61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8cc28e9-c6bd-ee83-7b15-fa86db0edcf6",
  "kind": "theorem",
  "lexical_name": "sum_weightedHomogeneousComponent",
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
  "slug": "sum-weightedhomogeneouscomponent--a3aa193706a50c6987a3525a",
  "source": {
    "blob": "c7058f553d4e5cbb412c381a098548b98c9524fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 403,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3aa193706a50c6987a3525af0c5e95dd05f1fb5569fe3aee728efb98ae5f584",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8cc28e9-c6bd-ee83-7b15-fa86db0edcf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_weightedHomogeneousComponent :
    (finsum fun m => weightedHomogeneousComponent w m φ) = φ := by
  classical
  rw [finsum_eq_sum _ (weightedHomogeneousComponent_finsupp φ)]
  ext1 d
  simp only [coeff_sum, coeff_weightedHomogeneousComponent]
  rw [Finset.sum_eq_single (weightedDegree' w d)]
  · rw [if_pos rfl]
  · intro m _ hm'
    rw [if_neg hm'.symm]
  · intro hm
    rw [if_pos rfl]
    simp only [Finite.mem_toFinset, mem_support, Ne.def, Classical.not_not] at hm
    have := coeff_weightedHomogeneousComponent (w := w) (weightedDegree' w d) φ d
    rw [hm, if_pos rfl, coeff_zero] at this
    exact this.symm
#align mv_polynomial.sum_weighted_homogeneous_component MvPolynomial.sum_weightedHomogeneousComponent

variable {w}

/-- The weighted homogeneous components of a weighted homogeneous polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant183b1797c8ded2fd0049563e99f62ef2d7130532ff794fabfbd4bd6395535237.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7058f553d4e5cbb412c381a098548b98c9524fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
