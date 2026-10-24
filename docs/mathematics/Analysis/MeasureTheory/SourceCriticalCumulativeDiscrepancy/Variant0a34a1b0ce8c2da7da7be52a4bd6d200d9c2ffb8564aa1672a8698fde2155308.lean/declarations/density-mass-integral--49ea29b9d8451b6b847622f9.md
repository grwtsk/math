# density_mass_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:004b3af4-f33b-89b4-7a61-178ecaebb9fd",
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
  "slug": "density-mass-integral--49ea29b9d8451b6b847622f9",
  "source": {
    "blob": "3fb38b675c8a73d12aef33546c2e7b7974806792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ea29b9d8451b6b847622f9736e0c18d8a838b856b4425e978017d45b729ff6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:004b3af4-f33b-89b4-7a61-178ecaebb9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant0a34a1b0ce8c2da7da7be52a4bd6d200d9c2ffb8564aa1672a8698fde2155308.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb38b675c8a73d12aef33546c2e7b7974806792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
