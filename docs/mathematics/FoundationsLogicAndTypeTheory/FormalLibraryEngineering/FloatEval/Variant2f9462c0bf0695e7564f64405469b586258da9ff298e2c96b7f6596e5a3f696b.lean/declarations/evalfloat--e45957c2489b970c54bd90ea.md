# evalFloat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28832ff0e33b2cab7435b72d7a5e9a1b6a699e7f5df83bedde69b60d58b54910",
  "kind": "def",
  "lexical_name": "evalFloat",
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
  "slug": "evalfloat--e45957c2489b970c54bd90ea",
  "source": {
    "blob": "8f382bb429f6893147bccb9d9d1c3837d8ba4387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45957c2489b970c54bd90ea61177526090c3f6e119df611c0da371b87e4c2c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28832ff0e33b2cab7435b72d7a5e9a1b6a699e7f5df83bedde69b60d58b54910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalFloat (e : Expr) (ρ : FloatEnv) : Float :=
  match e with
  | Expr.const q => ratToFloat q
  | Expr.var i => ρ i
  | Expr.add a b => evalFloat a ρ + evalFloat b ρ
  | Expr.mul a b => evalFloat a ρ * evalFloat b ρ
  | Expr.neg a => -(evalFloat a ρ)
  | Expr.inv a => 1.0 / (evalFloat a ρ)
  | Expr.exp a => Float.exp (evalFloat a ρ)
  | Expr.log a => Float.log (evalFloat a ρ)
  | Expr.sin a => Float.sin (evalFloat a ρ)
  | Expr.cos a => Float.cos (evalFloat a ρ)
  | Expr.sqrt a => Float.sqrt (evalFloat a ρ)
  | Expr.atan a => Float.atan (evalFloat a ρ)
  | Expr.sinh a =>
      let x := evalFloat a ρ
      (Float.exp x - Float.exp (-x)) / 2.0
  | Expr.cosh a =>
      let x := evalFloat a ρ
      (Float.exp x + Float.exp (-x)) / 2.0
  | Expr.tanh a =>
      let x := evalFloat a ρ
      let e2x := Float.exp (2.0 * x)
      (e2x - 1.0) / (e2x + 1.0)
  | Expr.arsinh a =>
      let x := evalFloat a ρ
      Float.log (x + Float.sqrt (x * x + 1.0))
  | Expr.atanh a =>
      let x := evalFloat a ρ
      Float.log ((1.0 + x) / (1.0 - x)) / 2.0
  | Expr.sinc a =>
      let x := evalFloat a ρ
      if x.abs < 1e-10 then 1.0
      else Float.sin x / x
  | Expr.erf a => floatErf (evalFloat a ρ)
  | Expr.namedConst c => c.toFloat

/-- Evaluate with a list-based environment (for compatibility with Box) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f382bb429f6893147bccb9d9d1c3837d8ba4387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
