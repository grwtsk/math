# uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42f01e16c5c53da73594b267feca452a95ffc021e741854e23ae2688e5a36e8d",
  "kind": "def",
  "lexical_name": "uncurry",
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
  "slug": "uncurry--60d3b38b2a4c4c62df29bdce",
  "source": {
    "blob": "c5078d2e543afb43ddb161ea3b4f04312349a7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60d3b38b2a4c4c62df29bdce0ac202eac689da125e898f55856081523b986af9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42f01e16c5c53da73594b267feca452a95ffc021e741854e23ae2688e5a36e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uncurry : (C ⥤ D ⥤ E) ⥤ C × D ⥤ E where
  obj F :=
    { obj := fun X => (F.obj X.1).obj X.2
      map := fun {X} {Y} f => (F.map f.1).app X.2 ≫ (F.obj Y.1).map f.2
      map_comp := fun f g => by
        simp only [prod_comp_fst, prod_comp_snd, Functor.map_comp, NatTrans.comp_app,
          Category.assoc]
        slice_lhs 2 3 => rw [← NatTrans.naturality]
        rw [Category.assoc] }
  map T :=
    { app := fun X => (T.app X.1).app X.2
      naturality := fun X Y f => by
        simp only [Category.assoc]
        slice_lhs 2 3 => rw [NatTrans.naturality]
        slice_lhs 1 2 => rw [← NatTrans.comp_app, NatTrans.naturality, NatTrans.comp_app]
        rw [Category.assoc] }

/-- The object level part of the currying functor. (See `curry` for the functorial version.)
-/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5078d2e543afb43ddb161ea3b4f04312349a7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
