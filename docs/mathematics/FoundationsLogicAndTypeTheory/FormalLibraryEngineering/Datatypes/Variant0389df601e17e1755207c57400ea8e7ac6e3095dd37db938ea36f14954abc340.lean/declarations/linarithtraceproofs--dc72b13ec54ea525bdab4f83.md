# linarithTraceProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9c912c371466e776d3aacab6ac46ed0be8a5e626ad75f33c25c3cdcfa0a3912",
  "kind": "def",
  "lexical_name": "linarithTraceProofs",
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
  "slug": "linarithtraceproofs--dc72b13ec54ea525bdab4f83",
  "source": {
    "blob": "9beff35eebc0cff23c4eb0943a5c48aac3d6af74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc72b13ec54ea525bdab4f839c15b0e9c0cafd72f64460d79e56df97220b8101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9c912c371466e776d3aacab6ac46ed0be8a5e626ad75f33c25c3cdcfa0a3912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linarithTraceProofs {α} [ToMessageData α] (s : α) (l : List Expr) : MetaM Unit := do
  trace[linarith] "{s}"
  trace[linarith] (← l.mapM fun e => do instantiateMVars (← inferType e))

/-! ### Linear expressions -/

/--
A linear expression is a list of pairs of variable indices and coefficients,
representing the sum of the products of each coefficient with its corresponding variable.

Some functions on `Linexp` assume that `n : Nat` occurs at most once as the first element of a pair,
and that the list is sorted in decreasing order of the first argument.
This is not enforced by the type but the operations here preserve it.
-/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9beff35eebc0cff23c4eb0943a5c48aac3d6af74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
