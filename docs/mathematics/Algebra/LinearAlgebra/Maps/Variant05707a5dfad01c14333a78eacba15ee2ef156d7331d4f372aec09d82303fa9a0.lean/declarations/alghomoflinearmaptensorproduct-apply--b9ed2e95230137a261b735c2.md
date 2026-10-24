# algHomOfLinearMapTensorProduct_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9fe918d7be97282ae874ea81b1c038bd1f2108b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1c28dff-7bfe-ea42-2645-dd686c83a674",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c1c93e8-7568-bd0e-98a2-6dc73c791e07",
  "kind": "theorem",
  "lexical_name": "algHomOfLinearMapTensorProduct_apply",
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
  "slug": "alghomoflinearmaptensorproduct-apply--b9ed2e95230137a261b735c2",
  "source": {
    "blob": "f9fe918d7be97282ae874ea81b1c038bd1f2108b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9ed2e95230137a261b735c2e899836e1a5d92897eee3dc6a82f0e29a382289d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c1c93e8-7568-bd0e-98a2-6dc73c791e07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algHomOfLinearMapTensorProduct_apply (f h_mul h_one x) :
    (algHomOfLinearMapTensorProduct f h_mul h_one : A ⊗[R] B →ₐ[S] C) x = f x :=
  rfl

/-- Build an algebra equivalence from a linear equivalence out of a tensor product, and evidence
that on pure tensors, it preserves multiplication and the identity.

Note that we state `h_one` using `1 ⊗ₜ[R] 1` instead of `1` so that lemmas about `f` applied to pure
tensors can be directly applied by the caller (without needing `TensorProduct.one_def`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9fe918d7be97282ae874ea81b1c038bd1f2108b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
