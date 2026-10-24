# Functor.toPseudofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8973800d7b113c8552a9cb88686a34007ad2bc9b25b83a2cc8045dd5f0e45564",
  "kind": "def",
  "lexical_name": "Functor.toPseudofunctor",
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
  "slug": "functor-topseudofunctor--64090033676bfe9ac8617ad9",
  "source": {
    "blob": "e3617533ab9d03399211f7666a0a38f1a85f306a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64090033676bfe9ac8617ad994f6f2c638abcc7a99bef2fae52ed31203b9d1ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8973800d7b113c8552a9cb88686a34007ad2bc9b25b83a2cc8045dd5f0e45564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.toPseudofunctor : LocallyDiscrete C ⥤ᵖ (LocallyDiscrete D) :=
  pseudofunctorOfIsLocallyDiscrete
    (fun ⟨X⟩ ↦ .mk <| F.obj X) (fun ⟨f⟩ ↦ (F.map f).toLoc)
    (fun ⟨X⟩ ↦ eqToIso (by simp [CategoryStruct.id]))
    (fun ⟨f⟩ ⟨g⟩ ↦ eqToIso (by simp [CategoryStruct.comp]))

/--
A functor between two categories `C` and `D` can be lifted to an oplax functor between the
corresponding locally discrete bicategories.

This is just an abbreviation of `Functor.toPseudofunctor.toOplax`.
-/
@[simps! -isSimp map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3617533ab9d03399211f7666a0a38f1a85f306a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
