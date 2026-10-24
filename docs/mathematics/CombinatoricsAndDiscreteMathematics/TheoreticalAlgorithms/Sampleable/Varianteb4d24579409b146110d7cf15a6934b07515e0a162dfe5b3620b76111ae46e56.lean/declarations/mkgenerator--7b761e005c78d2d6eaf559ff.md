# mkGenerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e6483752817fccd89cd7591e00226513200881e75c841187663472e3d04c9d4",
  "kind": "def",
  "lexical_name": "mkGenerator",
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
  "slug": "mkgenerator--7b761e005c78d2d6eaf559ff",
  "source": {
    "blob": "b39cd870e1eb3e56a5da79ebc5f319f66a5bbf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b761e005c78d2d6eaf559ff402b13d18ee935ce828f892c27c03d288ca1d1cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e6483752817fccd89cd7591e00226513200881e75c841187663472e3d04c9d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private meta def mkGenerator (e : Expr) : MetaM (Level × Expr × Expr × Expr) := do
  let exprTyp ← inferType e
  let .sort u ← whnf (← inferType exprTyp) | throwError m!"{exprTyp} is not a type"
  let .succ u := u | throwError m!"{exprTyp} is not a type with computational content"
  match_expr exprTyp with
  | Gen α =>
    let reprInst ← synthInstance (mkApp (mkConst ``Repr [u]) α)
    return ⟨u, α, reprInst, e⟩
  | _ =>
    let v ← mkFreshLevelMVar
    let sampleableExtInst ← synthInstance (mkApp (mkConst ``SampleableExt [u, v]) e)
    let v ← instantiateLevelMVars v
    let reprInst := mkApp2 (mkConst ``SampleableExt.proxyRepr [u, v]) e sampleableExtInst
    let arb := mkApp2 (mkConst ``SampleableExt.sample [u, v]) e sampleableExtInst
    let gen := mkApp2 (mkConst ``Arbitrary.arbitrary [v]) e arb
    let typ := mkApp2 (mkConst ``SampleableExt.proxy [u, v]) e sampleableExtInst
    return ⟨v, typ, reprInst, gen⟩

/--
`#sample type`, where `type` has an instance of `SampleableExt`, prints ten random
values of type `type` using an increasing size parameter.

```lean
#sample Nat
-- prints
-- 0
-- 0
-- 2
-- 24
-- 64
-- 76
-- 5
-- 132
-- 8
-- 449
-- or some other sequence of numbers

#sample List Int
-- prints
-- []
-- [1, 1]
-- [-7, 9, -6]
-- [36]
-- [-500, 105, 260]
-- [-290]
-- [17, 156]
-- [-2364, -7599, 661, -2411, -3576, 5517, -3823, -968]
-- [-643]
-- [11892, 16329, -15095, -15461]
-- or whatever
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Varianteb4d24579409b146110d7cf15a6934b07515e0a162dfe5b3620b76111ae46e56.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39cd870e1eb3e56a5da79ebc5f319f66a5bbf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
