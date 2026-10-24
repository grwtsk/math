# rateGateHasOmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77ad12f7a621677600d27c021feafd212ab7f56b7d64cfb172d0619d9ed84bb5",
  "kind": "def",
  "lexical_name": "rateGateHasOmission",
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
  "slug": "rategatehasomission--11e2828e5d3b9be43ec832c5",
  "source": {
    "blob": "c8be5183a446d17afe024dc46fdfeee2238aa5bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11e2828e5d3b9be43ec832c5046b582c0a478ba7477dc08f8d894f09cd91f5b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77ad12f7a621677600d27c021feafd212ab7f56b7d64cfb172d0619d9ed84bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def rateGateHasOmission (stx : Syntax) : Bool :=
  stx.isOfKind ``Lean.Parser.Term.omission || stx.getArgs.any rateGateHasOmission
run_cmd do
  let names : List String := ["FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelShell", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelComplement", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual", "FormalResearch.RiemannHypothesis.NormalizedRateGate.balancedComplement", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_pos", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_cap_iff", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_eq", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_eq", "FormalResearch.RiemannHypothesis.NormalizedRateGate.balanced_residual_eq", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_balanced_residual_eq", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_exp_eq", "FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_tendsto_zero", "FormalResearch.RiemannHypothesis.NormalizedRateGate.exp_div_tenth_power_lower", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_exceeds_any_cap", "FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_has_no_eventual_upper_bound"]
  for target in names do
    let name := target.toName
    let some info := (← getEnv).find? name
      | throwError "Rate-gate target missing"
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | _ => "other"
    let statement ← liftTermElabM do
      let rendered ← PrettyPrinter.ppUsing info.type fun expr => do
        let printedTerm ← PrettyPrinter.delab expr
        if rateGateHasOmission printedTerm.raw then
          throwError "Rate-gate statement rendering truncated"
        pure printedTerm
      return rendered.pretty 100000
    let axioms ← collectAxioms name
    let payload := Json.mkObj [
      ("declaration", toJson name.toString),
      ("kind", toJson kind),
      ("statement", toJson statement),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("NORMALIZED_RATE_GATE_AUDIT=" ++ payload.compress)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8be5183a446d17afe024dc46fdfeee2238aa5bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
