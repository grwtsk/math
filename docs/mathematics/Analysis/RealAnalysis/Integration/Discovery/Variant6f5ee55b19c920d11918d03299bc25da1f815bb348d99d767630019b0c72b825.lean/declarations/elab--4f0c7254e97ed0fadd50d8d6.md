# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba228b04ac4da7b3467761a5a974e28478b0a9d170fe3106f136dcd93a2ee77a",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--4f0c7254e97ed0fadd50d8d6",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1937,
    "line": 1854,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f0c7254e97ed0fadd50d8d6b61c03b973345cec43c8856a00146a8b2463da41",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba228b04ac4da7b3467761a5a974e28478b0a9d170fe3106f136dcd93a2ee77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1854–1937.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#explore " e:term " on " "[" lo:signedInt ", " hi:signedInt "]" : command => do
  liftTermElabM do
    -- Elaborate the expression
    let exprE ← elabTerm e (some (mkConst ``LeanCert.Core.Expr))
    let exprE ← instantiateMVars exprE

    -- Parse bounds as integers from syntax
    let loInt := parseSignedInt lo
    let hiInt := parseSignedInt hi
    let loVal : ℚ := loInt
    let hiVal : ℚ := hiInt

    -- Evaluate to get the actual values
    let astVal ← unsafe evalExpr LExpr (mkConst ``LeanCert.Core.Expr) exprE

    -- Check bounds are valid
    if h : loVal ≤ hiVal then
      let intervalVal : IntervalRat := ⟨loVal, hiVal, h⟩

      let cfg : GuidedOptConfig := {
        maxIterations := 1000,
        tolerance := 1/1000,
        taylorDepth := 10,
        useMonotonicity := true,
        heuristicSamples := 200,
        seed := 12345,
        useGridSearch := true,
        gridPointsPerDim := 10
      }
      let box : Box := [intervalVal]

      -- Compute range (min and max) using float-guided optimization
      let minResult := globalMinimizeGuided astVal box cfg
      let maxResult := globalMaximizeGuided astVal box cfg

      -- Check for sign change (root detection)
      let evalCfg : EvalConfig := { taylorDepth := 10 }
      let hasSignChange := Validity.RootFinding.checkSignChange astVal intervalVal evalCfg

      -- Compute gradient/derivative bounds for monotonicity analysis
      let grad := gradientIntervalCore astVal box evalCfg
      let gradStr := match grad with
        | [] => "N/A (no variables)"
        | [dI] => s!"[{dI.lo}, {dI.hi}]"
        | _ => s!"{grad.map (fun dI => s!"[{dI.lo}, {dI.hi}]")}"

      -- Classify monotonicity based on derivative sign
      let monotonicityStr := match grad with
        | [] => "constant"
        | [dI] =>
          if dI.lo > 0 then "strictly increasing"
          else if dI.hi < 0 then "strictly decreasing"
          else if dI.lo ≥ 0 then "non-decreasing"
          else if dI.hi ≤ 0 then "non-increasing"
          else "non-monotonic (derivative changes sign)"
        | _ => "multivariate"

      -- Count potential roots from sign change
      let rootStr := if hasSignChange then
        "Sign change detected - at least one root exists (by IVT)"
      else
        "No sign change - may have no roots or an even number"

      -- Format output
      let minStr := s!"{minResult.bound.lo}"
      let maxStr := s!"{maxResult.bound.hi}"

      logInfo m!"=== Function Analysis ===\n\
                 Expression: {exprE}\n\
                 Domain: [{loVal}, {hiVal}]\n\
                 \n\
                 Range: [{minStr}, {maxStr}]\n\
                 Global minimum: ≥ {minStr}\n\
                 Global maximum: ≤ {maxStr}\n\
                 \n\
                 Derivative bounds: {gradStr}\n\
                 Monotonicity: {monotonicityStr}\n\
                 \n\
                 Roots: {rootStr}\n\
                 Iterations: min={minResult.bound.iterations}, max={maxResult.bound.iterations}"
    else
      throwError "#explore: Invalid interval: lo ({loVal}) must be ≤ hi ({hiVal})"

end LeanCert.Tactic.Discovery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
