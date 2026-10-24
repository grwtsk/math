# instQuotientInnerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4494ab979fc71a2013bad32c70e8b38f4ebdfab0e9736deb693e7194aeeb6e22",
  "kind": "instance",
  "lexical_name": "instQuotientInnerProductSpace",
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
  "slug": "instquotientinnerproductspace--696964c9b8745bf58263b148",
  "source": {
    "blob": "88f8bf7c97c03fd128ddec72a0f44935069d501a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696964c9b8745bf58263b14832d37d1330a7146ea47ae8e3f82ab64b622e4e18",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4494ab979fc71a2013bad32c70e8b38f4ebdfab0e9736deb693e7194aeeb6e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instQuotientInnerProductSpace :
    InnerProductSpace 𝕜 (E ⧸ K) where
  inner x y := ⟪K.quotientEquivOrthogonal x, K.quotientEquivOrthogonal y⟫_𝕜
  add_left x y z := by rw [map_add, inner_add_left]
  smul_left x y r := by rw [map_smul, inner_smul_left]
  conj_inner_symm x y := inner_conj_symm _ _
  norm_sq_eq_re_inner y := by rw [inner_self_eq_norm_sq, LinearIsometryEquiv.norm_map]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantdb4a0bdba269293631e7553359fe2afe7ec3b78971b8f66b1e64c4db4b0edfc0.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88f8bf7c97c03fd128ddec72a0f44935069d501a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
