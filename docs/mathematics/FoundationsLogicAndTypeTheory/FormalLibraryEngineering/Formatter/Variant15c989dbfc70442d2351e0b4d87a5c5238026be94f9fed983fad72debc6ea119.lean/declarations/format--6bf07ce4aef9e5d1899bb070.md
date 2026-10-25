# format

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:370ec668bc1671087063e508777a4cede5af987e698aa43a570c44e692ba364e",
  "kind": "def",
  "lexical_name": "format",
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
  "slug": "format--6bf07ce4aef9e5d1899bb070",
  "source": {
    "blob": "2067634ee568e8e1480cece32b51eb197d04468c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 644,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant15c989dbfc70442d2351e0b4d87a5c5238026be94f9fed983fad72debc6ea119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf07ce4aef9e5d1899bb070268107bf7ffb0f91c1af101cedb94bcecf56dd20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant15c989dbfc70442d2351e0b4d87a5c5238026be94f9fed983fad72debc6ea119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:370ec668bc1671087063e508777a4cede5af987e698aa43a570c44e692ba364e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def format (formatter : Formatter) (stx : Syntax) : CoreM Format := do
  trace[PrettyPrinter.format.input] "{Std.format stx}"
  let options ← getOptions
  let table := Parser.getTokenTable (← getEnv)
  catchInternalId backtrackExceptionId
    (do
      let (_, st) ← (concat formatter { table, options }).run { stxTrav := .fromSyntax stx }
      let mut f := st.stack[0]!
      if pp.oneline.get options then
        f := OneLine.pretty f (Std.Format.format.width.get options)
      return .fill f)
    (fun _ => throwError "format: uncaught backtrack exception")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant15c989dbfc70442d2351e0b4d87a5c5238026be94f9fed983fad72debc6ea119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Formatter/Variant15c989dbfc70442d2351e0b4d87a5c5238026be94f9fed983fad72debc6ea119.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2067634ee568e8e1480cece32b51eb197d04468c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
