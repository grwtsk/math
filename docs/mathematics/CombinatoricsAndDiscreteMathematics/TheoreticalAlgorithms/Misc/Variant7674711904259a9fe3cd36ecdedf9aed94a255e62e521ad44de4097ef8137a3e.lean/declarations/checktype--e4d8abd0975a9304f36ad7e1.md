# checkType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abd9ac94c5bf7efe63e536649769d7ef07bdc0a8acec202eb9ff8b4a1a61cb6a",
  "kind": "def",
  "lexical_name": "checkType",
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
  "slug": "checktype--e4d8abd0975a9304f36ad7e1",
  "source": {
    "blob": "a84cfcb8e97c6f01740e7b182c3dca355da637d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4d8abd0975a9304f36ad7e105e79afac5f9c96e7c59705916baf0580e014dc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abd9ac94c5bf7efe63e536649769d7ef07bdc0a8acec202eb9ff8b4a1a61cb6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter] def checkType : Linter where
  noErrorsFound :=
    "The statements of all declarations type-check with default reducibility settings."
  errorsFound := "THE STATEMENTS OF THE FOLLOWING DECLARATIONS DO NOT TYPE-CHECK."
  isFast := true
  test declName := do
    if ← isAutoDecl declName then return none
    if ← isTypeCorrect (← getConstInfo declName).type then return none
    return m!"the statement doesn't type check."

/--
`univParamsGrouped e` computes for each `level` `u` of `e` the parameters that occur in `u`,
and returns the corresponding set of lists of parameters.
In pseudo-mathematical form, this returns `{{p : parameter | p ∈ u} | (u : level) ∈ e}`
FIXME: We use `Array Name` instead of `HashSet Name`, since `HashSet` does not have an equality
instance. It will ignore `nm₀.proof_i` declarations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant7674711904259a9fe3cd36ecdedf9aed94a255e62e521ad44de4097ef8137a3e.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84cfcb8e97c6f01740e7b182c3dca355da637d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
