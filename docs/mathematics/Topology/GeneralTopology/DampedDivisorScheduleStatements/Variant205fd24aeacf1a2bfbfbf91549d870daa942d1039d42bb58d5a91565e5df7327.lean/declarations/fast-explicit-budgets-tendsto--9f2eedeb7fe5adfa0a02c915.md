# fast_explicit_budgets_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ac94514-64e7-4cb1-aca5-9f29ec7209ae",
  "kind": "theorem",
  "lexical_name": "fast_explicit_budgets_tendsto",
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
  "slug": "fast-explicit-budgets-tendsto--9f2eedeb7fe5adfa0a02c915",
  "source": {
    "blob": "d7e5a173f39c1da9427410491fe1762fd2737ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant205fd24aeacf1a2bfbfbf91549d870daa942d1039d42bb58d5a91565e5df7327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2eedeb7fe5adfa0a02c915b16a7436774dee599d15470ba9c3112bed563be4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant205fd24aeacf1a2bfbfbf91549d870daa942d1039d42bb58d5a91565e5df7327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ac94514-64e7-4cb1-aca5-9f29ec7209ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_explicit_budgets_tendsto :
    Tendsto fastEpsilon atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => logScale X ^ 2 / (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) ∧
    Tendsto (fun X : ℕ => 25 * logScale X ^ 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) := by
  refine ⟨tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop, ?_,
    explicit_tail_bounds_tendsto.2, ?_⟩
  · simpa using logScale_power_div_rpow_tendsto 2 1 (by norm_num)
  · have hb : Tendsto (fun X : ℕ => logScale X ^ 3 / Real.sqrt (X : ℝ))
        atTop (nhds 0) := by
      simpa only [Real.sqrt_eq_rpow] using
        logScale_power_div_rpow_tendsto 3 (1 / 2) (by norm_num)
    simpa only [mul_zero, mul_div_assoc] using
      (tendsto_const_nhds (x := (25 : ℝ))).mul hb

/-- The actual endpoint quantities and the full Taylor budget vanish together, without a core premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant205fd24aeacf1a2bfbfbf91549d870daa942d1039d42bb58d5a91565e5df7327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant205fd24aeacf1a2bfbfbf91549d870daa942d1039d42bb58d5a91565e5df7327.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e5a173f39c1da9427410491fe1762fd2737ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
