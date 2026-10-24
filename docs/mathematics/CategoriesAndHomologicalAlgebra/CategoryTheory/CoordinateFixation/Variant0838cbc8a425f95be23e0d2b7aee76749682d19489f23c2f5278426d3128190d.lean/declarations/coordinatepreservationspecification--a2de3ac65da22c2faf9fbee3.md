# CoordinatePreservationSpecification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdf770b69230c69c984193ebfeaddd5838cfd2f79864f94d3056814617aef1ec",
  "kind": "structure",
  "lexical_name": "CoordinatePreservationSpecification",
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
  "slug": "coordinatepreservationspecification--a2de3ac65da22c2faf9fbee3",
  "source": {
    "blob": "ba4ee03723f89a0d653433a39414d5d3e85a8199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2de3ac65da22c2faf9fbee3f7fbb575867184c774850eef943759e4440292a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdf770b69230c69c984193ebfeaddd5838cfd2f79864f94d3056814617aef1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoordinatePreservationSpecification
    (Global : CategoryLike.{uObj, uHom})
    (Fixed : CategoryLike.{vObj, vHom}) where
  globalPullbacks : PullbackSpecification Global
  fixedPullbacks : PullbackSpecification Fixed
  baseChangeCompatible : FunctorLike Global Fixed → Prop
  designatedOperationClosed : FunctorLike Global Fixed → Prop

/--
Compatibility with designated commutative pullback-shaped cones and with the
separately supplied base-change predicate.  This is not finite-limit
preservation: `PullbackConeLike` has no universal-property field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4ee03723f89a0d653433a39414d5d3e85a8199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
