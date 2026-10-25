# findIfToSplit?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80280d246b28f5efbf2ddb3d47f68293138326cfca83b7eaff136f64f32144ea",
  "kind": "def",
  "lexical_name": "findIfToSplit?",
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
  "slug": "findiftosplit--0baf675ea249530a3347a43f",
  "source": {
    "blob": "2c7cfa824de083dacc2a2d73157b51d23aa33eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0baf675ea249530a3347a43fd90bd281f6706c640ce345d4e2a0d060726b2df2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80280d246b28f5efbf2ddb3d47f68293138326cfca83b7eaff136f64f32144ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def findIfToSplit? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  if let some iteApp ← findSplit? e .ite then
    let cond := iteApp.getArg! 1 5
    let dec := iteApp.getArg! 2 5
    return (cond, dec)
  else
    return none

register_builtin_option backward.split : Bool := {
  defValue := true
  descr    := "use the old semantics for the `split` tactic where nested `if-then-else` terms could be simplified too"
}

namespace SplitIf
/--
The `Simp.Context` that used to be used with `simpIf` methods. It contains all congruence theorems, but
just the rewriting rules for reducing `if` expressions.
This function is only used when the old `split` tactic behavior is enabled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7cfa824de083dacc2a2d73157b51d23aa33eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
