# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4cbe8ac3e672d8fa1848e61ccce9cfc4e362a1fba2ebe60e52f2f4fb318e7b7",
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
  "slug": "instance--edf2d2fa65bec5608dae5af4",
  "source": {
    "blob": "df40ba90d0f87408d306cf9b6a7a0f8921c8d3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variante7ff1cd4bc427c08604f83b2049c2e5ddd1a0e750cb09dff83177c17d8410582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf2d2fa65bec5608dae5af4b58d85dfa939a93ec370d316e2f3f7117d5ffb30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variante7ff1cd4bc427c08604f83b2049c2e5ddd1a0e750cb09dff83177c17d8410582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4cbe8ac3e672d8fa1848e61ccce9cfc4e362a1fba2ebe60e52f2f4fb318e7b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsIso (Φ.leftDerivedFunctorComparison L₁ L₂ F F₁ α₁ F₂ α₂) := by
  have : F.HasPointwiseLeftDerivedFunctor W₂ := by
    rw [Φ.hasPointwiseLeftDerivedFunctor_iff_of_isLeftDerivabilityStructure]
    infer_instance
  dsimp only [leftDerivedFunctorComparison]
  rw [← isLeftDerivedFunctor_iff_isIso_leftDerivedLift,
    isLeftDerivedFunctor_iff_isRightKanExtension]
  exact ((F₂.isPointwiseRightKanExtensionOfHasPointwiseLeftDerivedFunctor α₂ W₂).compTwoSquare
    ((Φ.catCommSq L₁ L₂).iso).inv).isRightKanExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variante7ff1cd4bc427c08604f83b2049c2e5ddd1a0e750cb09dff83177c17d8410582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseLeftDerived/Variante7ff1cd4bc427c08604f83b2049c2e5ddd1a0e750cb09dff83177c17d8410582.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df40ba90d0f87408d306cf9b6a7a0f8921c8d3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
