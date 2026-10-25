# parseIccProp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:415a33aa03eef710f28a8e09d48e284658f7b0916d79f1b9b00a736a27a068b0",
  "kind": "def",
  "lexical_name": "parseIccProp?",
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
  "slug": "parseiccprop--18a954c8e188841dd1df1eee",
  "source": {
    "blob": "b8c3b6297aa59c2899d86a9994a7e02a695475b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18a954c8e188841dd1df1eee576624c14bbac544ba6fa4b7fc6afa5745c1c5cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:415a33aa03eef710f28a8e09d48e284658f7b0916d79f1b9b00a736a27a068b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseIccProp? (p : Lean.Expr) : Option (Lean.Expr × Lean.Expr × Lean.Expr) := do
  -- Membership form: Membership.mem x (Set.Icc lo hi)
  let fn := p.getAppFn
  let args := p.getAppArgs
  if fn.isConstOf ``Membership.mem && args.size >= 2 then
    let x := args[args.size - 2]!
    let s := args[args.size - 1]!
    if let some (lo, hi) := parseIccSet? s then
      return (x, lo, hi)
  -- Application form: Set.Icc lo hi x
  let fn2 := p.getAppFn
  let args2 := p.getAppArgs
  if fn2.isConstOf ``Set.Icc && args2.size >= 3 then
    let lo := args2[args2.size - 3]!
    let hi := args2[args2.size - 2]!
    let x := args2[args2.size - 1]!
    return (x, lo, hi)
  none

/-- Try to solve a fresh goal by running a tactic; returns a proof term on success. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant571d5b97f7f5b0b45fc4a1f52c8546f8e0ccd1ce138865dad97c26908af1cde2.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c3b6297aa59c2899d86a9994a7e02a695475b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
