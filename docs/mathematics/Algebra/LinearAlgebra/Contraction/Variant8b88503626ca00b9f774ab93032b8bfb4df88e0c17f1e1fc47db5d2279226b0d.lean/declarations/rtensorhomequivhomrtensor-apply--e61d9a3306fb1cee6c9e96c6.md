# rTensorHomEquivHomRTensor_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be0122d0-0723-7f2d-1037-9f8db256299e",
  "kind": "theorem",
  "lexical_name": "rTensorHomEquivHomRTensor_apply",
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
  "slug": "rtensorhomequivhomrtensor-apply--e61d9a3306fb1cee6c9e96c6",
  "source": {
    "blob": "bc211468a78270a1b2ffb9273270fd6d8692643a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e61d9a3306fb1cee6c9e96c6d983c44de223eee5e23095a20545b366b34520c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0122d0-0723-7f2d-1037-9f8db256299e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rTensorHomEquivHomRTensor_apply (x : (M →ₗ[R] P) ⊗[R] Q) :
    rTensorHomEquivHomRTensor R M P Q x = rTensorHomToHomRTensor R M P Q x := by
  rw [← LinearEquiv.coe_toLinearMap, rTensorHomEquivHomRTensor_toLinearMap]
#align rtensor_hom_equiv_hom_rtensor_apply rTensorHomEquivHomRTensor_apply

variable (R M N P Q)

/-- When `M` and `N` are free `R` modules, the map `homTensorHomMap` is an equivalence. Note that
`homTensorHomEquiv` is not defined directly in terms of `homTensorHomMap`, but the equivalence
between the two is given by `homTensorHomEquiv_toLinearMap` and `homTensorHomEquiv_apply`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc211468a78270a1b2ffb9273270fd6d8692643a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
