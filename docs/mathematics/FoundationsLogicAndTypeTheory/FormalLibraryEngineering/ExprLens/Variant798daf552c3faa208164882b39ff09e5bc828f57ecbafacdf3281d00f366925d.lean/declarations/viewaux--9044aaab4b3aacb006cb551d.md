# viewAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a05881688a21fcc81871375d0777ef79eec68918514ca90a77267e43f52afa80",
  "kind": "def",
  "lexical_name": "viewAux",
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
  "slug": "viewaux--9044aaab4b3aacb006cb551d",
  "source": {
    "blob": "8be805f81ffe5f4c5fdce4e5fc72d8d55f42afc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant798daf552c3faa208164882b39ff09e5bc828f57ecbafacdf3281d00f366925d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9044aaab4b3aacb006cb551d4ec812ac454df08fd04931b389f40b7d99014b9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant798daf552c3faa208164882b39ff09e5bc828f57ecbafacdf3281d00f366925d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a05881688a21fcc81871375d0777ef79eec68918514ca90a77267e43f52afa80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def viewAux (k : Array Expr → Expr → M α) (fvars : Array Expr) : List Nat → Expr → M α
  | [],         e => k fvars <| e.instantiateRev fvars
  | 3::tail,    e => do
    let y ← inferType <| e.instantiateRev fvars
    viewAux (fun otherFvars => k (fvars ++ otherFvars)) #[] tail y
  | head::tail, e => viewCoordAux (fun fvars => viewAux k fvars tail) fvars head e

/-- `view visit p e` runs `visit fvars s` where `s : Expr` is the subexpression of `e` at `p`.
and `fvars` are the free variables for the binders that `s` is under.
`s` is already instantiated with respect to these.
The role of the `visit` function is analogous to the `k` function in `Lean.Meta.forallTelescope`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant798daf552c3faa208164882b39ff09e5bc828f57ecbafacdf3281d00f366925d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant798daf552c3faa208164882b39ff09e5bc828f57ecbafacdf3281d00f366925d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be805f81ffe5f4c5fdce4e5fc72d8d55f42afc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
