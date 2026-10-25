# synthInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3e6d45dd36eb7065c34ac51da2333b882344866ac527db0bfd59ba3504a5abe",
  "kind": "def",
  "lexical_name": "synthInstance",
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
  "slug": "synthinstance--ef69272a781b5f0711cdacea",
  "source": {
    "blob": "ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef69272a781b5f0711cdacea6b35f414b1343a9a3b315fdbfcfddb8653720a97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3e6d45dd36eb7065c34ac51da2333b882344866ac527db0bfd59ba3504a5abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def synthInstance (type : Expr) : SymM Expr := do
  let some inst ← synthInstance? type
    | throwError "`sym` failed to find instance{indentExpr type}"
  return inst

/--
Helper function for instantiating a type class `type`, and
then using the result to perform `isDefEq x val`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
