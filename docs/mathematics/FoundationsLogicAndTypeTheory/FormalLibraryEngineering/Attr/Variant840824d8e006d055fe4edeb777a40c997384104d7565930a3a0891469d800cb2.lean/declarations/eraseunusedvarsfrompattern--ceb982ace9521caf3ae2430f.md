# eraseUnusedVarsFromPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cff807a68c0c690a3269707d0c7c4db9f62f2c39097d309bdd6e6018b16a9326",
  "kind": "def",
  "lexical_name": "eraseUnusedVarsFromPattern",
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
  "slug": "eraseunusedvarsfrompattern--ceb982ace9521caf3ae2430f",
  "source": {
    "blob": "bc5529a4316302c1da1fdf459ebb5b254b0629d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceb982ace9521caf3ae2430ffd81b2826ba3f279af68dc11f892ef4a98ebfd70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cff807a68c0c690a3269707d0c7c4db9f62f2c39097d309bdd6e6018b16a9326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseUnusedVarsFromPattern (p : Sym.Pattern) : Sym.Pattern := Id.run do
  let n := p.varTypes.size
  -- Variable `j` (0 = outermost binder) is bound variable `#(ctx-1-j)` in a context of `ctx`
  -- binders. `used[j]` becomes `true` once we know variable `j` is reachable from the pattern.
  let mut used := Array.replicate n false
  for j in *...n do
    if p.pattern.hasLooseBVar (n - 1 - j) then
      used := used.set! j true
  -- A variable's type may reference earlier variables, so propagate top-down: when a kept variable
  -- is reached, mark every variable occurring in its type as kept too.
  for j in *...n do
    let i := n - 1 - j
    if used[i]! then
      for k in *...i do
        if p.varTypes[i]!.hasLooseBVar (i - 1 - k) then
          used := used.set! k true
  if used.all (· == true) then return p
  let kept := (Array.range n).filter (used[·]!)
  -- Rebuild the telescope via fvar placeholders to avoid manual de Bruijn arithmetic.
  let fvars := (Array.range n).map fun i => mkFVar ⟨.num `_sym_prune i⟩
  let keptFVars := kept.map (fvars[·]!)
  let newPattern := (p.pattern.instantiateRev fvars).abstract keptFVars
  let newVarTypes := kept.mapIdx fun k i =>
    (p.varTypes[i]!.instantiateRev (fvars.extract 0 i)).abstract (keptFVars.extract 0 k)
  -- `varInfos?`/`checkTypeMask?` are parallel to `varTypes`; their per-variable meaning does not
  -- depend on the de Bruijn numbering, so we simply keep the surviving entries.
  let newVarInfos? := p.varInfos?.bind fun infos =>
    let argsInfo := kept.map (infos.argsInfo[·]!)
    if argsInfo.any fun a => a.isProof || a.isInstance then some { argsInfo } else none
  let newCheckTypeMask? := p.checkTypeMask?.bind fun mask =>
    let newMask := kept.map (mask[·]!)
    if newMask.all (· == false) then none else some newMask
  return { p with
    varTypes := newVarTypes
    pattern := newPattern
    varInfos? := newVarInfos?
    checkTypeMask? := newCheckTypeMask? }

/-- The application-argument index of `declName`'s program parameter `x`, read from its signature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc5529a4316302c1da1fdf459ebb5b254b0629d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
