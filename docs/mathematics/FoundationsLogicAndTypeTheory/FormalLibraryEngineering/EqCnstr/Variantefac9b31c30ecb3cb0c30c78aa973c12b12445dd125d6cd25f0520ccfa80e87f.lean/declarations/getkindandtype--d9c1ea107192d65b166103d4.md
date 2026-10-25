# getKindAndType?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db310d326d80323a7cb96a78069d3f06278dc41a579ac64c0c89f8a07670741b",
  "kind": "def",
  "lexical_name": "getKindAndType?",
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
  "slug": "getkindandtype--d9c1ea107192d65b166103d4",
  "source": {
    "blob": "2d0e24c220358ae013b8c06545e8598cb06de521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9c1ea107192d65b166103d46258d5d10abdeb77a2d12f8f97ac5cacc42a91f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db310d326d80323a7cb96a78069d3f06278dc41a579ac64c0c89f8a07670741b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getKindAndType? (e : Expr) : GrindM (Option (SupportedTermKind × Expr)) :=
  match_expr e with
  | HAdd.hAdd α _ _ _ _ _ => return some (.add, α)
  | HSub.hSub α _ _ _ _ _ => return some (.sub, α)
  | HMul.hMul α _ _ _ _ _ => return some (.mul, α)
  | HDiv.hDiv α _ _ _ _ _ => return some (.div, α)
  | HMod.hMod α _ _ _ _ _ => return some (.mod, α)
  | HPow.hPow α _ _ _ _ _ => return some (.pow, α)
  | OfNat.ofNat α _ _     => return some (.num, α)
  | Neg.neg α _ a =>
    let_expr OfNat.ofNat _ _ _ := a | return some (.neg, α)
    return some (.num, α)
  | Int.natAbs _ => return some (.natAbs, Nat.mkType)
  | Int.toNat _ => return some (.toNat, Nat.mkType)
  | NatCast.natCast α _ _ => return some (.natCast, α)
  | Fin.val _ _ => return some (.finVal, Nat.mkType)
  | Grind.ToInt.toInt _ _ _ _ => return some (.toInt, Int.mkType)
  | Fin.mk n _ _ => return some (.finMk, ← shareCommon (mkApp (mkConst ``Fin) n))
  | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0e24c220358ae013b8c06545e8598cb06de521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
