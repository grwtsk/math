# ControlStack.mkReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3803b64239084dfa052f366f9e92ce55469e7643acc5e9d22243351951b2c42",
  "kind": "def",
  "lexical_name": "ControlStack.mkReturn",
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
  "slug": "controlstack-mkreturn--f9dd9034b5944cd0baee9480",
  "source": {
    "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9dd9034b5944cd0baee94806941c040ca20b1401a91611a549f8d19fc596653",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3803b64239084dfa052f366f9e92ce55469e7643acc5e9d22243351951b2c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.mkReturn (base : ControlStack) (r : Expr) : DoElabM Expr := do
  let mi := { (← read).monadInfo with m := (← base.m) }
  let instMonad ← mkInstMonad mi
  let ρ ← inferType r
  let δ ← mkFreshResultType `δ
  let mγ ← mkMonadApp (← read).doBlockResultType
  let mγ' := mkApp mi.m (mkApp2 (mkConst ``Except [mi.u, mi.v]) ρ δ)
  synthUsingDefEq "early return result type" mγ mγ'
  base.runInBase <| mkApp5 (mkConst ``EarlyReturnT.return [mi.u, mi.v]) ρ mi.m δ instMonad r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
