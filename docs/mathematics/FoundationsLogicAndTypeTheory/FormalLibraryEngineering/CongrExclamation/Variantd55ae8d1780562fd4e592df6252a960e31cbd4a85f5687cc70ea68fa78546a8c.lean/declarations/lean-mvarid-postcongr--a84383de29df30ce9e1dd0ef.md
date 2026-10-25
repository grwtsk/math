# Lean.MVarId.postCongr!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2999dcf4b8cd1f9cad0d2b258fbce849e50bd1c8fc509a8706a096955d8ad7eb",
  "kind": "def",
  "lexical_name": "Lean.MVarId.postCongr!",
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
  "slug": "lean-mvarid-postcongr--a84383de29df30ce9e1dd0ef",
  "source": {
    "blob": "c39698c53abaa2d5431201f627f6fc34b2385acb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 617,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a84383de29df30ce9e1dd0efef1ae9b93fcfd20352049df02e8d207668c5bfe5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2999dcf4b8cd1f9cad0d2b258fbce849e50bd1c8fc509a8706a096955d8ad7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.postCongr! (config : Congr!.Config) (mvarId : MVarId) : MetaM (Option MVarId) := do
  let some mvarId ← mvarId.preCongr! config.closePost | return none
  -- Convert `p = q` to `p ↔ q`, which is likely the more useful form:
  let mvarId ← mvarId.propext
  if config.closePost then
    -- `preCongr` sees `p = q`, but now we've put it back into `p ↔ q` form.
    if ← mvarId.assumptionCore then return none
  if config.etaExpand then
    if let some (_, lhs, rhs) := (← withReducible mvarId.getType').eq? then
      let lhs' ← Meta.etaExpand lhs
      let rhs' ← Meta.etaExpand rhs
      return ← mvarId.change (← mkEq lhs' rhs')
  return mvarId

/-- A more insistent version of `Lean.MVarId.congrN`.
See the documentation on the `congr!` syntax.

The `depth?` argument controls the depth of the recursion. If `none`, then it uses a reasonably
large bound that is linear in the expression depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39698c53abaa2d5431201f627f6fc34b2385acb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
