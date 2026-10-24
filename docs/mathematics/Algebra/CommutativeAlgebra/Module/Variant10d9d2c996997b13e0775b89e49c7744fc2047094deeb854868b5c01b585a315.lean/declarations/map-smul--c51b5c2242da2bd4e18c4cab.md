# map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991e9d6c-cf0b-7453-3be2-18cbda1bff5c",
  "kind": "theorem",
  "lexical_name": "map_smul",
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
  "slug": "map-smul--c51b5c2242da2bd4e18c4cab",
  "source": {
    "blob": "1efa2eea9aa47a8cf1806396fe3f2064bec43c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 259,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51b5c2242da2bd4e18c4cabdf97a242b80ea8c55b7e5ea11c9f29ea14bc85af",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991e9d6c-cf0b-7453-3be2-18cbda1bff5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_smul (f : M →ₗ[R] M') (p : R[X]) (q : PolynomialModule R M) :
    map R' f (p • q) = p.map (algebraMap R R') • map R' f q := by
  apply induction_linear q
  · rw [smul_zero, map_zero, smul_zero]
  · intro f g e₁ e₂
    rw [smul_add, map_add, e₁, e₂, map_add, smul_add]
  intro i m
  induction' p using Polynomial.induction_on' with _ _ e₁ e₂
  · rw [add_smul, map_add, e₁, e₂, Polynomial.map_add, add_smul]
  · rw [monomial_smul_single, map_single, Polynomial.map_monomial, map_single, monomial_smul_single,
      f.map_smul, algebraMap_smul]
#align polynomial_module.map_smul PolynomialModule.map_smul

/-- Evaluate a polynomial `p : PolynomialModule R M` at `r : R`. -/
@[simps! (config := .lemmasOnly)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1efa2eea9aa47a8cf1806396fe3f2064bec43c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
