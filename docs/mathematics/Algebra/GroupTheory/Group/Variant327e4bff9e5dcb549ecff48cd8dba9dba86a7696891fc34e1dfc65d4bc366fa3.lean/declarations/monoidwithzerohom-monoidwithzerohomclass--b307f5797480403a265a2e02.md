# MonoidWithZeroHom.monoidWithZeroHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbcca5bee63d074fe9364884d839c0a68b8da684d59f3a0409379a56fbad1963",
  "kind": "instance",
  "lexical_name": "MonoidWithZeroHom.monoidWithZeroHomClass",
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
  "slug": "monoidwithzerohom-monoidwithzerohomclass--b307f5797480403a265a2e02",
  "source": {
    "blob": "52c49b8b81a338bc3faa867a4119e74986f0f8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 510,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b307f5797480403a265a2e02ed0c77edbff46ae699d71e43a109ef1b5f4215e3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbcca5bee63d074fe9364884d839c0a68b8da684d59f3a0409379a56fbad1963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonoidWithZeroHom.monoidWithZeroHomClass : MonoidWithZeroHomClass (M →*₀ N) M N where
  coe f := f.toFun
  coe_injective' f g h := by
    cases f
    cases g
    congr
    apply FunLike.coe_injective'
    exact h
  map_mul := MonoidWithZeroHom.map_mul'
  map_one := MonoidWithZeroHom.map_one'
  map_zero f := f.map_zero'
#align monoid_with_zero_hom.monoid_with_zero_hom_class MonoidWithZeroHom.monoidWithZeroHomClass

/-- Turn an element of a type `F` satisfying `MonoidWithZeroHomClass F M N` into an actual
`MonoidWithZeroHom`. This is declared as the default coercion from `F` to `M →*₀ N`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c49b8b81a338bc3faa867a4119e74986f0f8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
