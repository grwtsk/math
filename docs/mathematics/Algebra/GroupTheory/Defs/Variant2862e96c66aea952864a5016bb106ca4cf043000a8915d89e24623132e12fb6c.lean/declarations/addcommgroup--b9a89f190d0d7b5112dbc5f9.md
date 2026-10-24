# AddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b8fd33cc9be8b9f7bda24fc4a9a87ecfd04e29044f0fef6f45ee09e9a349187",
  "kind": "class",
  "lexical_name": "AddCommGroup",
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
  "slug": "addcommgroup--b9a89f190d0d7b5112dbc5f9",
  "source": {
    "blob": "5b98097924b1f95f321c938c31abef37e42e8dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9a89f190d0d7b5112dbc5f995fd1911a1f956b781c2fb72994d0ad47ddd46da",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b8fd33cc9be8b9f7bda24fc4a9a87ecfd04e29044f0fef6f45ee09e9a349187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddCommGroup (G : Type*) extends AddGroup G, AddCommMonoid G

/-- A commutative group is a group with commutative `(*)`. -/
-- There is intentionally no `IsMulCommutative` for `CommGroup` instance for performance reasons.
@[to_additive (attr := wikidata Q181296)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant2862e96c66aea952864a5016bb106ca4cf043000a8915d89e24623132e12fb6c.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b98097924b1f95f321c938c31abef37e42e8dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
