# pemptyUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b79817d8df9fda7cc74737455d1bce6de4c532cf56ba7cb8b82f72201b3e22",
  "kind": "instance",
  "lexical_name": "pemptyUnique",
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
  "slug": "pemptyunique--826e3c9dee8cf84625312675",
  "source": {
    "blob": "fce1d8b4e28b7b62870cd21758f539da45d16726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 547,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:826e3c9dee8cf84625312675980a9913a10012727bb187510173de3c064ae0d2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b79817d8df9fda7cc74737455d1bce6de4c532cf56ba7cb8b82f72201b3e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pemptyUnique : Unique (FreeAbelianGroup PEmpty) where
  default := 0
  uniq x := FreeAbelianGroup.induction_on x rfl (PEmpty.elim ·) (PEmpty.elim ·) (by
    rintro - - rfl rfl
    rfl)

/-- The free abelian group on a type with one term is isomorphic to `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce1d8b4e28b7b62870cd21758f539da45d16726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
