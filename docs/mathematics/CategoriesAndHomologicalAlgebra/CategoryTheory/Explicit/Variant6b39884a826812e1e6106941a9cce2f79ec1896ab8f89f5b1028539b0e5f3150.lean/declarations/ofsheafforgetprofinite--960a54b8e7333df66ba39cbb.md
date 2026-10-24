# ofSheafForgetProfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4031ffb29c29715fb9b900ac7b3c812b95ae7b4f5919ea4d1a30b2ab4d8e755",
  "kind": "def",
  "lexical_name": "ofSheafForgetProfinite",
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
  "slug": "ofsheafforgetprofinite--960a54b8e7333df66ba39cbb",
  "source": {
    "blob": "25891a451e0424eb6dfb04a1b1296e1608eb6406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant6b39884a826812e1e6106941a9cce2f79ec1896ab8f89f5b1028539b0e5f3150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:960a54b8e7333df66ba39cbb447abf3e966060cbfbc3f8881523c23d702c5428",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant6b39884a826812e1e6106941a9cce2f79ec1896ab8f89f5b1028539b0e5f3150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4031ffb29c29715fb9b900ac7b3c812b95ae7b4f5919ea4d1a30b2ab4d8e755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofSheafForgetProfinite
    [∀ X, HasLimitsOfShape (StructuredArrow X profiniteToCompHaus.op) A]
    [HasForget A] [ReflectsFiniteLimits (CategoryTheory.forget A)]
    (F : Profinite.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)]
    (hF : EqualizerCondition (F ⋙ CategoryTheory.forget A)) :
    Condensed A :=
  ProfiniteCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      apply isSheaf_coherent_of_hasPullbacks_of_comp F (CategoryTheory.forget A)
      rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition]
      exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩ }

/--
The condensed object associated to a presheaf on `CompHaus` which preserves finite products and
satisfies the equalizer condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant6b39884a826812e1e6106941a9cce2f79ec1896ab8f89f5b1028539b0e5f3150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant6b39884a826812e1e6106941a9cce2f79ec1896ab8f89f5b1028539b0e5f3150.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25891a451e0424eb6dfb04a1b1296e1608eb6406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
