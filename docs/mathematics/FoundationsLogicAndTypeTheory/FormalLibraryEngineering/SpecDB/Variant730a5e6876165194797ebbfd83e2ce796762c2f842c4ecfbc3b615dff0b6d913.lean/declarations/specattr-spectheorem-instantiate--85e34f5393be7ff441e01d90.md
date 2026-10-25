# SpecAttr.SpecTheorem.instantiate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13b74cff11f20e7c7b72a4c4a3a10da2e62140856b9daeeeeaf7a01d90462f94",
  "kind": "def",
  "lexical_name": "SpecAttr.SpecTheorem.instantiate",
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
  "slug": "specattr-spectheorem-instantiate--85e34f5393be7ff441e01d90",
  "source": {
    "blob": "b774ffb8b602f173d5e7c66b706555c85bed1ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e34f5393be7ff441e01d9086ac6a9823ecfca4875be029b84aba88f323fcbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13b74cff11f20e7c7b72a4c4a3a10da2e62140856b9daeeeeaf7a01d90462f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def SpecAttr.SpecTheorem.instantiate (specThm : SpecTheorem) :
    MetaM (Array Expr × Array BinderInfo × Expr × Expr) := do
  let (xs, bs, prf, type) ← specThm.proof.instantiate
  let .simp etaArgs := specThm.kind
    | do
      let some (prf, type) ← tripleToWpProof? prf type
        | throwError "expected `Triple` or `⊑ wp` specification, got{indentExpr type}"
      return (xs, bs, prf, type)
  if etaArgs == 0 then return (xs, bs, prf, type)
  let_expr Eq eqα _lhs _rhs := type | return (xs, bs, prf, type)
  -- Eta-expand: introduce fresh metavars for leading foralls, then apply congrFun for each.
  let (extraXs, extraBs, _) ← withReducible <| forallMetaBoundedTelescope eqα etaArgs
  let prf ← extraXs.foldlM (init := prf) Meta.mkCongrFun
  let type ← inferType prf
  return (xs ++ extraXs, bs ++ extraBs, prf, type)

/-- The declaration name of a global spec theorem, `none` for local/syntactic specs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774ffb8b602f173d5e7c66b706555c85bed1ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
