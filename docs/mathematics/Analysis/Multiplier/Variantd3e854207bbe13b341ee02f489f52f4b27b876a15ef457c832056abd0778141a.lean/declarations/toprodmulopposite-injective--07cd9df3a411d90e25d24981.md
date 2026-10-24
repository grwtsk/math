# toProdMulOpposite_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fb3dd425754bcd57af1cbb091bd5192028431ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c334e767-d088-0c5e-ed89-e59b9e75a861",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b1f1188-d5d4-174d-5351-8fea76269d1d",
  "kind": "theorem",
  "lexical_name": "toProdMulOpposite_injective",
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
  "slug": "toprodmulopposite-injective--07cd9df3a411d90e25d24981",
  "source": {
    "blob": "2fb3dd425754bcd57af1cbb091bd5192028431ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 333,
    "path": "GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07cd9df3a411d90e25d24981f73bd894923b192c526f8d1b13ab73b46273bff0",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b1f1188-d5d4-174d-5351-8fea76269d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toProdMulOpposite_injective :
    Function.Injective (toProdMulOpposite : 𝓜(𝕜, A) → (A →L[𝕜] A) × (A →L[𝕜] A)ᵐᵒᵖ) :=
  fun _a _b h =>
    let h' := Prod.ext_iff.mp h
    ext (𝕜 := 𝕜) (A := A) _ _ <| Prod.ext h'.1 <| MulOpposite.op_injective h'.2
#align double_centralizer.to_prod_mul_opposite_injective DoubleCentralizer.toProdMulOpposite_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variantd3e854207bbe13b341ee02f489f52f4b27b876a15ef457c832056abd0778141a.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fb3dd425754bcd57af1cbb091bd5192028431ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
