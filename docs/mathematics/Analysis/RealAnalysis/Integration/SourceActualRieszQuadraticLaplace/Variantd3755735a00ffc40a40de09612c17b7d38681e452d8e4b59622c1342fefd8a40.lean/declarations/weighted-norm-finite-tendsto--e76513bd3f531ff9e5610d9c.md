# weighted_norm_finite_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3be66fa1-4ecb-5534-4e3d-765d6471c126",
  "kind": "theorem",
  "lexical_name": "weighted_norm_finite_tendsto",
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
  "slug": "weighted-norm-finite-tendsto--e76513bd3f531ff9e5610d9c",
  "source": {
    "blob": "9309524b22d3537978d29e5034d1b16d391ed41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e76513bd3f531ff9e5610d9ca56463b0a1449c16b91e74ff8c1585d0933fa9ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3be66fa1-4ecb-5534-4e3d-765d6471c126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_norm_finite_tendsto {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    Tendsto (fun b => ∫ t in 0..b, ‖profile t * Real.exp (-σ * t)‖) atTop
      (𝓝 (σ * ∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t))) := by
  have hi := intervalIntegral_tendsto_integral_Ioi 0
    (cumulative_weight_integrable hM hR hσ harea) tendsto_id
  have hh := (cumulative_weight_tendsto_zero hM hR hσ harea).add (hi.const_mul σ)
  simp only [zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with b hb
  simp only [id_eq, Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
  rw [finite_abel hb σ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variantd3755735a00ffc40a40de09612c17b7d38681e452d8e4b59622c1342fefd8a40.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9309524b22d3537978d29e5034d1b16d391ed41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
