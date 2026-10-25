# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ba5f01c5b7193bcdfc6ccf2f5fa79b17aa42a7077e8702c6a9bb5127782a10f",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--42b62a8ef4242fc9acfb1b54",
  "source": {
    "blob": "574116f31a7775a19c02f63c8c871f61c613825c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectLooseBVars/Variant21c2cfd31a367f7f85777e1815ee0ff473a7481b0352b272e25c10a0b6238286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42b62a8ef4242fc9acfb1b5472cdd73dfd9cd705116905cb16a273929e222340",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectLooseBVars/Variant21c2cfd31a367f7f85777e1815ee0ff473a7481b0352b272e25c10a0b6238286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ba5f01c5b7193bcdfc6ccf2f5fa79b17aa42a7077e8702c6a9bb5127782a10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def main (e : Expr) (offset : Nat) : M Unit := do
  if offset < e.looseBVarRange then
    unless (← get).visited.contains (offset, e) do
      modify fun s => { s with visited := s.visited.insert (offset, e) }
      match e with
      | .bvar idx =>
        -- `idx ≥ offset` is true if `looseBVarRange` has not overflowed. It currently has the range [0,2^20).
        modify fun s => { s with bvars := s.bvars.insert (idx - offset) }
      | .fvar .. | .mvar .. | .sort .. | .const .. | .lit .. => pure ()
      | .app f a => main f offset; main a offset
      | .lam _ t b _ | .forallE _ t b _ => main t offset; main b (offset + 1)
      | .letE _ t v b _ => main t offset; main v offset; main b (offset + 1)
      | .mdata _ e' => main e' offset
      | .proj _ _ e' => main e' offset

end CollectLooseBVars

/--
Collects the loose bound variables in `e` with indices at least `offset`.
Returns a set of indices relative to `offset`.

Specification: `i ∈ e.collectLooseBVars offset ↔ e.hasLooseBVar (i + offset)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectLooseBVars/Variant21c2cfd31a367f7f85777e1815ee0ff473a7481b0352b272e25c10a0b6238286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectLooseBVars/Variant21c2cfd31a367f7f85777e1815ee0ff473a7481b0352b272e25c10a0b6238286.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `574116f31a7775a19c02f63c8c871f61c613825c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
