# Lean.MVarId.extractLets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4be6ab90bc9acf1a5dc24fe7622d51b5d7adeb8846b0a428e8aa9f76ba93c574",
  "kind": "def",
  "lexical_name": "Lean.MVarId.extractLets",
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
  "slug": "lean-mvarid-extractlets--f0a7aeee6664aad6cd6366d7",
  "source": {
    "blob": "416ef8d200992bd384bdede596becc9654efd992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0a7aeee6664aad6cd6366d7f7dcf4a1cbfe2971c37d558cf07168991e91a0bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4be6ab90bc9acf1a5dc24fe7622d51b5d7adeb8846b0a428e8aa9f76ba93c574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.extractLets (mvarId : MVarId) (names : Array Name) :
    MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let ty := (← Lean.instantiateMVars (← mvarId.getType)).cleanupAnnotations
    if ty.letDepth < names.size then
      throwTacticEx `extractLet mvarId "insufficient number of `let` expressions"
    mvarId.introN names.size names.toList

namespace Mathlib

/-- The `extract_lets at h` tactic takes a local hypothesis of the form `h : let x := v; b`
and introduces a new local definition `x := v` while changing `h` to be `h : b`.  It can be thought
of as being a `cases` tactic for `let` expressions. It can also be thought of as being like
`intros at h` for `let` expressions.

For example, if `h : let x := 1; x = x`, then `extract_lets x at h` introduces `x : Nat := 1` and
changes `h` to `h : x = x`.

Just like `intros`, the `extract_lets` tactic either takes a list of names, in which case
that specifies the number of `let` bindings that must be extracted, or it takes no names, in which
case all the `let` bindings are extracted.

The tactic `extract_let at ⊢` is a weaker form of `intros` that only introduces obvious `let`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416ef8d200992bd384bdede596becc9654efd992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
