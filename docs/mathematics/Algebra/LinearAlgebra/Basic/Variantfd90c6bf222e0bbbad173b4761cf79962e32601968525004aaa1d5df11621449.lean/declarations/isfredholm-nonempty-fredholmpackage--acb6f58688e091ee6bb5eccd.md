# IsFredholm.nonempty_fredholmPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2963323-227e-4af5-eb7d-16aeaea0329f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce9108f6-0f7b-d4dd-d34d-451f4a1282ee",
  "kind": "theorem",
  "lexical_name": "IsFredholm.nonempty_fredholmPackage",
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
  "slug": "isfredholm-nonempty-fredholmpackage--acb6f58688e091ee6bb5eccd",
  "source": {
    "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 322,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acb6f58688e091ee6bb5eccdb20652ae105366b485bcffa91737b9cc8160ff4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce9108f6-0f7b-d4dd-d34d-451f4a1282ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFredholm.nonempty_fredholmPackage {u : E →L[𝕜] F}
    (u_fred : IsFredholm u) : Nonempty (FredholmPackage u) := by
  obtain ⟨codom₀, h_codom⟩ := u_fred.closedComplemented_range.exists_isTopCompl
  obtain ⟨dom₁, h_dom⟩ := u_fred.closedComplemented_ker.exists_isTopCompl
  exact ⟨u_fred.fredholmPackage h_dom h_codom⟩

variable [T2Space E] [T2Space F]

/--
Let `E`, `F` be two Hausdorff topological vector spaces over a complete `NontriviallyNormedField`
denoted `𝕜`, and `u : E →L[𝕜] F` a continuous linear map. The following conditions are equivalent:

1. `u` is a **Fredholm operator**, in the sense of `ContinuousLinearMap.IsFredholm`.
2. `u` admits a continuous **quasi-inverse**, in the sense of `LinearMap.IsQuasiInverse`.
3. There are closed finite-codimension subspaces `E₁` and `F₁` of `E` and `F` between which `u`
  induces an isomorphism.
4. `u` admits a `FredholmPackage`.

In practice, condition `4` is the "strongest", so you should probably not use it to *prove* that an
operator is Fredholm.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
