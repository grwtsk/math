# integral_mul_square_le_of_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac85630f-053d-3155-4c9b-71cb78a610a6",
  "kind": "theorem",
  "lexical_name": "integral_mul_square_le_of_unit",
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
  "slug": "integral-mul-square-le-of-unit--2e5ffba14decef073d1ce27b",
  "source": {
    "blob": "048baf162045da10967635cc0a7cb73ebb78ba87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5ffba14decef073d1ce27b3300006c0d6d42fdbfd568ef137a6f6c3b997d02",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac85630f-053d-3155-4c9b-71cb78a610a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_mul_square_le_of_unit {f g : ℝ → ℝ}
    (hf : Integrable (fun x ↦ (f x) ^ 2))
    (hg : Integrable (fun x ↦ (g x) ^ 2))
    (hm : Integrable (fun x ↦ f x * g x)) (hu : (∫ x : ℝ, (g x) ^ 2) = 1) :
    (∫ x : ℝ, f x * g x) ^ 2 ≤ ∫ x : ℝ, (f x) ^ 2 := by
  let c : ℝ := ∫ x : ℝ, f x * g x
  have hnonneg : 0 ≤ ∫ x : ℝ, (f x - c * g x) ^ 2 :=
    integral_nonneg (fun x ↦ sq_nonneg _)
  have hexpand : (fun x : ℝ ↦ (f x - c * g x) ^ 2) =
      fun x ↦ (f x) ^ 2 - (2 * c) * (f x * g x) + c ^ 2 * (g x) ^ 2 := by
    funext x
    ring
  rw [hexpand] at hnonneg
  rw [integral_add
    (f := fun x : ℝ ↦ (f x) ^ 2 - (2 * c) * (f x * g x))
    (g := fun x : ℝ ↦ c ^ 2 * (g x) ^ 2)
    (hf.sub (hm.const_mul _)) (hg.const_mul _),
    integral_sub (f := fun x : ℝ ↦ (f x) ^ 2)
      (g := fun x : ℝ ↦ (2 * c) * (f x * g x)) hf (hm.const_mul _),
    integral_const_mul, integral_const_mul, hu] at hnonneg
  dsimp [c] at hnonneg
  nlinarith

/-- The unit source norm reduces Cauchy–Schwarz to its exact derivative-square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048baf162045da10967635cc0a7cb73ebb78ba87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
