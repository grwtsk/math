# _root_.Lean.Grind.Linarith.Poly.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffd173102479541b524fbd004b2074b8326ee9bb542481e42b38efed870061d6",
  "kind": "def",
  "lexical_name": "_root_.Lean.Grind.Linarith.Poly.denoteExpr",
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
  "slug": "root-lean-grind-linarith-poly-denoteexpr--554623c809ba13861b12ec29",
  "source": {
    "blob": "9bda144b931d1b8c154637daca12d1304db235b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 19,
    "path": "GRWTSK/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:554623c809ba13861b12ec29b01548df486f10939d3f5300b570cd93aca41b24",
  "verification": {
    "reference": "docs/verification/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffd173102479541b524fbd004b2074b8326ee9bb542481e42b38efed870061d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.Grind.Linarith.Poly.denoteExpr (p : Poly) : M Expr := do
  match p with
  | .nil => return (← getStruct).zero
  | .add k x p => go p (← denoteTerm k x)
where
  denoteTerm (k : Int) (x : Var) : M Expr := do
    if k == 1 then
      return (← getStruct).vars[x]!
    else
      return mkApp2 (← getStruct).zsmulFn (mkIntLit k) (← getStruct).vars[x]!

  go (p : Poly) (acc : Expr) : M Expr := do
    match p with
    | .nil => return acc
    | .add k m p => go p (mkApp2 (← getStruct).addFn acc (← denoteTerm k m))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bda144b931d1b8c154637daca12d1304db235b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
