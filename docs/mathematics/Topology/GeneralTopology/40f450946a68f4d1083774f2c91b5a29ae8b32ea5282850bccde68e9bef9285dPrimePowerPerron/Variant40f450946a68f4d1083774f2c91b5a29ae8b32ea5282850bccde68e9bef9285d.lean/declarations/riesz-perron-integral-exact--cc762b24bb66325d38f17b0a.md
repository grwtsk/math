# riesz_perron_integral_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f260b88a1f5cb637bfe04747fca27caa4ea083e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 671,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf91ab5e-80f3-8f6d-d734-9400e93327ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75b2a3f8-421d-bb63-1d8c-3ae847ffe9b9",
  "kind": "theorem",
  "lexical_name": "riesz_perron_integral_exact",
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
  "slug": "riesz-perron-integral-exact--cc762b24bb66325d38f17b0a",
  "source": {
    "blob": "6f260b88a1f5cb637bfe04747fca27caa4ea083e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 671,
    "path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc762b24bb66325d38f17b0abdaba3fd0b11dd7f065396cb2d9187708969ccd4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75b2a3f8-421d-bb63-1d8c-3ae847ffe9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_perron_integral_exact (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ) =
      (1 / (2 * Real.pi) : ℂ) *
        ∫ t : ℝ, rieszPerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  have hp := perron_prime_side_line (rieszLineTransform A c) (rieszWindow A)
    (riesz_line_transform_integrable A c (by linarith)) (c + 1 / 2) (by linarith)
    (fun y ↦ by simpa using riesz_line_transform_inversion A c y (by linarith))
  rw [riesz_prime_sum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  have hs : ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
      ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 := by push_cast; ring
  rw [hs]
  unfold rieszPerronIntegrand rieszLineTransform logDeriv
  simp only [Pi.div_apply]
  ring

/-- The rational Perron integrand is genuinely integrable in the shifted Dirichlet half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f260b88a1f5cb637bfe04747fca27caa4ea083e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
