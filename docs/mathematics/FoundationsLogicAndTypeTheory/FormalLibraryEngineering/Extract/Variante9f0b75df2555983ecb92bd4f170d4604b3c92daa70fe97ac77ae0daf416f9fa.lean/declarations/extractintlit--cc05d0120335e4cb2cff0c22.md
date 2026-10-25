# extractIntLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c801b0c86b23d90cbe6466b05ceed208295017ae2d25d853ad7a6f1c90bf096a",
  "kind": "def",
  "lexical_name": "extractIntLit",
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
  "slug": "extractintlit--cc05d0120335e4cb2cff0c22",
  "source": {
    "blob": "297bb43ae537c31f9331955612d07ec48a3f3a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc05d0120335e4cb2cff0c223134671da9315b0f758e1ad0f547540369dedb90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c801b0c86b23d90cbe6466b05ceed208295017ae2d25d853ad7a6f1c90bf096a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def extractIntLit (e : Lean.Expr) : MetaM (Option ℤ) := do
  let e ← whnf e
  let fn := e.getAppFn
  let args := e.getAppArgs
  -- Int.ofNat n
  if fn.isConstOf ``Int.ofNat then
    if args.size > 0 then
      if let some n ← extractNatLit args[0]! then
        return some (n : ℤ)
    return none
  -- Int.negSucc n (represents -(n+1))
  else if fn.isConstOf ``Int.negSucc then
    if args.size > 0 then
      if let some n ← extractNatLit args[0]! then
        return some (-(n + 1 : ℤ))
    return none
  else return none

/-- Extract a rational from a Rat expression -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variante9f0b75df2555983ecb92bd4f170d4604b3c92daa70fe97ac77ae0daf416f9fa.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `297bb43ae537c31f9331955612d07ec48a3f3a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
