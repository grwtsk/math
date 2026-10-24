# IsSheafUniqueGluing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:813c4b883b446ef6fdb89805972af407b5c8bb01c26868b415d74f5c35a973bf",
  "kind": "def",
  "lexical_name": "IsSheafUniqueGluing",
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
  "slug": "issheafuniquegluing--4d769e5fe9c7524efe2580b8",
  "source": {
    "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d769e5fe9c7524efe2580b8ace186cdb8ad5f5175c425da0f76aeb803ec6014",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:813c4b883b446ef6fdb89805972af407b5c8bb01c26868b415d74f5c35a973bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheafUniqueGluing : Prop :=
  ∀ ⦃ι : Type x⦄ (U : ι → Opens X) (sf : ∀ i : ι, F.obj (op (U i))),
    IsCompatible F U sf → ∃! s : F.obj (op (iSup U)), IsGluing F U sf s
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_unique_gluing TopCat.Presheaf.IsSheafUniqueGluing

end

section TypeValued

variable {X : TopCat.{x}} (F : Presheaf (Type u) X) {ι : Type x} (U : ι → Opens X) [UnivLE.{x, u}]

/-- For presheaves of types, terms of `piOpens F U` are just families of sections.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e83aa53504d92a9a19edee4fa2edde64b8a2a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
