# density_mass_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2ef870d5bf24dda9e1402dd5165a54cfd50d90d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f6fa491-6730-f869-41da-b315b2010605",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08dd1dc2-ee7e-f756-adef-9f4519d55608",
  "kind": "theorem",
  "lexical_name": "density_mass_integral",
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
  "slug": "density-mass-integral--f4dbb8c6ab23c95b7dcfb407",
  "source": {
    "blob": "b2ef870d5bf24dda9e1402dd5165a54cfd50d90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 133,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4dbb8c6ab23c95b7dcfb407807fa7cc20cf826e5869d09a6033fb151432871a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08dd1dc2-ee7e-f756-adef-9f4519d55608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_mass_integral (u : ℝ) :
    (∫ v in 0..u, ∫ t in 0..v, criticalDensity t) =
      u ^ 2 / 2 - u - 2 * criticalDecay u + 2 := by
  have hd (v : ℝ) : HasDerivAt
      (fun x : ℝ => x ^ 2 / 2 - x - 2 * criticalDecay x)
      (v - 1 + criticalDecay v) v := by
    have hp := (((hasDerivAt_id v).pow 2).div_const 2).sub (hasDerivAt_id v)
    convert hp.sub ((decay_hasDerivAt v).const_mul 2) using 1 <;>
      first | rfl | (dsimp only [id_eq]; ring)
  have hc : Continuous (fun v : ℝ => v - 1 + criticalDecay v) :=
    (continuous_id.sub continuous_const).add decay_continuous
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun v _ => hd v) (hc.intervalIntegrable (μ := volume) 0 u)
  have hz : criticalDecay 0 = 1 := by simp [criticalDecay]
  rw [hz] at hi
  simp only [sub_zero, mul_one] at hi
  simp_rw [density_mass]
  linarith

/-- Exact finite closed inventory formula at nonnegative coordinates.
The touching endpoint prime is present with the zero factor `u - log p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant5d7278f2316d52bbd765d842a077958c0acbf188f1670b397b2f71ad9b6ea0ca.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ef870d5bf24dda9e1402dd5165a54cfd50d90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
