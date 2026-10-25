# unfoldProjs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b17a858cc4f4ac212136ae65c141f6eb9cc2bc97fefed0580a9fc8b0c6a2b56",
  "kind": "def",
  "lexical_name": "unfoldProjs",
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
  "slug": "unfoldprojs--99ef6b3ef579f817a2cf9c32",
  "source": {
    "blob": "6b99ff21025b008cf778c9bac2f0ccf038d94cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99ef6b3ef579f817a2cf9c320eb49f985974243c89c1a9c8d7503449b0c66a0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b17a858cc4f4ac212136ae65c141f6eb9cc2bc97fefed0580a9fc8b0c6a2b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldProjs (e : Expr) : MetaM Expr := do
  transform e fun node => do
    if let some node' ← unfoldProjInst? node then
      return .visit (← instantiateMVars node')
    else
      return .continue

/--
`unfold_projs at loc` unfolds projections of class instances at the given location.
This also exists as a `conv`-mode tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b99ff21025b008cf778c9bac2f0ccf038d94cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
