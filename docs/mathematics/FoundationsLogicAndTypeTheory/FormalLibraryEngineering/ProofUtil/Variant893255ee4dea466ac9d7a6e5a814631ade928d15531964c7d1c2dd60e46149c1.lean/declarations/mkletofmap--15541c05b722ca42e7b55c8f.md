# mkLetOfMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:043017f7fc4005299006352844d625d48098a25812bf091233f1cb415ed3740e",
  "kind": "def",
  "lexical_name": "mkLetOfMap",
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
  "slug": "mkletofmap--15541c05b722ca42e7b55c8f",
  "source": {
    "blob": "de37e05077f9954250ecef0882945d6db85ae275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofUtil/Variant893255ee4dea466ac9d7a6e5a814631ade928d15531964c7d1c2dd60e46149c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15541c05b722ca42e7b55c8fbe32f5094f8eb43350956efaa6448dc7258f8b78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofUtil/Variant893255ee4dea466ac9d7a6e5a814631ade928d15531964c7d1c2dd60e46149c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:043017f7fc4005299006352844d625d48098a25812bf091233f1cb415ed3740e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLetOfMap {_ : Hashable α} {_ : BEq α} (m : Std.HashMap α Expr) (e : Expr)
    (varPrefix : Name) (varType : Expr) (toExpr : α → Expr) : Expr := Id.run do
  if m.isEmpty then
    return e
  else
    let as := m.toArray
    let mut e := e.abstract <| as.map (·.2)
    let mut i := as.size
    for (p, _) in as.reverse do
      e := mkLet (varPrefix.appendIndexAfter i) varType (toExpr p) e
      i := i - 1
    return e

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofUtil/Variant893255ee4dea466ac9d7a6e5a814631ade928d15531964c7d1c2dd60e46149c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofUtil/Variant893255ee4dea466ac9d7a6e5a814631ade928d15531964c7d1c2dd60e46149c1.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de37e05077f9954250ecef0882945d6db85ae275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
