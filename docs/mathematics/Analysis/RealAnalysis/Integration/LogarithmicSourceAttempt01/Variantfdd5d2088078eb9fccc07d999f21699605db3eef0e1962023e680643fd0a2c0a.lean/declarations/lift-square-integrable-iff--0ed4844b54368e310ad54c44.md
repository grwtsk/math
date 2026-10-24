# lift_square_integrable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60cf4fb8-1a2c-c791-b16f-1b45c9b3df2b",
  "kind": "theorem",
  "lexical_name": "lift_square_integrable_iff",
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
  "slug": "lift-square-integrable-iff--0ed4844b54368e310ad54c44",
  "source": {
    "blob": "a84c37400b92c38384146f1f77b32b6a970772ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed4844b54368e310ad54c44d073c664886b475e2465475c913450045113acd5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60cf4fb8-1a2c-c791-b16f-1b45c9b3df2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_square_integrable_iff (f : ℝ → ℝ) :
    IntegrableOn (fun x => (positiveLogLift f x)^2) (Ioi 0) ↔
      Integrable (fun t => (f t)^2) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) measurableSet_univ
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    (fun _ _ _ _ he => Real.exp_injective he)
    (fun x => (positiveLogLift f x)^2)
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),smul_eq_mul,
    lift_square_jacobian,integrableOn_univ] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84c37400b92c38384146f1f77b32b6a970772ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
