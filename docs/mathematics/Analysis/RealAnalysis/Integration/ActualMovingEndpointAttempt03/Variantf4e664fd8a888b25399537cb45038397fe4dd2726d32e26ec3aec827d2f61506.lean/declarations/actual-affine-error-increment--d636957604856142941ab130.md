# actual_affine_error_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ad23428-65aa-a47a-1275-9f0fcf3221b0",
  "kind": "theorem",
  "lexical_name": "actual_affine_error_increment",
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
  "slug": "actual-affine-error-increment--d636957604856142941ab130",
  "source": {
    "blob": "60411d981ffc58aca75ab6585ad29bdb13f3c59d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variantf4e664fd8a888b25399537cb45038397fe4dd2726d32e26ec3aec827d2f61506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d636957604856142941ab130344ae050fad930d72662f239ed06da42e9058d29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variantf4e664fd8a888b25399537cb45038397fe4dd2726d32e26ec3aec827d2f61506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad23428-65aa-a47a-1275-9f0fcf3221b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_affine_error_increment
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {a b : ℝ}
    (ha : 0 ≤ a) (hab : a ≤ b) :
    actualAffineError a-actualAffineError b =
      -(∫ t in a..b, actualPrimeRemainder t)+(∫ t in a..b, criticalDecay t) := by
  have hi := (actual_prime_remainder_integrable hI).mono_set (Ioi_subset_Ioi ha)
  have h := intervalIntegral.integral_Ioi_sub_Ioi hi hab
  rw [actualAffineError,actualAffineError,decay_interval_integral]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variantf4e664fd8a888b25399537cb45038397fe4dd2726d32e26ec3aec827d2f61506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt03/Variantf4e664fd8a888b25399537cb45038397fe4dd2726d32e26ec3aec827d2f61506.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60411d981ffc58aca75ab6585ad29bdb13f3c59d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
