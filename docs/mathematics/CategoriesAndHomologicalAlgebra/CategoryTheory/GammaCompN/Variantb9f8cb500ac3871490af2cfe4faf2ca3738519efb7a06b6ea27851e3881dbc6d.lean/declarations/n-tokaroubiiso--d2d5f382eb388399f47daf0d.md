# N₂Γ₂ToKaroubiIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1425b7b04f94a8551e0c37207130f84c908ece0c0c4ad7b437835dcdfbc38b41",
  "kind": "def",
  "lexical_name": "N₂Γ₂ToKaroubiIso",
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
  "slug": "n-tokaroubiiso--d2d5f382eb388399f47daf0d",
  "source": {
    "blob": "fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2d5f382eb388399f47daf0def627cfd5deb4ef479818a6687738adcf1c168f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1425b7b04f94a8551e0c37207130f84c908ece0c0c4ad7b437835dcdfbc38b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def N₂Γ₂ToKaroubiIso : toKaroubi (ChainComplex C ℕ) ⋙ Γ₂ ⋙ N₂ ≅ Γ₀ ⋙ N₁ :=
  calc
    toKaroubi (ChainComplex C ℕ) ⋙ Γ₂ ⋙ N₂ ≅
      toKaroubi (ChainComplex C ℕ) ⋙ (Γ₂ ⋙ N₂) := (Functor.associator _ _ _).symm
    _ ≅ (Γ₀ ⋙ toKaroubi (SimplicialObject C)) ⋙ N₂ :=
        isoWhiskerRight ((functorExtension₂CompWhiskeringLeftToKaroubiIso _ _).app Γ₀) N₂
    _ ≅ Γ₀ ⋙ toKaroubi (SimplicialObject C) ⋙ N₂ := Functor.associator _ _ _
    _ ≅ Γ₀ ⋙ N₁ :=
      isoWhiskerLeft Γ₀ ((functorExtension₁CompWhiskeringLeftToKaroubiIso _ _).app N₁)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
