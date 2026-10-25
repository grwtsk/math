# canonicalizeWithSharing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7694206e0e8c5a94c52fcc98ad4cbfaec728b96d928f16ab2d13f71e7040791c",
  "kind": "def",
  "lexical_name": "canonicalizeWithSharing",
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
  "slug": "canonicalizewithsharing--a2c4a0ed3228f4f7d403cd91",
  "source": {
    "blob": "6a9994eafd980f68b3c9d54be33bec8eda1599be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2c4a0ed3228f4f7d403cd91f681ba45d3d43cdb65602eeeaa76430f992a0c71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7694206e0e8c5a94c52fcc98ad4cbfaec728b96d928f16ab2d13f71e7040791c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalizeWithSharing (P : Expr) (lhs rhs : Expr) : SimpM Simp.Step := do
  withTraceNode (collapsed := false) `Meta.Tactic.bv (fun _ => pure m!"canonicalizeWithSharing") <| do
  trace[Meta.Tactic.bv] "Canonicalizing: {indentExpr <| mkApp2 P lhs rhs}"

  let some op := Op.ofApp2? lhs |
    trace[Meta.Tactic.bv] "Failed to recognize operation: {indentExpr lhs}"
    return .continue
  let some op' := Op.ofApp2? rhs |
    trace[Meta.Tactic.bv] "Failed to recognize operation: {indentExpr rhs}"
    return .continue

  -- Ignore cases where LHS and RHS ops are different.
  if op != op' then
    trace[Meta.Tactic.bv] "Operations mismatch:
      the left-hand-side has operation {op}
        {indentExpr lhs}
      but the right-hand-side has operation {op'}
        {indentExpr rhs}"
    return .continue

  trace[Meta.Tactic.bv] "Canonicalizing with respect to operation: '{op}'."

  VarStateM.run' (s := { op }) do
    let lCoeff ← computeCoefficients op lhs
    let rCoeff ← computeCoefficients op rhs

    let ⟨commonCoeff, lCoeff, rCoeff⟩ ← SharedCoefficients.compute lCoeff rCoeff
    let commonExpr? : Option Expr ← commonCoeff.toExpr op
    let lNew? : Option Expr ← lCoeff.toExpr op
    let rNew? : Option Expr ← rCoeff.toExpr op

    -- Since `lCoeff_{old} = commonCoeff + lCoeff_{new}`, and all coefficients
    -- of `lCoeff_{old}` are zero iff `lExpr` contains only neutral elements,
    -- we default to `lNew` being some canonical neutral element if both
    -- `commonExpr?` and `lNew?` are `none`.
    let lNew := Option.merge (mkApp2 op.toExpr) commonExpr? lNew? |>.getD op.neutralElement
    let rNew := Option.merge (mkApp2 op.toExpr) commonExpr? rNew? |>.getD op.neutralElement

    let oldExpr := mkApp2 P lhs rhs
    let expr := mkApp2 P lNew rNew
    let proof ← proveEqualityByAC oldExpr expr

    return .continue <| some { expr := expr, proof? := some proof }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9994eafd980f68b3c9d54be33bec8eda1599be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
