# mkEqRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:004ed4b0e9d472b25029146765e00a19e1d231369e084e06d9c359f64b022ba7",
  "kind": "def",
  "lexical_name": "mkEqRec",
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
  "slug": "mkeqrec--1addfd995d0864dc5e648623",
  "source": {
    "blob": "c6230e3956942cea7534794f697db8f6fc4d0a91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 447,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1addfd995d0864dc5e6486233700e18a9236a5dbffcdf9854fcd70d12cc40f75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:004ed4b0e9d472b25029146765e00a19e1d231369e084e06d9c359f64b022ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqRec (motive h1 h2 : Expr) : MetaM Expr := do
  if h2.isAppOf ``Eq.refl then
    return h1
  else
    let h2Type ← infer h2
    match h2Type.eq? with
    | none => throwAppBuilderException ``Eq.rec ("equality proof expected" ++ indentExpr h2)
    | some (α, a, b) =>
      let u2 ← getLevel α
      let motiveType ← infer motive
      match motiveType with
      | Expr.forallE _ _ (Expr.forallE _ _ (Expr.sort u1) _) _ =>
        return mkAppN (mkConst ``Eq.rec [u1, u2]) #[α, a, motive, h1, b, h2]
      | _ =>
        throwAppBuilderException ``Eq.rec ("invalid motive" ++ indentExpr motive)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6230e3956942cea7534794f697db8f6fc4d0a91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
