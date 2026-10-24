# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:484124213e4a268404f3b12682b5fdd0eca08f6048469968049130b7d98ae0ff",
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
  "slug": "instance--3c20cfc88e65bd0fe190fe51",
  "source": {
    "blob": "83ab27679b52eafffe56520bc374e3e916ed237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c20cfc88e65bd0fe190fe513bbd49d3467d9d63cd707563b3d00b512bf6fb69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:484124213e4a268404f3b12682b5fdd0eca08f6048469968049130b7d98ae0ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : EssentiallySmall.{max v w} (cofilteredClosure f).FullSubcategory :=
  have : LocallySmall.{max v w} (cofilteredClosure f).FullSubcategory :=
    locallySmall_max.{w, v, u}
  have := small_fullSubcategory_cofilteredClosure f
  essentiallySmall_of_small_of_locallySmall _

end cofilteredClosure

section

variable [IsCofilteredOrEmpty C] {D : Type u₁} [Category.{v₁} D] (F : D ⥤ C)

/-- Every functor from a small category to a cofiltered category factors fully faithfully through a
    small cofiltered category. This is that category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ab27679b52eafffe56520bc374e3e916ed237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
