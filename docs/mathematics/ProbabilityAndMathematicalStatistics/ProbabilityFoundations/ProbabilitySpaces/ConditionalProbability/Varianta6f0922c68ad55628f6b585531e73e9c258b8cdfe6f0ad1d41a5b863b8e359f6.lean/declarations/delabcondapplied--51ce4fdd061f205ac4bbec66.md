# delabCondApplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368dc754ea62bc849570aaff94f1b42cba32807705b6a22c0433933476a15082",
  "kind": "def",
  "lexical_name": "delabCondApplied",
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
  "slug": "delabcondapplied--51ce4fdd061f205ac4bbec66",
  "source": {
    "blob": "bdb344a93c1e042c1c8391d95a22db68441bd00f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 108,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51ce4fdd061f205ac4bbec66575e40f75929a1a0f3653788d581ef9c0691e7de",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:368dc754ea62bc849570aaff94f1b42cba32807705b6a22c0433933476a15082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabCondApplied : Delab :=
  whenNotPPOption getPPExplicit <| whenPPOption getPPNotation <| withOverApp 6 do
    let e ← getExpr
    guard <| e.isAppOfArity' ``DFunLike.coe 6
    guard <| (e.getArg!' 4).isAppOf' ``ProbabilityTheory.cond
    let t ← withAppArg delab
    withAppFn <| withAppArg do
      let μ ← withNaryArg 2 delab
      let s ← withNaryArg 3 delab
      `($μ[$t|$s])

/-- info: μ[t | s] : ℝ≥0∞ -/
#guard_msgs in
#check μ[t | s]
/-- info: μ[t | s] : ℝ≥0∞ -/
#guard_msgs in
#check μ[|s] t

end delaborators

/-- The conditional probability measure of measure `μ` on `{ω | X ω ∈ s}`.

It is `μ` restricted to `{ω | X ω ∈ s}` and scaled by the inverse of `μ {ω | X ω ∈ s}`
(to make it a probability measure): `(μ {ω | X ω ∈ s})⁻¹ • μ.restrict {ω | X ω ∈ s}`. -/
scoped macro:max μ:term noWs "[|" X:term " in " s:term "]" : term => `($μ[|$X ⁻¹' $s])

/-- The conditional probability measure of measure `μ` on set `{ω | X ω = x}`.

It is `μ` restricted to `{ω | X ω = x}` and scaled by the inverse of `μ {ω | X ω = x}`
(to make it a probability measure): `(μ {ω | X ω = x})⁻¹ • μ.restrict {ω | X ω = x}`. -/
scoped macro:max μ:term noWs "[" s:term " | " X:term " in " t:term "]" : term =>
  `($μ[$s | $X ⁻¹' $t])

/-- The conditional probability measure of measure `μ` on `{ω | X ω = x}`.

It is `μ` restricted to `{ω | X ω = x}` and scaled by the inverse of `μ {ω | X ω = x}`
(to make it a probability measure): `(μ {ω | X ω = x})⁻¹ • μ.restrict {ω | X ω = x}`. -/
scoped macro:max μ:term noWs "[|" X:term " ← " x:term "]" : term => `($μ[|$X in {$x:term}])

/-- The conditional probability measure of measure `μ` on set `{ω | X ω = x}`.

It is `μ` restricted to `{ω | X ω = x}` and scaled by the inverse of `μ {ω | X ω = x}`
(to make it a probability measure): `(μ {ω | X ω = x})⁻¹ • μ.restrict {ω | X ω = x}`. -/
scoped macro:max μ:term noWs "[" s:term " | " X:term " ← " x:term "]" : term =>
  `($μ[$s | $X in {$x:term}])

/-- The conditional probability measure of any measure on any set of finite positive measure
is a probability measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb344a93c1e042c1c8391d95a22db68441bd00f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
