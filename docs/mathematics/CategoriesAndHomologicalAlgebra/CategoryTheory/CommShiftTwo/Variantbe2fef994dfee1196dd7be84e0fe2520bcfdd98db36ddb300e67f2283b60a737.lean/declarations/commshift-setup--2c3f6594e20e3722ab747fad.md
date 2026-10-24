# CommShift₂Setup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:526242042396cf2636b602e03291877d00c12268ad32660b743cc176ea7d4015",
  "kind": "structure",
  "lexical_name": "CommShift₂Setup",
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
  "slug": "commshift-setup--2c3f6594e20e3722ab747fad",
  "source": {
    "blob": "a90ea844557101b1f3b5fe3093f7b8e213bbc5f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c3f6594e20e3722ab747fadb9be0dc76dae59055561f76b3c704d821d57b200",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:526242042396cf2636b602e03291877d00c12268ad32660b743cc176ea7d4015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommShift₂Setup (M : Type*) [AddCommMonoid M] [HasShift D M] extends
    TwistShiftData (PullbackShift D (AddMonoidHom.fst M M + AddMonoidHom.snd _ _)) (M × M) where
  z_zero₁ (m₁ m₂ : M) : z (0, m₁) (0, m₂) = 1 := by aesop
  z_zero₂ (m₁ m₂ : M) : z (m₁, 0) (m₂, 0) = 1 := by aesop
  /-- The invertible elements in the center of `D` that are equal
  to `(z (0, n) (m, 0))⁻¹ * z (m, 0) (0, n)`. -/
  ε (m n : M) : (CatCenter D)ˣ
  hε (m n : M) : ε m n = (z (0, n) (m, 0))⁻¹ * z (m, 0) (0, n) := by aesop

set_option backward.defeqAttrib.useBackward true in
/-- The standard setup for the commutation of bifunctors with shifts by `ℤ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90ea844557101b1f3b5fe3093f7b8e213bbc5f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
