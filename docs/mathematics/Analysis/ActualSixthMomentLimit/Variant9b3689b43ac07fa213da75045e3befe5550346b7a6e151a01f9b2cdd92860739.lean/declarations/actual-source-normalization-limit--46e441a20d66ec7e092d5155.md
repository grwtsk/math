# actual_source_normalization_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18f65d97-6cb8-16ef-14f4-e7a54a57b248",
  "kind": "theorem",
  "lexical_name": "actual_source_normalization_limit",
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
  "slug": "actual-source-normalization-limit--46e441a20d66ec7e092d5155",
  "source": {
    "blob": "bf549a47a77bf5d31a9308da68139406a511e872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 28,
    "path": "GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46e441a20d66ec7e092d51550170500567d175f2920604753da9409885ddf790",
  "verification": {
    "reference": "docs/verification/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18f65d97-6cb8-16ef-14f4-e7a54a57b248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_normalization_limit :
    Tendsto sourceNormalization atTop (𝓝 (4096 / 109395 : ℝ)) := by
  have h2 := inverse_radius_power_tends_to_zero 2 (by decide)
  have h4 := inverse_radius_power_tends_to_zero 4 (by decide)
  have ht := ((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (4096 / 109395 : ℝ)) atTop
      (𝓝 (4096 / 109395 : ℝ))).add
    (h2.const_mul ((131072 / 45045 : ℝ) / 2))).add
      (h4.const_mul (196608 / 5005 : ℝ))
  have heq : sourceNormalization = fun A : ℝ ↦ (4096 / 109395 : ℝ) +
      ((131072 / 45045 : ℝ) / 2) * (1 / A ^ 2) +
        (196608 / 5005 : ℝ) * (1 / A ^ 4) := by
    funext A
    unfold sourceNormalization
    ring
  rw [heq]
  simpa only [mul_zero, add_zero] using ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualSixthMomentLimit/Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf549a47a77bf5d31a9308da68139406a511e872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
