# tendsto_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb5c7c90-d9f4-c9ce-c4bc-31b4d6e1cfff",
  "kind": "theorem",
  "lexical_name": "tendsto_normalization",
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
  "slug": "tendsto-normalization--331baa402e00be3feb05474e",
  "source": {
    "blob": "be1e5042ecc6aefd5ea86e7f63837b441e9846ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 233,
    "path": "GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:331baa402e00be3feb05474e9ab54495ace5fd33f0cb4663e69366e447d9b637",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb5c7c90-d9f4-c9ce-c4bc-31b4d6e1cfff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_normalization {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) :
    Tendsto (normalization h) atTop (𝓝 ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))) := by
  have h4 : Tendsto (fun A : ℝ ↦ (A ^ 4)⁻¹) atTop (𝓝 0) :=
    (tendsto_pow_atTop (α := ℝ) (by decide : 4 ≠ 0)).inv_tendsto_atTop
  have h2 : Tendsto (fun A : ℝ ↦ (A ^ 2)⁻¹) atTop (𝓝 0) :=
    (tendsto_pow_atTop (α := ℝ) (by decide : 2 ≠ 0)).inv_tendsto_atTop
  have ht := ((h4.mul_const (∫ x : ℝ, (deriv (deriv h) x) ^ 2)).add
    ((h2.const_mul (1 / 2 : ℝ)).mul_const (∫ x : ℝ, (deriv h x) ^ 2))).add_const
    ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))
  have ht' : Tendsto (fun A : ℝ ↦
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv h) x) ^ 2) +
      ((1 / 2) * (A ^ 2)⁻¹) * (∫ x : ℝ, (deriv h x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (h x) ^ 2)) atTop
      (𝓝 ((1 / 16) * (∫ x : ℝ, (h x) ^ 2))) := by
    simpa only [zero_mul, mul_zero, zero_add] using ht
  refine ht'.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  rw [normalization_eq hc hs hA]
  ring

/-- The normalization has a lower bound independent of the positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1e5042ecc6aefd5ea86e7f63837b441e9846ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
