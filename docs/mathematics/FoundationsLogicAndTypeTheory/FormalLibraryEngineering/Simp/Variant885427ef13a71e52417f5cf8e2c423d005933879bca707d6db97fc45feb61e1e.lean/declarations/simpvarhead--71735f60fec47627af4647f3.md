# simpVarHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c642228946ce45191ff28faaa10a2834b4a2c96198a65a48162bc5dba4dba03",
  "kind": "def",
  "lexical_name": "simpVarHead",
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
  "slug": "simpvarhead--71735f60fec47627af4647f3",
  "source": {
    "blob": "11e59be52fb4cdb57d15dfdb5fdae6dd82842be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71735f60fec47627af4647f3478bc5f09b34220118620874c29581d6ebd5cd16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c642228946ce45191ff28faaa10a2834b4a2c96198a65a48162bc5dba4dba03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter] def simpVarHead : Linter where
  noErrorsFound :=
    "No left-hand sides of a simp lemma has a variable as head symbol."
  errorsFound := "LEFT-HAND SIDE HAS VARIABLE AS HEAD SYMBOL.
Some simp lemmas have a variable as head symbol of the left-hand side (after whnfR):"
  test := fun declName => do
    unless ← isSimpTheorem declName do return none
    checkAllSimpTheoremInfos (← getConstInfo declName).type fun {lhs, ..} => do
    let lhs ← whnfR lhs
    let headSym := lhs.getAppFn
    unless headSym.isFVar do return none
    return m!"Left-hand side has variable as head symbol: {headSym}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e59be52fb4cdb57d15dfdb5fdae6dd82842be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
