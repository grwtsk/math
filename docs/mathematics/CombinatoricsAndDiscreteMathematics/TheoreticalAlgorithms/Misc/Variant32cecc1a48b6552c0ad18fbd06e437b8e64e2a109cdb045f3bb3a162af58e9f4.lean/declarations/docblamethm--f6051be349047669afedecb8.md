# docBlameThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:951120eb004e0abf0d9dc23bf0a68a4c01d098c266f9fe90488e6df831603333",
  "kind": "def",
  "lexical_name": "docBlameThm",
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
  "slug": "docblamethm--f6051be349047669afedecb8",
  "source": {
    "blob": "e8e6e6bd7d7704a537c1e2e4c66bbdc48e3b1e01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6051be349047669afedecb8a3f8679960cce7fc5f734523e1116cb2176b9768",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:951120eb004e0abf0d9dc23bf0a68a4c01d098c266f9fe90488e6df831603333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter disabled] def docBlameThm : Linter where
  noErrorsFound := "No theorems are missing documentation."
  errorsFound := "THEOREMS ARE MISSING DOCUMENTATION STRINGS:"
  test declName := do
    if ← isAutoDecl declName then
      return none
    let kind ← match ← getConstInfo declName with
      | .thmInfo .. => pure "theorem"
      | .defnInfo info =>
          -- leanprover/lean4#2575:
          -- projections are generated as `def`s even when they should be `theorem`s
          if ← isProjectionFn declName <&&> isProp info.type then
            pure "Prop projection"
          else
            return none
      | _ => return none
    let (none) ← findDocString? (← getEnv) declName | return none
    return m!"{kind} missing documentation string"

/-- A linter for checking whether the correct declaration constructor (definition or theorem)
has been used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Misc/Variant32cecc1a48b6552c0ad18fbd06e437b8e64e2a109cdb045f3bb3a162af58e9f4.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e6e6bd7d7704a537c1e2e4c66bbdc48e3b1e01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
