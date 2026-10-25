# normOfNatArgs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d07b5ea567f5e07fcb6f500c311cd7f52619ae91bd171f2d48cda0c2e46e58a",
  "kind": "def",
  "lexical_name": "normOfNatArgs?",
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
  "slug": "normofnatargs--ca04e997489b5fecd498d66a",
  "source": {
    "blob": "033d3fcb0c54c6a54745b3d4b3b3b199900abb5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca04e997489b5fecd498d66aebd647526c2d92e2619c37617dc95f51d9cea128",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d07b5ea567f5e07fcb6f500c311cd7f52619ae91bd171f2d48cda0c2e46e58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def normOfNatArgs? (args : Array Expr) : MetaM (Option (Array Expr)) := do
  if h : args.size = 3 then
    let mut args : Vector Expr 3 := h ▸ args.toVector
    let mut modified := false
    if args[1].isAppOf ``OfNat.ofNat then
      -- If nested `OfNat.ofNat`, convert to raw nat literal
      let some val ← getNatValue? args[1] | pure ()
      args := args.set 1 (mkRawNatLit val)
      modified := true
    let inst := args[2]
    if (← Structural.isInstOfNatNat inst) && !args[0].isConstOf ``Nat then
      return some (args.set 0 Nat.mkType |>.toArray)
    else if (← Structural.isInstOfNatInt inst) && !args[0].isConstOf ``Int then
      return some (args.set 0 Int.mkType |>.toArray)
    else if modified then
      return some args.toArray
  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantd9a47e2fd94b135d2d1e5273bb6e796bb9a1dc0599302fb0c3a334779a839f42.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `033d3fcb0c54c6a54745b3d4b3b3b199900abb5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
