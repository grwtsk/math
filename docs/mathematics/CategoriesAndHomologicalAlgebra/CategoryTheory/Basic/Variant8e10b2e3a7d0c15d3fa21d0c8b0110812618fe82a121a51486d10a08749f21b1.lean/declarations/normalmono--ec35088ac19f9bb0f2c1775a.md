# NormalMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11f4e24657541e9753564bdf7f10ca9787673e601fc5fb3ca4babf86f182b07e",
  "kind": "class",
  "lexical_name": "NormalMono",
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
  "slug": "normalmono--ec35088ac19f9bb0f2c1775a",
  "source": {
    "blob": "3998a97256b84f5237f7f6a151cbd6dc43b86bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec35088ac19f9bb0f2c1775aac9376ed7ef8564f7ddbb52d647069e4ed257da9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11f4e24657541e9753564bdf7f10ca9787673e601fc5fb3ca4babf86f182b07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NormalMono (f : X ⟶ Y) where
  Z : C -- Porting note: violates naming convention but can't think of a better one
  g : Y ⟶ Z
  w : f ≫ g = 0
  isLimit : IsLimit (KernelFork.ofι f w)
#align category_theory.normal_mono CategoryTheory.NormalMono
#align category_theory.normal_mono.is_limit CategoryTheory.NormalMono.isLimit

attribute [inherit_doc NormalMono] NormalMono.Z NormalMono.g NormalMono.w NormalMono.isLimit

section

attribute [local instance] fullyFaithfulReflectsLimits

attribute [local instance] Equivalence.essSurj_of_equivalence

/-- If `F` is an equivalence and `F.map f` is a normal mono, then `f` is a normal mono. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3998a97256b84f5237f7f6a151cbd6dc43b86bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
