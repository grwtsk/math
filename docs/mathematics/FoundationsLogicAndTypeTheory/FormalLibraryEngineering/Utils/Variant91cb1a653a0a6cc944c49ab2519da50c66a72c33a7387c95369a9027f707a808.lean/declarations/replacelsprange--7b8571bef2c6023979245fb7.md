# replaceLspRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91bb38198c88b9ecd2635ce1741a94613f37a760a4ad101a8c2e1f500bde2e9f",
  "kind": "def",
  "lexical_name": "replaceLspRange",
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
  "slug": "replacelsprange--7b8571bef2c6023979245fb7",
  "source": {
    "blob": "5d734365375a2bee48e5bf8f81731f3ec64daf83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b8571bef2c6023979245fb7b414447d00ec4c875f01b48c35f365bc86b3689b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91bb38198c88b9ecd2635ce1741a94613f37a760a4ad101a8c2e1f500bde2e9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceLspRange (text : FileMap) (r : Lsp.Range) (newText : String) : FileMap :=
  let start := text.lspPosToUtf8Pos r.start
  let «end» := text.lspPosToUtf8Pos r.«end»
  let pre := String.Pos.Raw.extract text.source 0 start
  let post := String.Pos.Raw.extract text.source «end» text.source.rawEndPos
  -- `pre` and `post` already have normalized line endings, so only `newText` needs its endings normalized.
  -- Note: this assumes that editing never separates a `\r\n`.
  -- If `pre` ends with `\r` and `newText` begins with `\n`, the result is potentially inaccurate.
  -- If this is ever a problem, we could store a second unnormalized FileMap, edit it, and normalize it here.
  (pre ++ newText.crlfToLf ++ post).toFileMap

open Lean.IO

open Lsp

/-- Returns the document contents with the change applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d734365375a2bee48e5bf8f81731f3ec64daf83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
