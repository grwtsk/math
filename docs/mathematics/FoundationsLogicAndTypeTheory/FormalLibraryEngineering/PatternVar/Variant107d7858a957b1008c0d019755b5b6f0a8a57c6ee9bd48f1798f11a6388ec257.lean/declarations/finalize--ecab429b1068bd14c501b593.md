# finalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef6e096ff8d58b1086362256c05790a147a6e0a3a0780f455d65c2acfb68ab39",
  "kind": "def",
  "lexical_name": "finalize",
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
  "slug": "finalize--ecab429b1068bd14c501b593",
  "source": {
    "blob": "125ef9b58cffd4f12b599f6bb1f67084bb79dbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecab429b1068bd14c501b593d26d19a065823d4446f6f067e160412284a0e458",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef6e096ff8d58b1086362256c05790a147a6e0a3a0780f455d65c2acfb68ab39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finalize (ctx : Context) : M Syntax := do
  if ctx.args.isEmpty then
    if h : !ctx.namedArgs.isEmpty then
      throwInvalidNamedArgs ctx h
    else
      let fStx ← `(@$(ctx.funId):ident)
      return Syntax.mkApp fStx ctx.newArgs
  else
    throwWrongArgCount ctx true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125ef9b58cffd4f12b599f6bb1f67084bb79dbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
