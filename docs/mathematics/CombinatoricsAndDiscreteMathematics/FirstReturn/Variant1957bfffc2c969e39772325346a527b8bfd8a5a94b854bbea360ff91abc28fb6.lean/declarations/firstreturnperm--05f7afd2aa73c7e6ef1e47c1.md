# firstReturnPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0357b8d0d1611e565089edba33cf457ee1074a028c312cab373e5c513a9ce3e",
  "kind": "def",
  "lexical_name": "firstReturnPerm",
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
  "slug": "firstreturnperm--05f7afd2aa73c7e6ef1e47c1",
  "source": {
    "blob": "04596ab1e4e02ca27b31942dc2e98f727e55e8af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05f7afd2aa73c7e6ef1e47c107be8df0d40626dadee9e18cd3c2b8acc93ec467",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0357b8d0d1611e565089edba33cf457ee1074a028c312cab373e5c513a9ce3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def firstReturnPerm
    (P : Equiv.Perm α)
    (Valid : α → Prop) :
    Equiv.Perm (ValidState Valid) where
  toFun := firstReturn P Valid
  invFun := previousReturn P Valid
  left_inv := previousReturn_firstReturn P Valid
  right_inv := firstReturn_previousReturn P Valid

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04596ab1e4e02ca27b31942dc2e98f727e55e8af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
