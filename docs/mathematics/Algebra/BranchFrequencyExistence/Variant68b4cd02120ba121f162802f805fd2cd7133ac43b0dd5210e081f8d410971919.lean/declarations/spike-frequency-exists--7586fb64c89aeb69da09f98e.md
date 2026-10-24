# spike_frequency_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a346f0b0-c68e-68b7-7e1c-c468b29021ff",
  "kind": "theorem",
  "lexical_name": "spike_frequency_exists",
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
  "slug": "spike-frequency-exists--7586fb64c89aeb69da09f98e",
  "source": {
    "blob": "8f6a74dd8c263025232fa84edb01076723628332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 319,
    "path": "GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7586fb64c89aeb69da09f98eff4916adbab233b9d53e9c3d886298a4187e350d",
  "verification": {
    "reference": "docs/verification/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a346f0b0-c68e-68b7-7e1c-c468b29021ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spike_frequency_exists (gamma : ℕ → ℝ) (hgamma : ∀ n, 0 ≤ gamma n) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      FrequencyRealization (spikePartialQuotient gamma) alpha ∧
      frequencyExponent alpha = limsup (fun n ↦ ENNReal.ofReal (gamma n)) atTop := by
  have ha : ∀ n, 0 < spikePartialQuotient gamma n :=
    fun n ↦ spikeCoefficient_pos (gamma n) _
  let alpha := realizedFrequency (spikePartialQuotient gamma) ha
  have hr : FrequencyRealization (spikePartialQuotient gamma) alpha :=
    realizedFrequency_realization _ ha
  have hb := realizedFrequency_bounds (spikePartialQuotient gamma) ha
  refine ⟨alpha, hb.1, hb.2, frequency_irrational hr, hr, ?_⟩
  rw [frequencyExponent_eq hr, ← spikeDenominator_identifies]
  exact spikeDenominator_exponent gamma hgamma

/-- Sparse spikes realize the effective-strength limsup, including an infinite value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6a74dd8c263025232fa84edb01076723628332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
