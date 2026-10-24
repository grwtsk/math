# logScale_power_div_rpow_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:361a996f-767c-599d-5c77-a14647dba8e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cae7b85-e246-0543-114f-a2bef480a23d",
  "kind": "theorem",
  "lexical_name": "logScale_power_div_rpow_tendsto",
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
  "slug": "logscale-power-div-rpow-tendsto--f8f31cfe5a841c8344e9ffa0",
  "source": {
    "blob": "67f119581b9bc43f929165355d9d7bc846d69140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8f31cfe5a841c8344e9ffa0fe34b119efc5be4bc1589f83cc6657604999fb30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cae7b85-e246-0543-114f-a2bef480a23d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logScale_power_div_rpow_tendsto (n : ℕ) (r : ℝ) (hr : 0 < r) :
    Tendsto (fun X : ℕ => logScale X ^ n / (X : ℝ) ^ r) atTop (nhds 0) := by
  have hb : Tendsto (fun x : ℝ => Real.log x ^ n / x ^ r) atTop (nhds 0) := by
    simpa only [Real.rpow_natCast] using
      (isLittleO_log_rpow_rpow_atTop (n : ℝ) hr).tendsto_div_nhds_zero
  have hc : Tendsto (fun x : ℝ => (2 : ℝ) ^ n * (Real.log x ^ n / x ^ r))
      atTop (nhds 0) := by simpa using tendsto_const_nhds.mul hb
  have ht : Tendsto (fun x : ℝ => (1 + Real.log x) ^ n / x ^ r) atTop (nhds 0) := by
    apply squeeze_zero' _ _ hc
    · filter_upwards [eventually_ge_atTop (1 : ℝ)] with x hx
      exact div_nonneg (pow_nonneg (by linarith [Real.log_nonneg hx]) _) (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
    · filter_upwards [Real.tendsto_log_atTop.eventually_ge_atTop (1 : ℝ),
        eventually_ge_atTop (1 : ℝ)] with x hl hx
      have hp : (1 + Real.log x) ^ n ≤ (2 * Real.log x) ^ n := by gcongr; linarith
      calc
        _ ≤ (2 * Real.log x) ^ n / x ^ r := div_le_div_of_nonneg_right hp (Real.rpow_nonneg (by linarith : 0 ≤ x) r)
        _ = _ := by rw [mul_pow]; ring
  exact ht.comp tendsto_natCast_atTop_atTop

/-- Damping and all three explicit error bounds vanish on the same complete natural diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variantda9f0bfa574cb5665cd6921b4a764f77ed54cd10fe000d512d64810725978ba7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f119581b9bc43f929165355d9d7bc846d69140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
