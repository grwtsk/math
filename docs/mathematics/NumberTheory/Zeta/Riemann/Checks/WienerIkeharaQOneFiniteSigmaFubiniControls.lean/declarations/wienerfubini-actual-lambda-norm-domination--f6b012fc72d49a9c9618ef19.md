# wienerFubini_actual_lambda_norm_domination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:804db39d-51b4-864f-20e4-dc9a6f06b13c",
  "kind": "theorem",
  "lexical_name": "wienerFubini_actual_lambda_norm_domination",
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
  "slug": "wienerfubini-actual-lambda-norm-domination--f6b012fc72d49a9c9618ef19",
  "source": {
    "blob": "8cf39c7b33e14f4bba5cbd281b018f696e78e6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6b012fc72d49a9c9618ef195a03713cf6c9661255de640dcd37f03b6ae9a55a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:804db39d-51b4-864f-20e4-dc9a6f06b13c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFubini_actual_lambda_norm_domination
    (sigma T : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Continuous psi)
    (hcompact : HasCompactSupport psi) :
    Summable
      (fun n : ℕ =>
        ∫ t : ℝ,
          ‖wienerFubiniIntegrand
            wienerFubiniLambda sigma T psi n t‖) :=
  wienerFubini_integral_norm_summable
    wienerFubiniLambda sigma T psi
    (hpsi.integrable_of_hasCompactSupport hcompact)
    (wienerFubiniLambda_LSeriesSummable
      (by simpa using hsigma))

/-- The actual valid sum-integral exchange has BOTH analytic inputs:
term integrability and the pinned summable series of their L1 norms.
The general theorem constructs the exchange instead of assuming it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf39c7b33e14f4bba5cbd281b018f696e78e6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
