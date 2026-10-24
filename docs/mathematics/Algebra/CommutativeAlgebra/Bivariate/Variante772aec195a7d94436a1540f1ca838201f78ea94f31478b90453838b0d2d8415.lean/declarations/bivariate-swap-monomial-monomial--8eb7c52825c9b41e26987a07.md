# Bivariate.swap_monomial_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f4a224-1332-6911-14e8-5ec750b3d597",
  "kind": "theorem",
  "lexical_name": "Bivariate.swap_monomial_monomial",
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
  "slug": "bivariate-swap-monomial-monomial--8eb7c52825c9b41e26987a07",
  "source": {
    "blob": "b1e3a702cbaa814f3d1d505a705b11147a7a954d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 289,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bivariate/Variante772aec195a7d94436a1540f1ca838201f78ea94f31478b90453838b0d2d8415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb7c52825c9b41e26987a07a562583419e7fde141086a5ab3351f598c537ce7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bivariate/Variante772aec195a7d94436a1540f1ca838201f78ea94f31478b90453838b0d2d8415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f4a224-1332-6911-14e8-5ec750b3d597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Bivariate.swap_monomial_monomial (n m : ℕ) (r : R) :
    swap (monomial n (monomial m r)) = (monomial m (monomial n r)) := by
  simp [← C_mul_X_pow_eq_monomial]; ac_rfl

/-- Evaluating `swap p` at `x`, `y` is the same as evaluating `p` at `y` `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bivariate/Variante772aec195a7d94436a1540f1ca838201f78ea94f31478b90453838b0d2d8415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bivariate/Variante772aec195a7d94436a1540f1ca838201f78ea94f31478b90453838b0d2d8415.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e3a702cbaa814f3d1d505a705b11147a7a954d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
