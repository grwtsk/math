# specializeDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ffd937b072f1e9da8d45abdccc85a731e0b40e5fb0e9b2c91e86903158c8d8d",
  "kind": "def",
  "lexical_name": "specializeDecl",
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
  "slug": "specializedecl--8534a68992f91224b4682bee",
  "source": {
    "blob": "6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8534a68992f91224b4682bee65d33988b423c8da2bdbea2b75dec19e85bf214b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ffd937b072f1e9da8d45abdccc85a731e0b40e5fb0e9b2c91e86903158c8d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specializeDecl (decl : Decl .pure) : SpecializeM (Decl .pure × Bool) := do
  trace[Compiler.specialize.step] m!"Working {decl.name}"
  if (← decl.isTemplateLike) then
    return (decl, false)
  else
    resetChanged
    let value ← withParams decl.params <| decl.value.mapCodeM visitCode
    let changed ← hasChanged
    let mut updated := { decl with value }
    if changed then
      updated ← updated.simp {}
    trace[Compiler.specialize.step] m!"Result {decl.name}: {← ppDecl updated}"
    return (updated, changed)

/--
Recompute specialization information for the current SCC.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
