# mem_span_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b20ffa59d7f787eca2745ce294eb896b75dadd67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e789f7ff867bde23824637d144dca42eb93efb4431abb64240944fe9cbb157b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4faa1e31-6538-d395-2dd2-62070a86604e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:854e00b6-75ff-bfef-816e-278732b24b4a",
  "kind": "theorem",
  "lexical_name": "mem_span_support",
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
  "slug": "mem-span-support--49736d7ebd9a5d3533b0d230",
  "source": {
    "blob": "b20ffa59d7f787eca2745ce294eb896b75dadd67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/Algebra/Support/Variant4e789f7ff867bde23824637d144dca42eb93efb4431abb64240944fe9cbb157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49736d7ebd9a5d3533b0d230ec3a12640fd912830986b3881c67a1a7bac5df90",
  "verification": {
    "reference": "docs/verification/Algebra/Support/Variant4e789f7ff867bde23824637d144dca42eb93efb4431abb64240944fe9cbb157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:854e00b6-75ff-bfef-816e-278732b24b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_support (f : SkewMonoidAlgebra k G) :
    f ∈ Submodule.span k (of k G '' (f.support : Set G)) := by
  rw [Fintype.mem_span_image_iff_exists_fun k]
  use Finset.restrict f.support f.coeff
  simp only [Finset.restrict_def, smul_of]
  conv_rhs => rw [← sum_coeff_single f, Finsupp.sum, ← Finset.sum_finset_coe]
  rfl

end Span

end Semiring

end SkewMonoidAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Support/Variant4e789f7ff867bde23824637d144dca42eb93efb4431abb64240944fe9cbb157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Support/Variant4e789f7ff867bde23824637d144dca42eb93efb4431abb64240944fe9cbb157b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20ffa59d7f787eca2745ce294eb896b75dadd67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
