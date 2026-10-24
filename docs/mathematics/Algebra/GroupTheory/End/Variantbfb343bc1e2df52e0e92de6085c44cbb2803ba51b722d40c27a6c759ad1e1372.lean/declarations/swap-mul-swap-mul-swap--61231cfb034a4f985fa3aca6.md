# swap_mul_swap_mul_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9f8d6d48e5e7a272bff5becf70fcb32136083e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29c0b4cd-bf21-a5ea-6344-c893e92173eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ea98cc6-4dd1-da27-0044-9797374e8f38",
  "kind": "theorem",
  "lexical_name": "swap_mul_swap_mul_swap",
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
  "slug": "swap-mul-swap-mul-swap--61231cfb034a4f985fa3aca6",
  "source": {
    "blob": "b9f8d6d48e5e7a272bff5becf70fcb32136083e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 535,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61231cfb034a4f985fa3aca69cb3252a9e85724d077f43b02c4048f46ee0c6f4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea98cc6-4dd1-da27-0044-9797374e8f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swap_mul_swap_mul_swap {x y z : α} (hxy : x ≠ y) (hxz : x ≠ z) :
    swap y z * swap x y * swap y z = swap z x := by
  nth_rewrite 3 [← swap_inv]
  rw [← swap_apply_apply, swap_apply_left, swap_apply_of_ne_of_ne hxy hxz, swap_comm]

end Swap

section AddGroup
variable [AddGroup α] (a b : α)

-- we can't use `to_additive`, because it tries to translate `1` into `0`

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f8d6d48e5e7a272bff5becf70fcb32136083e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
