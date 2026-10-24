# _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Poly.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e72cc1bdbbf0cf6e32517e08f4f18fcaa75db5e73a09229653c512b7a9992b67",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Poly.denoteExpr",
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
  "slug": "root-grwtsk-algebra-denotenum-variantd218afa9679fa4d294ab464e3c10da69126--a3755a1519526290da0bd5e7",
  "source": {
    "blob": "295e8866aaa002d0793ca60dfc4fd6ce1667833d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3755a1519526290da0bd5e7a505864489e1a82f082c67369b9f20858958a3c5",
  "verification": {
    "reference": "docs/verification/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e72cc1bdbbf0cf6e32517e08f4f18fcaa75db5e73a09229653c512b7a9992b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.DenoteNum.Variantd218afa9679fa4d294ab464e3c10da691268cf5bff38f9ac24945c2c7244bd28.Lean.Grind.CommRing.Poly.denoteExpr (p : Poly) : M Expr := do
  match p with
  | .num k => denoteNum k
  | .add k m p => go p (← denoteTerm k m)
where
  denoteTerm (k : Int) (m : Mon) : M Expr := do
    if k == 1 then
      m.denoteExpr
    else
      return mkApp2 (← getMulFn) (← denoteNum k) (← m.denoteExpr)

  go (p : Poly) (acc : Expr) : M Expr := do
    match p with
    | .num 0 => return acc
    | .num k => return mkApp2 (← getAddFn) acc (← denoteNum k)
    | .add k m p => go p (mkApp2 (← getAddFn) acc (← denoteTerm k m))

@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DenoteExpr/Variant2352028c541679fb46b3066919f3f1d0fe0391e7899e579c7b3d20a57d462bad.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `295e8866aaa002d0793ca60dfc4fd6ce1667833d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
