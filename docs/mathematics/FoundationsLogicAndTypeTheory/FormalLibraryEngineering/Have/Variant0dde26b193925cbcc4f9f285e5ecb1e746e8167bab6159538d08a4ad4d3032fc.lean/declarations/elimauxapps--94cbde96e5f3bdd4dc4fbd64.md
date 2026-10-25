# elimAuxApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a2aaab46d4e6a23a2240f113cfa7998aa8bda36da49e59c2995a1c240711a28",
  "kind": "def",
  "lexical_name": "elimAuxApps",
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
  "slug": "elimauxapps--94cbde96e5f3bdd4dc4fbd64",
  "source": {
    "blob": "0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94cbde96e5f3bdd4dc4fbd64bbeff99ce2654c3e1594c6a5f55e5dd94c68aa86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a2aaab46d4e6a23a2240f113cfa7998aa8bda36da49e59c2995a1c240711a28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elimAuxApps (e : Expr) (xs : Array Expr) (varDeps : Array (Array Nat)) : SymM Expr := do
  let n := xs.size
  replaceS e fun e offset => do
    if offset >= e.looseBVarRange then
      return some e
    match e.getAppFn with
    | .bvar idx =>
      if _h : idx >= offset then
        if _h : idx < offset + n then
          let i := n - (idx - offset) - 1
          let expectedNumArgs := varDeps[i]!.size
          let numArgs := e.getAppNumArgs
          if numArgs > expectedNumArgs then
            return none -- Over-applied
          else
            assert! numArgs == expectedNumArgs
            return xs[i]
        else
          mkBVarS (idx - n)
      else
        return some e
    | _ => return none

/--
Convert a simplified beta-application back to `have` form.

**Input**: `(fun x₁ ... xₙ' => b') v₁ ... vₙ` with dependency info

**Output**: `have x₁ := w₁; ...; have xₙ := wₙ; b`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
