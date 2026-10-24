# actual_second_derivative_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8a821bea8a5fbe471067e46dc9df309e1a5361b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b61fc7e9-edb6-896f-8561-9bdfaeec3b3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2302371-e5fd-45b5-8736-245a6d450d7c",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_square_integrable",
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
  "slug": "actual-second-derivative-square-integrable--ec6cf6c163b02eea1d8fbcd5",
  "source": {
    "blob": "f8a821bea8a5fbe471067e46dc9df309e1a5361b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec6cf6c163b02eea1d8fbcd5a0186012e32597ba29e4abe02bd06897337e1b4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2302371-e5fd-45b5-8736-245a6d450d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_square_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x => (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) := by
  have hi := (unitSecondEnergyProfile_square_integrable ((A ^ 2)⁻¹)).comp_mul_right'
    (inv_ne_zero hA.ne')
  have hs := (hi.const_mul ((A ^ 2)⁻¹ ^ 2)).div_const
    ((Real.sqrt A * Real.sqrt (sourceNormalization A)) ^ 2)
  have hp : Integrable (fun x => actualSecondProfile A x ^ 2) := by
    convert hs using 1
    funext x
    simp only [actualSecondProfile, div_eq_mul_inv, mul_pow]
    ring
  apply hp.congr
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

/-- Exact energy of the unchanged normalized source, for every positive real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt02/Variantdc68172dedd519ee859e1fd115d822c1fe09ccad8842e938dc579eadea33fc14.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a821bea8a5fbe471067e46dc9df309e1a5361b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
