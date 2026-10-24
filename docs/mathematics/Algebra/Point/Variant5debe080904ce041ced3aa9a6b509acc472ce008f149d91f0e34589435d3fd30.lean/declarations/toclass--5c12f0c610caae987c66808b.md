# toClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0106a7599243d6c33d67e969a408089d2d9572f7a2b0a76783240a88f8c5f6b6",
  "kind": "def",
  "lexical_name": "toClass",
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
  "slug": "toclass--5c12f0c610caae987c66808b",
  "source": {
    "blob": "779406a776c31d94819e06bbde069db277b2fb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 877,
    "line": 860,
    "path": "GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c12f0c610caae987c66808bf26450d064f26ceafd3e8ee5f69e4741d4b5c107",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0106a7599243d6c33d67e969a408089d2d9572f7a2b0a76783240a88f8c5f6b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–877.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toClass : W.Point →+ Additive (ClassGroup W.CoordinateRing) where
  toFun := toClassFun
  map_zero' := rfl
  map_add' := by
    rintro (_ | @⟨x₁, y₁, h₁⟩) (_ | @⟨x₂, y₂, h₂⟩)
    any_goals simp only [zero_def, toClassFun, _root_.zero_add, _root_.add_zero]
    by_cases hx : x₁ = x₂
    · by_cases hy : y₁ = W.negY x₂ y₂
      · substs hx hy
        simpa only [some_add_some_of_Y_eq rfl rfl] using
          (mk_XYIdeal'_mul_mk_XYIdeal'_of_Y_eq h₂).symm
      · simpa only [some_add_some_of_Y_ne hx hy] using
          (mk_XYIdeal'_mul_mk_XYIdeal' h₁ h₂ fun _ => hy).symm
    · simpa only [some_add_some_of_X_ne hx] using
        (mk_XYIdeal'_mul_mk_XYIdeal' h₁ h₂ fun h => (hx h).elim).symm
#align weierstrass_curve.point.to_class WeierstrassCurve.Point.toClass

-- porting note: removed `@[simp]` to avoid a `simpNF` linter error
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779406a776c31d94819e06bbde069db277b2fb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
