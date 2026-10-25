# EvalConfigItem.trySet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:329f47fafbaaa2e5bed1471f4080bdea9e1bd758e99fdb3137698d130fd5b4f0",
  "kind": "def",
  "lexical_name": "EvalConfigItem.trySet",
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
  "slug": "evalconfigitem-tryset--293f0081af583604a9c2df9f",
  "source": {
    "blob": "da8b588ad75bbac0d376f2746fc662d763a88267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:293f0081af583604a9c2df9f80c150c0712b2e7c4ec4ac22fa4977dc3b0747f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:329f47fafbaaa2e5bed1471f4080bdea9e1bd758e99fdb3137698d130fd5b4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvalConfigItem.trySet {α} (eval : EvalConfigItem α)
    (config : α) (item : ConfigItem) (logExceptions : Bool) :
    TermElabM α := do
  try
    eval.set config item
  catch ex =>
    if logExceptions then
      if let .internal id := ex then
        if id == abortTermExceptionId then
          -- An error has already been logged
          return config
      logException ex
      return config
    else
      throw ex

/--
Default `onErr` handler. If the `cfgItem` contains `.missing`, we assume an error has already been
reported by the parser and return `cfg`. Otherwise, we throw an unsupported syntax exception.

If `cfgType?` is present, then it adds completion info when the identifier is missing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8b588ad75bbac0d376f2746fc662d763a88267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
