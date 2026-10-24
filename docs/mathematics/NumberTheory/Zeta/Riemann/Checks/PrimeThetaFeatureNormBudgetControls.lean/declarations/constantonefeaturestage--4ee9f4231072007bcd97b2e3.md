# constantOneFeatureStage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bd59b55173011ec1667aa0e00c61cee33edfac52823f7f0f15afc5c03f5e386",
  "kind": "def",
  "lexical_name": "constantOneFeatureStage",
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
  "slug": "constantonefeaturestage--4ee9f4231072007bcd97b2e3",
  "source": {
    "blob": "fbc68eaadbf6072b3584c2c5ea69ef7d420bb078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ee9f4231072007bcd97b2e3574f357d5793d7f6d7b489673751770b7f760d41",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bd59b55173011ec1667aa0e00c61cee33edfac52823f7f0f15afc5c03f5e386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantOneFeatureStage
    (X : ℕ) (targetCoefficient : ℝ → ℝ) :
    PrimeThetaSeparableKernelStage X where
  sourceIdentity := "hostile-constant-one-features"
  normalization := "pointwise-unit-not-l1-normalized"
  invalidationKey := "cardinality-growth-visible"
  factorIndex := {0}
  coefficient := fun v r => if r = 0 then targetCoefficient v else 0
  leftFeature := fun r _ => if r = 0 then 1 else 0
  rightFeature := fun r _ => if r = 0 then 1 else 0
  residual := fun _ => 0
  residual_nonnegative := fun _ => by norm_num

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimeThetaFeatureNormBudgetControls.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc68eaadbf6072b3584c2c5ea69ef7d420bb078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
