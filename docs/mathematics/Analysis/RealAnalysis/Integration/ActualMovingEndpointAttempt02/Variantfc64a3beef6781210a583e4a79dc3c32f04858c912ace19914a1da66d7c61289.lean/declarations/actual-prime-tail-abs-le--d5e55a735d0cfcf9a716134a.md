# actual_prime_tail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9895d7d2-723d-0427-201e-e1f370a6a788",
  "kind": "theorem",
  "lexical_name": "actual_prime_tail_abs_le",
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
  "slug": "actual-prime-tail-abs-le--d5e55a735d0cfcf9a716134a",
  "source": {
    "blob": "886ca4b1454b1a7238a68ae48a77ebb19a1df334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt02/Variantfc64a3beef6781210a583e4a79dc3c32f04858c912ace19914a1da66d7c61289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e55a735d0cfcf9a716134a27b60c1b77ffeeb1cdef666c7255208dd10236cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt02/Variantfc64a3beef6781210a583e4a79dc3c32f04858c912ace19914a1da66d7c61289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9895d7d2-723d-0427-201e-e1f370a6a788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_tail_abs_le {K T : ℝ} (hT : 1 ≤ T)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |∫ t in Ioi T, actualPrimeRemainder t| ≤ K/T := by
  have ht : 0 < T := by linarith
  have hi := (inverse_square_integrable ht).const_mul K
  have hb : ∀ᵐ t ∂volume.restrict (Ioi T), ‖actualPrimeRemainder t‖ ≤ K*(1/t^2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    simpa only [Real.norm_eq_abs,mul_one_div] using hdecay t (hT.trans ht.le)
  have h := MeasureTheory.norm_integral_le_of_norm_le hi hb
  rw [integral_const_mul,inverse_square_integral ht] at h
  simpa only [Real.norm_eq_abs,mul_one_div] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt02/Variantfc64a3beef6781210a583e4a79dc3c32f04858c912ace19914a1da66d7c61289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt02/Variantfc64a3beef6781210a583e4a79dc3c32f04858c912ace19914a1da66d7c61289.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886ca4b1454b1a7238a68ae48a77ebb19a1df334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
