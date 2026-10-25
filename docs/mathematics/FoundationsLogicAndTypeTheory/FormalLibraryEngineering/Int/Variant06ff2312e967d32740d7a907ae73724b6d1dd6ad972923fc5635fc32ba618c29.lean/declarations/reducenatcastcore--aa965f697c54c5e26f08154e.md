# reduceNatCastCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa9e167cf702198ef9b7b49abb3f8cd972314a7c6462882944a9ef7d364840b",
  "kind": "def",
  "lexical_name": "reduceNatCastCore",
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
  "slug": "reducenatcastcore--aa965f697c54c5e26f08154e",
  "source": {
    "blob": "c93eb85c59effad4586d965ebcb9ab62417ffec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa965f697c54c5e26f08154ecef728b27c2f06eeeba8ba520f8218bdef46b43f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa9e167cf702198ef9b7b49abb3f8cd972314a7c6462882944a9ef7d364840b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reduceNatCastCore (inst : Expr) (a : Expr) : SimpM DStep := do
  let some a ← getNatValue? a | return .continue
  let_expr instNatCastInt ← inst | return .continue
  return .done <| toExpr (Int.ofNat a)

builtin_dsimproc [simp, seval] reduceNatCast ((NatCast.natCast _ : Int))  := fun e => do
  let_expr NatCast.natCast _ inst a ← e | return .continue
  reduceNatCastCore inst a

builtin_dsimproc [simp, seval] reduceNatCast' ((Nat.cast _ : Int))  := fun e => do
  let_expr Nat.cast _ inst a ← e | return .continue
  reduceNatCastCore inst a

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant06ff2312e967d32740d7a907ae73724b6d1dd6ad972923fc5635fc32ba618c29.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93eb85c59effad4586d965ebcb9ab62417ffec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
