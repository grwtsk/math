# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f063dde8f50c812239fe3e470f55fc05e224985a2e2f02f2cfb7fca77b960e33",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dda8d65efeb9ca5a49321845",
  "source": {
    "blob": "35bc77697e87d5f0fda68d1ba0145105c809f73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 231,
    "path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dda8d65efeb9ca5a4932184559a6e2a8deab0f415a06d5bbe2e67fe272c4609a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f063dde8f50c812239fe3e470f55fc05e224985a2e2f02f2cfb7fca77b960e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : LieRing (GroupLieAlgebra I G) where
  add_lie u v w := by
    simp only [GroupLieAlgebra.bracket_def, mulInvariantVectorField_add]
    rw [mlieBracket_add_left]
    · exact mdifferentiableAt_mulInvariantVectorField _
    · exact mdifferentiableAt_mulInvariantVectorField _
  lie_add u v w := by
    simp only [GroupLieAlgebra.bracket_def, mulInvariantVectorField_add]
    rw [mlieBracket_add_right]
    · exact mdifferentiableAt_mulInvariantVectorField _
    · exact mdifferentiableAt_mulInvariantVectorField _
  lie_self v := by simp [GroupLieAlgebra.bracket_def]
  leibniz_lie u v w := by
    simp only [GroupLieAlgebra.bracket_def, mulInvariantVector_mlieBracket]
    apply leibniz_identity_mlieBracket_apply <;>
      exact contMDiff_mulInvariantVectorField _ _

/- `to_additive` fails on the next instance, as it tries to additivize `smul` while it shouldn't.
Therefore, we state and prove by hand the additive version. -/

/-- The tangent space at the identity of an additive Lie group is a Lie algebra, for the bracket
given by the Lie bracket of invariant vector fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant40a655c99cbc5e57c191d9afd83e3064dad8cfbb690f1025d4a8fb4c27921020.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bc77697e87d5f0fda68d1ba0145105c809f73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
