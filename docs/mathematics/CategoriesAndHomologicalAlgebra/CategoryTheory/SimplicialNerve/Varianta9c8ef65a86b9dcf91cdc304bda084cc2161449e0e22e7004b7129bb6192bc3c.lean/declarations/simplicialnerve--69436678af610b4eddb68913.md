# SimplicialNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e2e77e80ba21f2d884834a0d1027e1bea302317ed8a8a902a640563d78f6eb8",
  "kind": "def",
  "lexical_name": "SimplicialNerve",
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
  "slug": "simplicialnerve--69436678af610b4eddb68913",
  "source": {
    "blob": "ad6c0e43b85150bd03df42920c5efda1c26c9a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Varianta9c8ef65a86b9dcf91cdc304bda084cc2161449e0e22e7004b7129bb6192bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69436678af610b4eddb68913d77e4ebfa33ad85f12d563e58b1ab44a7a4f9262",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Varianta9c8ef65a86b9dcf91cdc304bda084cc2161449e0e22e7004b7129bb6192bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e2e77e80ba21f2d884834a0d1027e1bea302317ed8a8a902a640563d78f6eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SimplicialNerve (C : Type u) [Category.{v} C] [SimplicialCategory C] :
    SSet.{max u v} where
  obj n := EnrichedFunctor SSet (SimplicialThickening (ULift (Fin (n.unop.len + 1)))) C
  map f := ↾((SimplicialThickening.functor f.unop.toOrderHom.uliftMap).comp
    (E := C) SSet)
  map_id i := by
    ext
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor OrderHom.id) _ = _
    rw [SimplicialThickening.functor_id]
    rfl
  map_comp f g := by
    ext
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor
      (f.unop.toOrderHom.uliftMap.comp g.unop.toOrderHom.uliftMap)) _ = _
    rw [SimplicialThickening.functor_comp]
    rfl

end SimplicialNerve

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Varianta9c8ef65a86b9dcf91cdc304bda084cc2161449e0e22e7004b7129bb6192bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Varianta9c8ef65a86b9dcf91cdc304bda084cc2161449e0e22e7004b7129bb6192bc3c.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6c0e43b85150bd03df42920c5efda1c26c9a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
