# δ_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c61825-5a82-97c6-bf69-9a18332db7f5",
  "kind": "theorem",
  "lexical_name": "δ_naturality",
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
  "slug": "naturality--2aa3842dbac5d4c19ddb9c00",
  "source": {
    "blob": "717b263ed4a565174f8e813c968147ca9e7a6099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant472212099ec1fe970fa409f8bcf3437373098453be282584b6abce80531f015c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa3842dbac5d4c19ddb9c0054b625b6d09c3526f222e4eadba602e7830442db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant472212099ec1fe970fa409f8bcf3437373098453be282584b6abce80531f015c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c61825-5a82-97c6-bf69-9a18332db7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem δ_naturality (x : H S₁.X₃ n₀) :
    δ h₂ n₀ n₁ h (map f.τ₃ n₀ x) = map f.τ₁ n₁ (δ h₁ n₀ n₁ h x) := by
  delta δ H map
  simp [ShortComplex.ShortExact.extClass_naturality h₁ h₂ f]

/-- This is the long exact sequence:
`Hⁿ(S.X₁) ⟶ Hⁿ(S.X₂) ⟶ Hⁿ(S.X₃) ⟶ Hⁿ⁺¹(S.X₁) ⟶ Hⁿ⁺¹(S.X₂) ⟶ Hⁿ⁺¹(S.X₃)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant472212099ec1fe970fa409f8bcf3437373098453be282584b6abce80531f015c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant472212099ec1fe970fa409f8bcf3437373098453be282584b6abce80531f015c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b263ed4a565174f8e813c968147ca9e7a6099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
