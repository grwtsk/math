# isColimitPresheafFiberOfIsCofilteredCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88b6bb3f73f581533ed740d3ceb047a0211522db9444d0102e6cb988b712600d",
  "kind": "def",
  "lexical_name": "isColimitPresheafFiberOfIsCofilteredCocone",
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
  "slug": "iscolimitpresheaffiberofiscofilteredcocone--fa706edd431b7557617c0f34",
  "source": {
    "blob": "07877324223c0b9e07c5966e5e568eeee42e630e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa706edd431b7557617c0f34e5b972dadd9cb402fb0443ef06e6f3ce6a6a837d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88b6bb3f73f581533ed740d3ceb047a0211522db9444d0102e6cb988b712600d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitPresheafFiberOfIsCofilteredCocone (P : Cᵒᵖ ⥤ A) :
    IsColimit (presheafFiberOfIsCofilteredCocone p hp P) :=
  (Functor.Final.isColimitWhiskerEquiv (functor.{w} p).op _).2
    ((ofIsCofiltered p hp).isColimitPresheafFiberCocone P)

end GrothendieckTopology.Point

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant0c11a3e4505318657bb35303f662f463882a187e5a0ba6ed5e376bdd1850a949.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07877324223c0b9e07c5966e5e568eeee42e630e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
