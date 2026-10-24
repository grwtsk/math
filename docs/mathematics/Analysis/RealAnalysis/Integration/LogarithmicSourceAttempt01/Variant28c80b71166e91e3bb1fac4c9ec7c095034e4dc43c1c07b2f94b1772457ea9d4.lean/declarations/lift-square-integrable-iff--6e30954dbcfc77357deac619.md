# lift_square_integrable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61bde304-31c9-6a19-7cfc-bba2843ebbd0",
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
  "slug": "lift-square-integrable-iff--6e30954dbcfc77357deac619",
  "source": {
    "blob": "71302826b97f9540cf1ce67127a2ea561f339d7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e30954dbcfc77357deac6190c77c7085032338c218979840af0ac167a5c7cc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61bde304-31c9-6a19-7cfc-bba2843ebbd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71302826b97f9540cf1ce67127a2ea561f339d7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
