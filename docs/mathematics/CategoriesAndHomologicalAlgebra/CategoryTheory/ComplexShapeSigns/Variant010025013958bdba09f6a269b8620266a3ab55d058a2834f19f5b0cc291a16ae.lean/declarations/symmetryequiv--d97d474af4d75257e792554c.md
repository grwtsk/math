# symmetryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:063f59f8bd471db7147c3daf205a4cfb4a4dc1735cabc6a84d16115e2d4a5c68",
  "kind": "def",
  "lexical_name": "symmetryEquiv",
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
  "slug": "symmetryequiv--d97d474af4d75257e792554c",
  "source": {
    "blob": "66ec22c612dfad9273a19a887aa51d7092853836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d97d474af4d75257e792554cff91528432b5fdc2c76d18e75c85838ecbcbb6c8",
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

Occurrence: `declaration:063f59f8bd471db7147c3daf205a4cfb4a4dc1735cabc6a84d16115e2d4a5c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symmetryEquiv (j : I₁₂) :
    (π c₂ c₁ c₁₂ ⁻¹' {j}) ≃ (π c₁ c₂ c₁₂ ⁻¹' {j}) where
  toFun := fun ⟨⟨i₂, i₁⟩, h⟩ => ⟨⟨i₁, i₂⟩, by simpa [π_symm] using h⟩
  invFun := fun ⟨⟨i₁, i₂⟩, h⟩ => ⟨⟨i₂, i₁⟩, by simpa [π_symm] using h⟩

variable {c₁}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant010025013958bdba09f6a269b8620266a3ab55d058a2834f19f5b0cc291a16ae.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ec22c612dfad9273a19a887aa51d7092853836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
