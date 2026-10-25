# mkWhereFinallyView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cab2e5fb9c89f16e40399779bb4dd501587d5db3a5ba3ba36570c8097faec17a",
  "kind": "def",
  "lexical_name": "mkWhereFinallyView",
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
  "slug": "mkwherefinallyview--58988c956b5eb60b863d3de5",
  "source": {
    "blob": "b8aa8e865426ef8528805aace7343e653ce2e42d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhereFinally/Variantce7b1a495763f30533d0381c0f01f70fc1b82ae1a4ec77e4369b5a6105f5e997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58988c956b5eb60b863d3de5c4fb32caf5e01eb63d581f41eff15eb2ead3a518",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhereFinally/Variantce7b1a495763f30533d0381c0f01f70fc1b82ae1a4ec77e4369b5a6105f5e997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cab2e5fb9c89f16e40399779bb4dd501587d5db3a5ba3ba36570c8097faec17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkWhereFinallyView {m} [Monad m] [MonadError m] (stx : TSyntax ``Parser.Term.whereDecls) : m WhereFinallyView := do
  -- Fail gracefully upon partial parses/missing where or finally sections
  let whereFinally := stx.raw[2][0]
  if whereFinally.isMissing then
    return { ref := stx, tactic := ⟨.missing⟩ }
  if !whereFinally[2][0].isMissing then
    throwErrorAt stx "`where ... finally` does not currently support any named sub-sections `| sectionName => ...`"
  let tactic := ⟨whereFinally[1]⟩
  return { ref := whereFinally, tactic }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhereFinally/Variantce7b1a495763f30533d0381c0f01f70fc1b82ae1a4ec77e4369b5a6105f5e997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WhereFinally/Variantce7b1a495763f30533d0381c0f01f70fc1b82ae1a4ec77e4369b5a6105f5e997.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8aa8e865426ef8528805aace7343e653ce2e42d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
