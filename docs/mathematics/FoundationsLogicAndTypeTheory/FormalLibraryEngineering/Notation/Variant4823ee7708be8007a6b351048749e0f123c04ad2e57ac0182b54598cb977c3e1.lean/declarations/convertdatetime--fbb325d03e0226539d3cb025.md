# convertDateTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca1603f00beddc01f909eb7194bba15e97bf8de8f905a47c116647305f727b90",
  "kind": "def",
  "lexical_name": "convertDateTime",
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
  "slug": "convertdatetime--fbb325d03e0226539d3cb025",
  "source": {
    "blob": "b0f18814ce8027d7bbb5f28877c0b4c08ac28ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant4823ee7708be8007a6b351048749e0f123c04ad2e57ac0182b54598cb977c3e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbb325d03e0226539d3cb02581d066e68535f916fec32bd3163900d6ebfa962d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant4823ee7708be8007a6b351048749e0f123c04ad2e57ac0182b54598cb977c3e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca1603f00beddc01f909eb7194bba15e97bf8de8f905a47c116647305f727b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def convertDateTime (d : Std.Time.DateTime) (identifier := false) : MacroM (TSyntax `term) := do
  let plain ← convertPlainDateTime d.toPlainDateTime

  if identifier then
    `(Std.Time.DateTime.ofPlainDateTime $plain <$> Std.Time.Database.defaultGetZoneRules $(Syntax.mkStrLit d.timezone.name))
  else
    `(Std.Time.DateTime.ofPlainDateTime $plain (Std.Time.TimeZone.ZoneRules.ofTimeZone $(← convertTimezone d.timezone)))

/--
Defines a syntax for zoned datetime values. It expects a string representing a datetime with
timezone information.

Example:
`zoned("2024-10-13T15:00:00-03:00")`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant4823ee7708be8007a6b351048749e0f123c04ad2e57ac0182b54598cb977c3e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant4823ee7708be8007a6b351048749e0f123c04ad2e57ac0182b54598cb977c3e1.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0f18814ce8027d7bbb5f28877c0b4c08ac28ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
