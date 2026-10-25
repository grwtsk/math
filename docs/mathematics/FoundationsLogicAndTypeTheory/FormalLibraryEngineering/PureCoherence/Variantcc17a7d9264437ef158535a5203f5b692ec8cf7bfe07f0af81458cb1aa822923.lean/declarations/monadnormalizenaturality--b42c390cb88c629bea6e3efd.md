# MonadNormalizeNaturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a81bb6e14bdd95d7b4ef12afe417f9e96ef7df832ea158b134e07ce4f482761",
  "kind": "class",
  "lexical_name": "MonadNormalizeNaturality",
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
  "slug": "monadnormalizenaturality--b42c390cb88c629bea6e3efd",
  "source": {
    "blob": "9fe41b68725fac76391520b9d48d28bdf34d713c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b42c390cb88c629bea6e3efd87e7fabb4cdcba6cf99353392616cd5640c7bc4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a81bb6e14bdd95d7b4ef12afe417f9e96ef7df832ea158b134e07ce4f482761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadNormalizeNaturality (m : Type → Type) where
  /-- The naturality for the associator. -/
  mkNaturalityAssociator (p pf pfg pfgh : NormalizedHom) (f g h : Mor₁)
    (η_f η_g η_h : Mor₂Iso) : m Expr
  /-- The naturality for the left unitor. -/
  mkNaturalityLeftUnitor (p pf : NormalizedHom) (f : Mor₁) (η_f : Mor₂Iso) : m Expr
  /-- The naturality for the right unitor. -/
  mkNaturalityRightUnitor (p pf : NormalizedHom) (f : Mor₁) (η_f : Mor₂Iso) : m Expr
  /-- The naturality for the identity. -/
  mkNaturalityId (p pf : NormalizedHom) (f : Mor₁) (η_f : Mor₂Iso) : m Expr
  /-- The naturality for the composition. -/
  mkNaturalityComp (p pf : NormalizedHom) (f g h : Mor₁) (η θ η_f η_g η_h : Mor₂Iso)
    (ih_η ih_θ : Expr) : m Expr
  /-- The naturality for the left whiskering. -/
  mkNaturalityWhiskerLeft (p pf pfg : NormalizedHom) (f g h : Mor₁)
    (η η_f η_fg η_fh : Mor₂Iso) (ih_η : Expr) : m Expr
  /-- The naturality for the right whiskering. -/
  mkNaturalityWhiskerRight (p pf pfh : NormalizedHom) (f g h : Mor₁) (η η_f η_g η_fh : Mor₂Iso)
    (ih_η : Expr) : m Expr
  /-- The naturality for the horizontal composition. -/
  mkNaturalityHorizontalComp (p pf₁ pf₁f₂ : NormalizedHom) (f₁ g₁ f₂ g₂ : Mor₁)
    (η θ η_f₁ η_g₁ η_f₂ η_g₂ : Mor₂Iso) (ih_η ih_θ : Expr) : m Expr
  /-- The naturality for the inverse. -/
  mkNaturalityInv (p pf : NormalizedHom) (f g : Mor₁) (η η_f η_g : Mor₂Iso) (ih_η : Expr) : m Expr

open MonadNormalizeNaturality

variable [MonadCoherehnceHom (CoherenceM ρ)] [MonadNormalizeNaturality (CoherenceM ρ)]

/-- Meta version of `CategoryTheory.FreeBicategory.normalize_naturality`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantcc17a7d9264437ef158535a5203f5b692ec8cf7bfe07f0af81458cb1aa822923.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe41b68725fac76391520b9d48d28bdf34d713c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
