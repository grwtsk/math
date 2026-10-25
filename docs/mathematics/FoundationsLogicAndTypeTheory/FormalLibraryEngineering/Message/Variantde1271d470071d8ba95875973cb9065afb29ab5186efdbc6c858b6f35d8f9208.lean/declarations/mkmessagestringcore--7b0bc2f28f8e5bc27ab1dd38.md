# mkMessageStringCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49946a422e943cbac43730954988feb38b7f9485136e866c0d0e3f0cfaa00aae",
  "kind": "def",
  "lexical_name": "mkMessageStringCore",
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
  "slug": "mkmessagestringcore--7b0bc2f28f8e5bc27ab1dd38",
  "source": {
    "blob": "0e18d3582798e8a95a8c97626cf5b8da8b7b364f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variantde1271d470071d8ba95875973cb9065afb29ab5186efdbc6c858b6f35d8f9208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b0bc2f28f8e5bc27ab1dd3894efd0fee217c785c824f94787b2d958094458b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variantde1271d470071d8ba95875973cb9065afb29ab5186efdbc6c858b6f35d8f9208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49946a422e943cbac43730954988feb38b7f9485136e866c0d0e3f0cfaa00aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkMessageStringCore
  (severity : MessageSeverity)
  (fileName caption body : String)
  (pos : Position) (endPos? : Option Position := none)
  (infoWithPos := false)
: String := Id.run do
  let mut str := body
  unless caption == "" do
    str := caption ++ ":\n" ++ str
  match severity with
  | .information =>
    if infoWithPos then
      str := mkErrorStringWithPos fileName pos (endPos := endPos?) "info: " ++ str
  | .warning =>
    str := mkErrorStringWithPos fileName pos (endPos := endPos?) "warning: " ++ str
  | .error =>
    str := mkErrorStringWithPos fileName pos (endPos := endPos?) "error: " ++ str
  if str.isEmpty || str.back != '\n' then
    str := str ++ "\n"
  return str

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variantde1271d470071d8ba95875973cb9065afb29ab5186efdbc6c858b6f35d8f9208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variantde1271d470071d8ba95875973cb9065afb29ab5186efdbc6c858b6f35d8f9208.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e18d3582798e8a95a8c97626cf5b8da8b7b364f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
