# IsoCat.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ec18a0674c6899961089cb1c72ea26475409568b7a7d044ed796159068867fa",
  "kind": "def",
  "lexical_name": "IsoCat.trans",
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
  "slug": "isocat-trans--61e101af3b7aa02af1193eb3",
  "source": {
    "blob": "8c4839a5c5f8813e3490845a4b89a413b6332103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61e101af3b7aa02af1193eb38833aaf2fed64b2a7a945230fe3f995680687fe2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ec18a0674c6899961089cb1c72ea26475409568b7a7d044ed796159068867fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsoCat.trans (e : IsoCat C D) (f : IsoCat D E) : IsoCat C E where
  functor := e.functor ⋙ f.functor
  inverse := f.inverse ⋙ e.inverse
  unit_eq := by
    rw [Functor.assoc, ← Functor.assoc f.functor, ← f.unit_eq, Functor.id_comp]
    exact e.unit_eq
  counit_eq := by
    rw [Functor.assoc, ← Functor.assoc e.inverse, e.counit_eq, Functor.id_comp]
    exact f.counit_eq

/-- The bijection on objects induced by an isomorphism of categories. -/
@[simps, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4839a5c5f8813e3490845a4b89a413b6332103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
