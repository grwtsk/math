# InjectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e077137a426ae1a147c3e7d716813b9010471e5924ab011623e9d1383881eae",
  "kind": "structure",
  "lexical_name": "InjectiveResolution",
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
  "slug": "injectiveresolution--9009227e72e7c4afa79e6b80",
  "source": {
    "blob": "79b45fb5a22505657a9baa5bc0eae47c0f778bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9009227e72e7c4afa79e6b80c343610a9c716529c872d6e5a477b5b5e8e03d78",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e077137a426ae1a147c3e7d716813b9010471e5924ab011623e9d1383881eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InjectiveResolution (Z : C) where
  cocomplex : CochainComplex C ℕ
  ι : (CochainComplex.single₀ C).obj Z ⟶ cocomplex
  injective : ∀ n, Injective (cocomplex.X n) := by infer_instance
  exact₀ : Exact (ι.f 0) (cocomplex.d 0 1) := by infer_instance
  exact : ∀ n, Exact (cocomplex.d n (n + 1)) (cocomplex.d (n + 1) (n + 2)) := by infer_instance
  mono : Mono (ι.f 0) := by infer_instance
set_option linter.uppercaseLean3 false in
#align category_theory.InjectiveResolution CategoryTheory.InjectiveResolution

open InjectiveResolution in
attribute [inherit_doc InjectiveResolution]
  cocomplex InjectiveResolution.ι injective exact₀ exact mono

attribute [instance] InjectiveResolution.injective InjectiveResolution.mono

/-- An object admits an injective resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b45fb5a22505657a9baa5bc0eae47c0f778bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
