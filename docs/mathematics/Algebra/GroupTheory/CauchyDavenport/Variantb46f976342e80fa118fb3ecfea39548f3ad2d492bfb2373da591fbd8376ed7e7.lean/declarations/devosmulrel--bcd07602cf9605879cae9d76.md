# DevosMulRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3afd0db226240c737ce92b0b83a7863c67c3bb9ec32878307b1042b415ceb8b",
  "kind": "def",
  "lexical_name": "DevosMulRel",
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
  "slug": "devosmulrel--bcd07602cf9605879cae9d76",
  "source": {
    "blob": "c1fb7eb4e95a6bfd22f706fb99d54663051e105a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 81,
    "path": "GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcd07602cf9605879cae9d762c917bb025d0484319614f951fa9a6f437f016e8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3afd0db226240c737ce92b0b83a7863c67c3bb9ec32878307b1042b415ceb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def DevosMulRel : Finset α × Finset α → Finset α × Finset α → Prop :=
  Prod.Lex (· < ·) (Prod.Lex (· > ·) (· < ·)) on fun x ↦ (#(x.1 * x.2), #x.1 + #x.2, #x.1)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fb7eb4e95a6bfd22f706fb99d54663051e105a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
