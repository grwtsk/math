# mkGetLsbD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d328f49144e63bb35014b3beba4997f17a90ea8e2d8ff2a8afc2d9faee32b444",
  "kind": "def",
  "lexical_name": "mkGetLsbD",
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
  "slug": "mkgetlsbd--1a3cabb6e9d4f4b360c306f9",
  "source": {
    "blob": "cfa599264c42791bf0a5b4b1601744aa27aee2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a3cabb6e9d4f4b360c306f9ec90bdb896041412f5f69c759d3cf76e9212e345",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d328f49144e63bb35014b3beba4997f17a90ea8e2d8ff2a8afc2d9faee32b444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkGetLsbD (sub : ReifiedBVExpr) (subExpr : Expr) (idx : Nat) (origExpr : Expr) :
    M ReifiedBVPred := do
  let bvExpr : BVPred := .getLsbD sub.bvExpr idx
  let idxExpr := toExpr idx
  let expr := mkApp3 (mkConst ``BVPred.getLsbD) (toExpr sub.width) sub.expr idxExpr
  let proof := do
    -- This is safe as `getLsbD_congr` holds definitionally if the arguments are defeq.
    let some subProof ← sub.evalsAtAtoms | return none
    let subEval ← ReifiedBVExpr.mkEvalExpr sub.width sub.expr
    return mkApp5
      (mkConst ``Std.Tactic.BVDecide.Reflect.BitVec.getLsbD_congr)
      idxExpr
      (toExpr sub.width)
      subExpr
      subEval
      subProof
  return ⟨bvExpr, origExpr, proof, expr⟩

end ReifiedBVPred

end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa599264c42791bf0a5b4b1601744aa27aee2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
