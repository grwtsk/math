# IneqCnstrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e2ad1bb0f603ecc668d5412f470ecf5cbd142ffdd000ee389f8aa1709257dc8",
  "kind": "inductive",
  "lexical_name": "IneqCnstrProof",
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
  "slug": "ineqcnstrproof--f9e2740ec16360e14c255dab",
  "source": {
    "blob": "786d05b08e9616513d1ec0a22195b1469e213940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9e2740ec16360e14c255dabc65a07d85ab8b83ebde95d1f3beeb7b19b20001e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e2ad1bb0f603ecc668d5412f470ecf5cbd142ffdd000ee389f8aa1709257dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IneqCnstrProof where
  | core (e : Expr) (lhs rhs : LinExpr)
  | notCore (e : Expr) (lhs rhs : LinExpr)
  | ring (c : RingIneqCnstr) (lhs : LinExpr)
  | coreOfNat (e : Expr) (natStructId : Nat) (lhs rhs : LinExpr)
  | notCoreOfNat (e : Expr) (natStructId : Nat) (lhs rhs : LinExpr)
  | combine (c₁ : IneqCnstr) (c₂ : IneqCnstr)
  | norm (c₁ : IneqCnstr) (k : Nat)
  | dec (h : FVarId)
  | ofDiseqSplit (c₁ : DiseqCnstr) (decVar : FVarId) (h : UnsatProof) (decVars : Array FVarId)
  | oneGtZero
  | /-- `a ≤ b` from an equality `a = b` coming from the core. -/
    ofEq (a b : Expr) (la lb : LinExpr)
  | /-- `a ≤ b` from an equality `a = b` coming from the core. -/
    ofEqOfNat (a b : Expr) (natStructId : Nat) (la lb : LinExpr)
  | /-- `p ≤ 0` from a ring equality `p = 0`. -/
    ringEq (c : RingEqCnstr) (lhs : LinExpr)
  | subst (x : Var) (c₁ : EqCnstr) (c₂ : IneqCnstr)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `786d05b08e9616513d1ec0a22195b1469e213940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
