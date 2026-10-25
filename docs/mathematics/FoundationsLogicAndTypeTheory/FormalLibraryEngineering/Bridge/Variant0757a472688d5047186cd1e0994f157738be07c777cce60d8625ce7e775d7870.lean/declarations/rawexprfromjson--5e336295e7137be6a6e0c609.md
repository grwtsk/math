# rawExprFromJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c6ed952de7db198404aa498591f0a8e14dc825fa56343c3f1ddbdfa05fa43a7",
  "kind": "def",
  "lexical_name": "rawExprFromJson",
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
  "slug": "rawexprfromjson--5e336295e7137be6a6e0c609",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e336295e7137be6a6e0c609a1a8cacfc0392c53d47f90c9026367577c49e770",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c6ed952de7db198404aa498591f0a8e14dc825fa56343c3f1ddbdfa05fa43a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rawExprFromJson (j : Json) : Except String LExpr := do
  let kind ← j.getObjValAs? String "kind"
  match kind with
  | "const" =>
    let q ← j.getObjValAs? RawRat "val"
    return Expr.const q.toRat
  | "var" =>
    let idx ← j.getObjValAs? Nat "idx"
    return Expr.var idx
  | "neg" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.neg e
  | "add" =>
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    return Expr.add e1 e2
  | "sub" =>
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    return Expr.add e1 (Expr.neg e2)  -- Desugar to add + neg
  | "mul" =>
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    return Expr.mul e1 e2
  | "div" =>
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    return Expr.div e1 e2
  | "sin" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.sin e
  | "cos" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.cos e
  | "exp" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.exp e
  | "log" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.log e
  | "pow" =>
    -- Integer power: pow(e, n) where n is a natural number
    let base ← rawExprFromJson (← j.getObjVal? "base")
    let exp ← j.getObjValAs? Nat "exp"
    return Expr.pow base exp
  | "sqrt" =>
    -- sqrt(x) = exp(log(x)/2) for positive x
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.exp (Expr.div (Expr.log e) (Expr.const 2))
  | "inv" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.inv e
  | "tan" =>
    -- tan(x) = sin(x) / cos(x)
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.div (Expr.sin e) (Expr.cos e)
  | "atan" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.atan e
  | "arsinh" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.arsinh e
  | "atanh" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.atanh e
  | "sinc" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.sinc e
  | "erf" =>
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.erf e
  | "abs" =>
    -- |x| = sqrt(x²) (derived definition from Expr.lean)
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.abs e
  | "sinh" =>
    -- Native sinh expression with proper interval bounds
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.sinh e
  | "cosh" =>
    -- Native cosh expression with cosh(x) ≥ 1 bounds
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.cosh e
  | "tanh" =>
    -- Native tanh expression with tight [-1, 1] bounds (no interval explosion!)
    let e ← rawExprFromJson (← j.getObjVal? "e")
    return Expr.tanh e
  | "min" =>
    -- min(a, b) = (a + b - |a - b|) / 2
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    let diff := Expr.add e1 (Expr.neg e2)
    let absDiff := Expr.abs diff
    return Expr.div (Expr.add (Expr.add e1 e2) (Expr.neg absDiff)) (Expr.const 2)
  | "max" =>
    -- max(a, b) = (a + b + |a - b|) / 2
    let e1 ← rawExprFromJson (← j.getObjVal? "e1")
    let e2 ← rawExprFromJson (← j.getObjVal? "e2")
    let diff := Expr.add e1 (Expr.neg e2)
    let absDiff := Expr.abs diff
    return Expr.div (Expr.add (Expr.add e1 e2) absDiff) (Expr.const 2)
  | other => throw s!"Unknown expression kind: {other}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
