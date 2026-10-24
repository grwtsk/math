# algHom_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1f11e52-ad7d-b96d-dae8-22cd07b70322",
  "kind": "lemma",
  "lexical_name": "algHom_deriv",
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
  "slug": "alghom-deriv--f09a9adef7d69713fdd6cf21",
  "source": {
    "blob": "c463713df3d0f602fde34f86d0d9d74e785d51ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 164,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09a9adef7d69713fdd6cf217f1d7de735a54957b69ef125dc44728e90838403",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1f11e52-ad7d-b96d-dae8-22cd07b70322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algHom_deriv (f : R →ₐ[A] R') (hf : Function.Injective f) (x : R) (h : IsSeparable A x) :
    f (x′) = (f x)′ := by
  let p := minpoly A x
  apply mul_left_cancel₀ (a := aeval (f x) (derivative p))
  · rw [Polynomial.aeval_algHom]
    simp only [AlgHom.coe_comp, Function.comp_apply, ne_eq, map_eq_zero_iff f hf]
    apply Separable.aeval_derivative_ne_zero h (minpoly.aeval A x)
  conv => lhs; rw [Polynomial.aeval_algHom]
  simp only [AlgHom.coe_comp, Function.comp_apply, ← map_mul]
  apply add_left_cancel (a := aeval (f x) (mapCoeffs p))
  rw [← deriv_aeval_eq]
  simp only [aeval_algHom, AlgHom.coe_comp, Function.comp_apply, ← map_add, ← deriv_aeval_eq,
    minpoly.aeval, map_zero, p]

omit [Nontrivial R] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15cc9267ca9c208c9ca62dd682915ef80c026ef55dc1c42ade1d0e92bd196209.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c463713df3d0f602fde34f86d0d9d74e785d51ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
