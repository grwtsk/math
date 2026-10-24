# map_unop_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:623e18ba-72ac-0b39-f06b-26645dfa5df9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a89a1194-2193-26e2-d2cf-ec2310c87183",
  "kind": "theorem",
  "lexical_name": "map_unop_pow",
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
  "slug": "map-unop-pow--f90cac5760c38f097e08f00a",
  "source": {
    "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 544,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90cac5760c38f097e08f00a234931f11ad10e853a895bdb007f056e8d9fb1e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a89a1194-2193-26e2-d2cf-ec2310c87183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_unop_pow (n : ℕ) (M : Submodule R Aᵐᵒᵖ) :
    map (↑(opLinearEquiv R : A ≃ₗ[R] Aᵐᵒᵖ).symm : Aᵐᵒᵖ →ₗ[R] A) (M ^ n) =
      map (↑(opLinearEquiv R : A ≃ₗ[R] Aᵐᵒᵖ).symm : Aᵐᵒᵖ →ₗ[R] A) M ^ n :=
  by rw [← comap_equiv_eq_map_symm, ← comap_equiv_eq_map_symm, comap_op_pow]
#align submodule.map_unop_pow Submodule.map_unop_pow

/-- `span` is a semiring homomorphism (recall multiplication is pointwise multiplication of subsets
on either side). -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf200b85c96312a8a3f7d77dee0e54f4eb248bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
