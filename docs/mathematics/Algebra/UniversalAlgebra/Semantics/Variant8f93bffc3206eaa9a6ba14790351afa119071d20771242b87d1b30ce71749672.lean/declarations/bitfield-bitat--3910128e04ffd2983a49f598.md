# BitField.bitAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60df2c9d4b8c9ca1da039aacc5828a8a8dbc83ad40f841b1b76cee09c83fd87b",
  "kind": "def",
  "lexical_name": "BitField.bitAt",
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
  "slug": "bitfield-bitat--3910128e04ffd2983a49f598",
  "source": {
    "blob": "d325acc5255166b97ea499d17d5ff86551015452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 31,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3910128e04ffd2983a49f598462bb9d1c2ed9122cc8992da17b5378f00f5d16e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60df2c9d4b8c9ca1da039aacc5828a8a8dbc83ad40f841b1b76cee09c83fd87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BitField.bitAt {width : Nat} (field : BitField width) (index : Fin width) : Bool :=
  Nat.testBit field.value index.val

/-- A typed row-major cell address. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Semantics/Variant8f93bffc3206eaa9a6ba14790351afa119071d20771242b87d1b30ce71749672.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d325acc5255166b97ea499d17d5ff86551015452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
