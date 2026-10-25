# checkOutParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f0b78bd58765037e18b410c47d357b8db1e688976697eab5e4eddf43f0f0e0",
  "kind": "def",
  "lexical_name": "checkOutParam",
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
  "slug": "checkoutparam--9009af4b8504d9e295bbbb4d",
  "source": {
    "blob": "ea80920437cfbe3e9eaa02267c39b63f998dee24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantd3f8653c5a04a71814ccba0d02f9c4def8cafde04e7886251611b628f9021b32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9009af4b8504d9e295bbbb4d504744ad8989ae507e5741fd167ddbc10672f72e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantd3f8653c5a04a71814ccba0d02f9c4def8cafde04e7886251611b628f9021b32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f0b78bd58765037e18b410c47d357b8db1e688976697eab5e4eddf43f0f0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def checkOutParam (i : Nat) (outParamFVarIds : Array FVarId) (outParams : Array Nat) (type : Expr) : Except MessageData (Array Nat) :=
  match type with
  | .forallE _ d b bi =>
    let addOutParam (_ : Unit) :=
      let fvarId := { name := Name.mkNum `_fvar outParamFVarIds.size }
      let fvar      := mkFVar fvarId
      let b         := b.instantiate1 fvar
      checkOutParam (i+1) (outParamFVarIds.push fvarId) (outParams.push i) b
    if d.isOutParam then
      addOutParam ()
    else if d.hasAnyFVar fun fvarId => outParamFVarIds.contains fvarId then
      if bi.isInstImplicit then
        /- See issue #1852 for a motivation for `bi.isInstImplicit` -/
        addOutParam ()
      else
        Except.error m!"invalid class, parameter #{i+1} depends on `outParam`, but it is not an `outParam`"
    else
      checkOutParam (i+1) outParamFVarIds outParams b
  | _ => return outParams

/--
Compute positions of universe level parameters that only appear in output parameter types.

During type class resolution, the cache key for a query like
`HAppend.{0, 0, ?u} (BitVec 8) (BitVec 8) ?m` should be independent of the specific
metavariable IDs in output parameter positions. To achieve this, output parameter arguments
are erased from the cache key. However, universe levels that only appear in output parameter
types (e.g., `?u` corresponding to the result type's universe) must also be erased to avoid
cache misses when the same query is issued with different universe metavariable IDs.

This function identifies which universe level parameter positions are "output-only" by
collecting all level param names that appear in non-output parameter domains, then returning
the positions of any level params not in that set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantd3f8653c5a04a71814ccba0d02f9c4def8cafde04e7886251611b628f9021b32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantd3f8653c5a04a71814ccba0d02f9c4def8cafde04e7886251611b628f9021b32.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea80920437cfbe3e9eaa02267c39b63f998dee24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
