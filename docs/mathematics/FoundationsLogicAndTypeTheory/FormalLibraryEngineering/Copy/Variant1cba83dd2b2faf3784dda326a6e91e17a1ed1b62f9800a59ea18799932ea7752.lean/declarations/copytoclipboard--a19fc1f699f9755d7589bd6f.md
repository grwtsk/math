# copyToClipboard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74a3f042609068415d40e227f47fbb8d477ec485b916adc0354a15450a6f8522",
  "kind": "def",
  "lexical_name": "copyToClipboard",
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
  "slug": "copytoclipboard--a19fc1f699f9755d7589bd6f",
  "source": {
    "blob": "33d61aff1398260529968a2c24fe4786d5c50461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19fc1f699f9755d7589bd6f92dc4447f849131a0a735667716f7fa0407fcc10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74a3f042609068415d40e227f47fbb8d477ec485b916adc0354a15450a6f8522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def copyToClipboard (copyText : String) (display : CopyDisplay := .iconOnly) :
    CoreM MessageData := do
  let (display, hasIcon) := match display with
    | .iconOnly => (none, true)
    | .copiedText hasIcon => (copyText, hasIcon)
    | .text s hasIcon => (s, hasIcon)
  let props : CopyProps := { display, copyText, hasIcon }
  return .ofWidget
    (← Widget.WidgetInstance.ofHash Copy.javascriptHash <| Server.RpcEncodable.rpcEncode props)
    m!"[click-to-copy]{if let some display := display then m!" {display}\n" else m!" "}\
      {m!"(Will copy:{indentD copyText})"}"

end ImportGraph.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d61aff1398260529968a2c24fe4786d5c50461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
