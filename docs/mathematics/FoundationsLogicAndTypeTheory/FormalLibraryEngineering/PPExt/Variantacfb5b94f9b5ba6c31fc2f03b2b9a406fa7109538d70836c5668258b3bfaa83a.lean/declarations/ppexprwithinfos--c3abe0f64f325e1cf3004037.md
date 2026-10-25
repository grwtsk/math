# ppExprWithInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58ec79898ad5f35467ab2b3db81a4237b0b54da8e956173f26d64d427f75d567",
  "kind": "def",
  "lexical_name": "ppExprWithInfos",
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
  "slug": "ppexprwithinfos--c3abe0f64f325e1cf3004037",
  "source": {
    "blob": "51fe5793e2c100e876fe8dd72dfa58aeea5f431b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3abe0f64f325e1cf3004037ad038fb3e98bea73397fbc21834ddd487cc28b28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58ec79898ad5f35467ab2b3db81a4237b0b54da8e956173f26d64d427f75d567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ppExprWithInfos (ctx : PPContext) (e : Expr) : BaseIO FormatWithInfos := do
  if pp.raw.get ctx.opts then
    let e := instantiateMVarsCore ctx.mctx e |>.1
    return format (toString e)
  else
    match (← ppExt.getState ctx.env |>.ppExprWithInfos ctx e |>.toBaseIO) with
    | .ok fmt => return fmt
    | .error ex =>
      if pp.rawOnError.get ctx.opts then
        pure f!"[Error pretty printing expression: {ex}. Falling back to raw printer.]{Format.line}{e}"
      else
        pure f!"failed to pretty print expression (use 'set_option pp.rawOnError true' for raw representation)"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPExt/Variantacfb5b94f9b5ba6c31fc2f03b2b9a406fa7109538d70836c5668258b3bfaa83a.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fe5793e2c100e876fe8dd72dfa58aeea5f431b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
