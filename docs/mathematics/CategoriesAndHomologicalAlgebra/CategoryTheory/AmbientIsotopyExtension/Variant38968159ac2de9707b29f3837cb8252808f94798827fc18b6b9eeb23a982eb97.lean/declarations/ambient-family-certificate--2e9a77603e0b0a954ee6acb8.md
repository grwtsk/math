# ambient_family_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ac37ced-7418-7017-c736-208c06845489",
  "kind": "theorem",
  "lexical_name": "ambient_family_certificate",
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
  "slug": "ambient-family-certificate--2e9a77603e0b0a954ee6acb8",
  "source": {
    "blob": "7e2ea1e382339d4f06277cff8e733da5b0724334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 269,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e9a77603e0b0a954ee6acb8aef8bb451cabfda6cd82e2d25b81eae8703b8bae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac37ced-7418-7017-c736-208c06845489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ambient_family_certificate
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.AmbientFamilySmooth (A.ambientFamily h) ∧
      A.FramedFamilySmooth (A.framedEmbeddingAt h) ∧
      A.ambientFamily h A.timeZero = G.refl M ∧
      A.framedEmbeddingAt h A.timeZero = e₀ ∧
      A.framedEmbeddingAt h A.timeOne = e₁ ∧
      A.ambientFamily h A.timeOne = A.ambientEnd h ∧
      ∀ t, A.CarriesEmbedding (A.ambientFamily h t) e₀
          (A.framedEmbeddingAt h t) ∧
        A.SupportedAwayFromOldBoundary (A.ambientFamily h t) ∧
        A.SupportedInInterior (A.ambientFamily h t) ∧
        A.FixesOutsideSupport (A.ambientFamily h t) ∧
        A.FixesOldBoundary (A.ambientFamily h t) :=
  ⟨A.ambient_family_smooth h,
    A.framed_family_smooth h,
    A.ambient_family_zero h,
    A.framed_embedding_zero h,
    A.framed_embedding_one h,
    A.ambient_family_one h,
    fun t =>
      ⟨A.ambient_carries_embedding_at h t,
        A.ambient_supported h t,
        A.ambient_interior h t,
        A.ambient_fixes_outside h t,
        A.ambient_fixes_boundary h t⟩⟩

/-- The ambient extension supplied for an isotopy has controlled support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant38968159ac2de9707b29f3837cb8252808f94798827fc18b6b9eeb23a982eb97.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2ea1e382339d4f06277cff8e733da5b0724334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
