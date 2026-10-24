# isScalarTower'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:734b8635d4605f9f58b683adb9fe32a870893d3957f55547f895a71dc33452dd",
  "kind": "instance",
  "lexical_name": "isScalarTower'",
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
  "slug": "isscalartower--17e2704fe3a231d85d5008ed",
  "source": {
    "blob": "1efa2eea9aa47a8cf1806396fe3f2064bec43c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17e2704fe3a231d85d5008ed7aaf7145ac9fdfcc7e6376eadc77df31918afca2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:734b8635d4605f9f58b683adb9fe32a870893d3957f55547f895a71dc33452dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower' (M : Type u) [AddCommGroup M] [Module R M] [Module S M]
    [IsScalarTower S R M] : IsScalarTower S R[X] (PolynomialModule R M) := by
  haveI : IsScalarTower R R[X] (PolynomialModule R M) := modulePolynomialOfEndo.isScalarTower _
  constructor
  intro x y z
  rw [← @IsScalarTower.algebraMap_smul S R, ← @IsScalarTower.algebraMap_smul S R, smul_assoc]
#align polynomial_module.is_scalar_tower' PolynomialModule.isScalarTower'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Module/Variant10d9d2c996997b13e0775b89e49c7744fc2047094deeb854868b5c01b585a315.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1efa2eea9aa47a8cf1806396fe3f2064bec43c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
