# representableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df8dd3ee9ae9eba39f74283b02c9d12499aef73f3acf40cd34090a322d0074ff",
  "kind": "def",
  "lexical_name": "representableBy",
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
  "slug": "representableby--3ff913b1053ed870f6b35130",
  "source": {
    "blob": "9228ae650b0a7b50a10b36f0cb7af8aa9fb7dfc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ff913b1053ed870f6b3513078a5f0d61e34902c418576bb62155db5f704559b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df8dd3ee9ae9eba39f74283b02c9d12499aef73f3acf40cd34090a322d0074ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def representableBy : F.1.RepresentableBy (glueData hf).glued :=
  Functor.representableByEquiv.symm ((sheafToPresheaf _ _).mapIso (yonedaIsoSheaf hf))


include hf in
/--
Suppose
* F is a `Type u`-valued sheaf on `Sch` with respect to the Zariski topology
* X : ι → Sch is a family of schemes
* f : Π i, yoneda.obj (X i) ⟶ F is a family of relatively representable open immersions
* f is jointly surjective

Then `F` is representable.
-/
@[stacks 01JJ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantac7af2b68a8e3062d44aa8e67b883a321fbf9af7f2d0e94ef70ad83ca2f7d6a9.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9228ae650b0a7b50a10b36f0cb7af8aa9fb7dfc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
