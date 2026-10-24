# half_moment_transport_with_firstMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab9d1e99aabdd9923037d53ea11a54fe15af7191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a799841-0135-2b66-1396-86556014a7ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0473774-f25d-fd3c-e57c-d4d274ce9d69",
  "kind": "theorem",
  "lexical_name": "half_moment_transport_with_firstMoment",
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
  "slug": "half-moment-transport-with-firstmoment--2f7ea5427915d3188f537169",
  "source": {
    "blob": "ab9d1e99aabdd9923037d53ea11a54fe15af7191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 17,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7ea5427915d3188f53716913b7049325daf29b0fee1a4d76c6018959a29087",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0473774-f25d-fd3c-e57c-d4d274ce9d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_moment_transport_with_firstMoment (F : ℝ → ℝ) (s B : ℝ)
    (hF : Continuous F) (hcompact : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B) :
    (∫ r in Ioi (0 : ℝ), r * Real.exp (r / 2) * F (s + r)) =
      Real.exp (-s / 2) * B +
        ∫ r in Ioi (0 : ℝ), r * Real.exp (-r / 2) * F (s - r) := by
  have h0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * F t) := by
    simpa only [pow_zero, one_mul] using weighted_moment_integrable F hF hcompact 0
  have h1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * F t) := by
    simpa only [pow_one] using weighted_moment_integrable F hF hcompact 1
  have hi := translated_first_moment_integrable F s hF hcompact
  have hsplit := intervalIntegral.integral_Iic_add_Ioi hi.integrableOn hi.integrableOn (b := 0)
  rw [translated_first_moment F s h0 h1, hz0, hB, mul_zero, sub_zero] at hsplit
  have href : (∫ r in Iic (0 : ℝ), r * Real.exp (r / 2) * F (s + r)) =
      -(∫ r in Ioi (0 : ℝ), r * Real.exp (-r / 2) * F (s - r)) := by
    have hh := integral_comp_neg_Ioi 0 (fun r : ℝ ↦ r * Real.exp (r / 2) * F (s + r))
    simp only [neg_zero] at hh
    rw [← hh, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro r _
    simp only [← sub_eq_add_neg]
    ring
  rw [href] at hsplit
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9d1e99aabdd9923037d53ea11a54fe15af7191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
