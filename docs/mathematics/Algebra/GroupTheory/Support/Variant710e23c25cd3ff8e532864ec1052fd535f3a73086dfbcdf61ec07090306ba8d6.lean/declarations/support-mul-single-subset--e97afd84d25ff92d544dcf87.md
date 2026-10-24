# support_mul_single_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1d7a6530176ed65da276165ad643c613e260cd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/710e23c25cd3ff8e532864ec1052fd535f3a73086dfbcdf61ec07090306ba8d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7b5c1c0-f634-e540-23ea-e24925aca24a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dac09762-16ff-5952-ff37-a09c43344ab6",
  "kind": "theorem",
  "lexical_name": "support_mul_single_subset",
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
  "slug": "support-mul-single-subset--e97afd84d25ff92d544dcf87",
  "source": {
    "blob": "a1d7a6530176ed65da276165ad643c613e260cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant710e23c25cd3ff8e532864ec1052fd535f3a73086dfbcdf61ec07090306ba8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e97afd84d25ff92d544dcf87b3ae4e25e5ba0235d619568ea5135ad7f68b3fad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant710e23c25cd3ff8e532864ec1052fd535f3a73086dfbcdf61ec07090306ba8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dac09762-16ff-5952-ff37-a09c43344ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_mul_single_subset [DecidableEq G] [Mul G] (f : MonoidAlgebra k G) (r : k) (a : G) :
    (f * single a r).support ⊆ Finset.image (· * a) f.support := by
  intro x hx
  contrapose hx
  have : ∀ y, y * a = x → f y = 0 := by
    simpa only [not_and', mem_image, mem_support_iff, exists_prop, not_exists,
      Classical.not_not] using hx
  simp only [mem_support_iff, mul_apply, sum_single_index, zero_mul, ite_self, sum_zero,
    Classical.not_not]
  exact
    Finset.sum_eq_zero
      (by
        simp (config := { contextual := true }) only [this, sum_single_index, ite_eq_right_iff,
          eq_self_iff_true, imp_true_iff, zero_mul])
#align monoid_algebra.support_mul_single_subset MonoidAlgebra.support_mul_single_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant710e23c25cd3ff8e532864ec1052fd535f3a73086dfbcdf61ec07090306ba8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant710e23c25cd3ff8e532864ec1052fd535f3a73086dfbcdf61ec07090306ba8d6.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d7a6530176ed65da276165ad643c613e260cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
