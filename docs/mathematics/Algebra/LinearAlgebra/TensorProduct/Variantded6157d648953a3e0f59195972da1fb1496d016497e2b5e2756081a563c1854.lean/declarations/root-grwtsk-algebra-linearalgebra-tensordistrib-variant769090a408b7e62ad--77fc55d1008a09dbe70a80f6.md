# _root_.GRWTSK.Algebra.LinearAlgebra.TensorDistrib.Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.LinearMap.IsSymm.tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aec64aa1-32d7-7056-050d-c502fc5ec592",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.TensorDistrib.Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.LinearMap.IsSymm.tmul",
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
  "slug": "root-grwtsk-algebra-linearalgebra-tensordistrib-variant769090a408b7e62ad--77fc55d1008a09dbe70a80f6",
  "source": {
    "blob": "847f13b7ea9cb8ce9db132ce8f2af0ef365b82f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77fc55d1008a09dbe70a80f6341504d97d4ab6f7881c0eccffb8cafa61186229",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aec64aa1-32d7-7056-050d-c502fc5ec592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.TensorDistrib.Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.LinearMap.IsSymm.tmul {B₁ : BilinForm A M₁} {B₂ : BilinForm R M₂}
    (hB₁ : B₁.IsSymm) (hB₂ : B₂.IsSymm) : (B₁.tmul B₂).IsSymm := by
  rw [LinearMap.isSymm_iff_eq_flip]
  ext x₁ x₂ y₁ y₂
  exact congr_arg₂ (HSMul.hSMul) (hB₂ x₂ y₂) (hB₁ x₁ y₁)

variable (A) in
/-- The base change of a bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `847f13b7ea9cb8ce9db132ce8f2af0ef365b82f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
