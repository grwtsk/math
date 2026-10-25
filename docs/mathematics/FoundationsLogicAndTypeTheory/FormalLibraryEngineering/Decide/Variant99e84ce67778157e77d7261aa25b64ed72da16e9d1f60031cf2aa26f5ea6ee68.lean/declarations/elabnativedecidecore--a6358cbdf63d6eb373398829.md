# elabNativeDecideCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8142f51de9bccf63e1d24b9be2960252b41322d0c7bdff88948f153d9252166f",
  "kind": "def",
  "lexical_name": "elabNativeDecideCore",
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
  "slug": "elabnativedecidecore--a6358cbdf63d6eb373398829",
  "source": {
    "blob": "929dd0a01dc12e7df21860ef791f6a2cf2a038c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6358cbdf63d6eb373398829aca09351f52af4f4aba7b63f05c7efcb15364d27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8142f51de9bccf63e1d24b9be2960252b41322d0c7bdff88948f153d9252166f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabNativeDecideCore (tacticName : Name) (expectedType : Expr) : TacticM Expr := do
  let d ← mkDecide expectedType
  match (← nativeEqTrue tacticName d (axiomDeclRange? := (← getRef))) with
  | .notTrue =>
    throwError m!"\
      Tactic `{tacticName}` evaluated that the proposition\
      {indentExpr expectedType}\n\
      is false"
  | .success prf =>
    -- get instance from `d`
    let s := d.appArg!
    return mkApp3 (mkConst ``of_decide_eq_true) expectedType s prf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `929dd0a01dc12e7df21860ef791f6a2cf2a038c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
