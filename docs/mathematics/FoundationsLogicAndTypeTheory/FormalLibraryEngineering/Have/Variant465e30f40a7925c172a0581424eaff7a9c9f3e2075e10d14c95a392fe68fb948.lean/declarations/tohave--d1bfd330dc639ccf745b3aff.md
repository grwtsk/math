# toHave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:483a3b8b20a12e4b725b7542e1f5c0e13d45a72bc433511974dd0887378ff22f",
  "kind": "def",
  "lexical_name": "toHave",
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
  "slug": "tohave--d1bfd330dc639ccf745b3aff",
  "source": {
    "blob": "344ea4561f941db7a5665f5d63f54019b2cf59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1bfd330dc639ccf745b3aff3ba94e6571c2b0459cf281dbff9de36baafbacdf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:483a3b8b20a12e4b725b7542e1f5c0e13d45a72bc433511974dd0887378ff22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toHave (e : Expr) (varDeps : Array (Array Nat)) : SymM Expr :=
  e.withApp fun f args => do
  if _h : args.size ≠ varDeps.size then unreachable! else
  let rec go (f : Expr) (xs : Array Expr) (i : Nat) : SymM Expr := do
    if _h : i < args.size then
      let .lam n t b _ := f | unreachable!
      let varPos := varDeps[i]
      let ys := varPos.map fun i => xs[i]!
      let type := consumeForallN t varPos.size
      let val ← share <| args[i].betaRev ys
      withLetDecl (nondep := true) n type val fun x => do
      go b (xs.push (← share x)) (i+1)
    else
      let f ← elimAuxApps f xs varDeps
      let result ← mkLetFVars (generalizeNondepLet := false) (usedLetOnly := false) xs f
      share result
  go f #[] 0

/-- Result of extracting universe levels from a non-dependent function type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344ea4561f941db7a5665f5d63f54019b2cf59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
