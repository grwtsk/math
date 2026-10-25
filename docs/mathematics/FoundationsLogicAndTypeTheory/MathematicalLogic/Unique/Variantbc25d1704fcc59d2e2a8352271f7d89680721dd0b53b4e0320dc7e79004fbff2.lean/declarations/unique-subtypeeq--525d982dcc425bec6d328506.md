# Unique.subtypeEq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c69ec2de82754f67af2e57a7bdb93bb98819f6b5d98eb48aa8def5bbf806fda",
  "kind": "instance",
  "lexical_name": "Unique.subtypeEq'",
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
  "slug": "unique-subtypeeq--525d982dcc425bec6d328506",
  "source": {
    "blob": "079f58199478f68b34bc94e3e1d719e2a5c67805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:525d982dcc425bec6d3285061d5fe0a87e703289640044c04911663dbcdc7750",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c69ec2de82754f67af2e57a7bdb93bb98819f6b5d98eb48aa8def5bbf806fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Unique.subtypeEq' (y : α) : Unique { x // y = x } where
  default := ⟨y, rfl⟩
  uniq := fun ⟨x, hx⟩ ↦ by subst hx; congr

end Subtype
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079f58199478f68b34bc94e3e1d719e2a5c67805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
