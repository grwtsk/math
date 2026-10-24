# IsLeviCivitaConnection.apply_eq_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:381e16f2-08b9-4f34-adc7-2e29655d61ef",
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
  "slug": "islevicivitaconnection-apply-eq-extend--b8d98abebfb52aabb4c9a340",
  "source": {
    "blob": "2147fcffab235634e27ce5ba5ca8cbb868d030c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 247,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d98abebfb52aabb4c9a3402b41174becb514bf8d8323d264ddad3f09edc767",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:381e16f2-08b9-4f34-adc7-2e29655d61ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–262.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant06b21ad2fde23a1af7376d497d0064c347672fece55b59f687c97f1d87449b52.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2147fcffab235634e27ce5ba5ca8cbb868d030c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
