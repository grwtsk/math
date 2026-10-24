# TotalComplexShapeSymmetry.symmetry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ff68ac64b5527be9039f8ced5ebe64eb74f34fc613ef0bc6e0ba09e29a43a1a",
  "kind": "def",
  "lexical_name": "TotalComplexShapeSymmetry.symmetry",
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
  "slug": "totalcomplexshapesymmetry-symmetry--4b683dfe254201c64205296c",
  "source": {
    "blob": "66ec22c612dfad9273a19a887aa51d7092853836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 365,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b683dfe254201c64205296cd727ecd739861ed59e36686bf601857b2f888742",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ff68ac64b5527be9039f8ced5ebe64eb74f34fc613ef0bc6e0ba09e29a43a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TotalComplexShapeSymmetry.symmetry [TotalComplexShape c₁ c₂ c₁₂]
    [TotalComplexShape c₂ c₁ c₁₂] [TotalComplexShapeSymmetry c₁ c₂ c₁₂] :
    TotalComplexShapeSymmetry c₂ c₁ c₁₂ where
  symm i₂ i₁ := (ComplexShape.π_symm c₁ c₂ c₁₂ i₁ i₂).symm
  σ i₂ i₁ := ComplexShape.σ c₁ c₂ c₁₂ i₁ i₂
  σ_ε₁ {i₂ i₂'} h₂ i₁ := by
    apply mul_right_cancel (b := ComplexShape.ε₂ c₁ c₂ c₁₂ (i₁, i₂))
    rw [mul_assoc]
    nth_rw 2 [mul_comm]
    rw [← mul_assoc, ComplexShape.σ_ε₂ c₁ c₁₂ i₁ h₂, mul_comm, ← mul_assoc,
      Int.units_mul_self, one_mul, mul_comm, ← mul_assoc, Int.units_mul_self, one_mul]
  σ_ε₂ i₂ i₁ i₁' h₁ := by
    apply mul_right_cancel (b := ComplexShape.ε₁ c₁ c₂ c₁₂ (i₁, i₂))
    rw [mul_assoc]
    nth_rw 2 [mul_comm]
    rw [← mul_assoc, ComplexShape.σ_ε₁ c₂ c₁₂ h₁ i₂, mul_comm, ← mul_assoc,
      Int.units_mul_self, one_mul, mul_comm, ← mul_assoc, Int.units_mul_self, one_mul]

/-- This typeclass expresses that the signs given by `[TotalComplexShapeSymmetry c₁ c₂ c₁₂]`
and by `[TotalComplexShapeSymmetry c₂ c₁ c₁₂]` are compatible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ec22c612dfad9273a19a887aa51d7092853836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
