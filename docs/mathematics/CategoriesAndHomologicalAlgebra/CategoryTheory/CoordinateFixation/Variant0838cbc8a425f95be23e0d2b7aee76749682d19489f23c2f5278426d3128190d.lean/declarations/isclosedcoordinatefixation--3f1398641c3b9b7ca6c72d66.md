# IsClosedCoordinateFixation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0ad2fd5c9ccb0fc3070f999214d8d3c38a4f3040e42d830b83cf185c27b994e",
  "kind": "def",
  "lexical_name": "IsClosedCoordinateFixation",
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
  "slug": "isclosedcoordinatefixation--3f1398641c3b9b7ca6c72d66",
  "source": {
    "blob": "ba4ee03723f89a0d653433a39414d5d3e85a8199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f1398641c3b9b7ca6c72d66b94ee7c37bfbe3e9050d03a039ff7df9beaeca57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0ad2fd5c9ccb0fc3070f999214d8d3c38a4f3040e42d830b83cf185c27b994e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsClosedCoordinateFixation
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    {Coord : Type uCoord}
    (L : CoordinateFixationLayer Global Fixed Coord)
    (Q : CoordinateFixationSpecification Global Fixed Coord) : Prop :=
  ∀ c, Q.realizes c (L.fix c)

/--
The category-level non-functorial preservation predicates.  Identity and
composition preservation are already fields of each `FunctorLike`; typed
sieve and traversal transports live with their graph data in `Sieve.lean`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4ee03723f89a0d653433a39414d5d3e85a8199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
