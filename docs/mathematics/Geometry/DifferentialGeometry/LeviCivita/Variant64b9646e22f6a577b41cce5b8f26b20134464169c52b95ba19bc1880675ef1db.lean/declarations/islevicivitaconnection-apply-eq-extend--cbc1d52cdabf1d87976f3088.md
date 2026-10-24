# IsLeviCivitaConnection.apply_eq_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c9ae9cf-fc7e-5697-b229-b00985685cc6",
  "kind": "lemma",
  "lexical_name": "IsLeviCivitaConnection.apply_eq_extend",
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
  "slug": "islevicivitaconnection-apply-eq-extend--cbc1d52cdabf1d87976f3088",
  "source": {
    "blob": "a1dc2d08df84a8a141740579cca3139736f0719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 239,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc1d52cdabf1d87976f3088bce976d838f9b60339cf014f812ef0abac79b516",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c9ae9cf-fc7e-5697-b229-b00985685cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma IsLeviCivitaConnection.apply_eq_extend
    (h : cov.IsLeviCivitaConnection) {x : M}
    (X₀ : TangentSpace I x) (hY : MDiffAt (T% Y) x) (hZ : MDiffAt (T% Z) x) :
    inner ℝ (cov Y x X₀) (Z x) =
      (d% ⟪Y, Z⟫ x X₀ + d% ⟪Z, extend E X₀⟫ x (Y x) - d% ⟪extend E X₀, Y⟫ x (Z x)
      - ⟪Y, VectorField.mlieBracket I (extend E X₀) Z⟫ x
      - ⟪Z, VectorField.mlieBracket I Y (extend E X₀)⟫ x
      + inner ℝ X₀ (VectorField.mlieBracket I Z Y x)) / 2 := by
  nth_rw 1 [← FiberBundle.extend_apply_self E X₀]
  simp_rw [h.apply_eq _ (mdifferentiableAt_extend _ _ X₀) hY hZ]
  simp

/-- The Levi-Civita connection on `(M, g)` is uniquely determined on differentiable vector fields.

Note that the differentiability hypothesis on `Y` is required, since `CovariantDerivative` objects
are unconstrained in their behaviour on non-differentiable vector fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dc2d08df84a8a141740579cca3139736f0719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
