# directSumRight_tmul_lof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d71ab63-d2aa-0539-ac61-a81336c6fd84",
  "kind": "theorem",
  "lexical_name": "directSumRight_tmul_lof",
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
  "slug": "directsumright-tmul-lof--556fa2e6cde0e29fbe5c32b5",
  "source": {
    "blob": "690484c2b1f9159b84897de6fd7694db5b4b3a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:556fa2e6cde0e29fbe5c32b53fb7c430597f24dc07b5a5af1d24d771ff2a5f31",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d71ab63-d2aa-0539-ac61-a81336c6fd84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directSumRight_tmul_lof (x : M₁') (i : ι₂) (y : M₂ i) :
    directSumRight R M₁' M₂ (x ⊗ₜ[R] DirectSum.lof R _ _ i y) =
    DirectSum.lof R _ _ i (x ⊗ₜ[R] y) := by
  dsimp only [directSumRight, LinearEquiv.trans_apply, TensorProduct.comm_tmul]
  rw [directSumLeft_tmul_lof]
  exact DFinsupp.mapRange_single (hf := fun _ => rfl)
#align tensor_product.direct_sum_right_tmul_lof TensorProduct.directSumRight_tmul_lof

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690484c2b1f9159b84897de6fd7694db5b4b3a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
