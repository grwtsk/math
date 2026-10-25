# _root_.Lean.MessageData.isLinterMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9832b289bb739fd879a23fb0013062fca53172656ae213db314a6d92a1bcad09",
  "kind": "def",
  "lexical_name": "_root_.Lean.MessageData.isLinterMessage",
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
  "slug": "root-lean-messagedata-islintermessage--65790c6978f9b29331d6d8fe",
  "source": {
    "blob": "4c1f19123351bc001d327711b1c430ec37e0debd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65790c6978f9b29331d6d8fe697358e09fe6296d23a32d82fb407c4199b61407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9832b289bb739fd879a23fb0013062fca53172656ae213db314a6d92a1bcad09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MessageData.isLinterMessage (msg : MessageData) : Bool :=
  msg.hasTag (· == linterMessageTag)

/--
If `linterOption` is enabled, print a linter warning message at the position determined by `stx`.

Whether a linter option is enabled or not is determined by the following sequence:
1. If it is set, then the value determines whether or not it is enabled.
2. Otherwise, if `linter.all` is set, then its value determines whether or not the option is enabled.
3. Otherwise, if any of the linter sets containing the option is enabled, it is enabled.
  (Only enabled linter sets are considered: explicitly disabling a linter set
  will revert the linters it contains to their default behavior.)
4. Otherwise, the default value determines whether or not it is enabled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant9d29c5bc817ac6538242a3c758804915b34b96306e063812ae338eab41afae6c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1f19123351bc001d327711b1c430ec37e0debd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
