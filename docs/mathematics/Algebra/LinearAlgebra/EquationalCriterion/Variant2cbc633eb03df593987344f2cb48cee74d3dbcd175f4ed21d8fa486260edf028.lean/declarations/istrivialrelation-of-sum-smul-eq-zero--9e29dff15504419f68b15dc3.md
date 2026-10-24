# isTrivialRelation_of_sum_smul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19b54be750c72568162d817d87416d94f9298328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be29f3de-62e7-e47f-0f7b-0365e9cbe976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82ef8122-3a0e-7ba1-bf9f-4521996f15ae",
  "kind": "theorem",
  "lexical_name": "isTrivialRelation_of_sum_smul_eq_zero",
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
  "slug": "istrivialrelation-of-sum-smul-eq-zero--9e29dff15504419f68b15dc3",
  "source": {
    "blob": "19b54be750c72568162d817d87416d94f9298328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e29dff15504419f68b15dc383546626406893bd461584bdf3bf1806750eed84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ef8122-3a0e-7ba1-bf9f-4521996f15ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTrivialRelation_of_sum_smul_eq_zero [Flat R M] {ι : Type*} [Fintype ι] {f : ι → R}
    {x : ι → M} (h : ∑ i, f i • x i = 0) : IsTrivialRelation f x :=
  (Fintype.equivFin ι).symm.isTrivialRelation_comp.mp <| iff_forall_isTrivialRelation.mp ‹_› <| by
    simpa only [← (Fintype.equivFin ι).symm.sum_comp] using h

/-- **Equational criterion for flatness**, backward direction.

If every relation $\sum_i f_i x_i = 0$ in $M$ is trivial, then $M$ is flat. -/
@[stacks 00HK]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b54be750c72568162d817d87416d94f9298328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
