# mem_coordinateDomain_iff_weighted_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b0e0edf-74f7-4d0f-da8d-46dac0dd37ba",
  "kind": "theorem",
  "lexical_name": "mem_coordinateDomain_iff_weighted_integrable",
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
  "slug": "mem-coordinatedomain-iff-weighted-integrable--ada845873a543b49f746d6e5",
  "source": {
    "blob": "515433b03cd43bee70b7fd42f2fbba7b2e47dd5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ada845873a543b49f746d6e5fb3b813d75009b92f6225cf206cf67bc524a434b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b0e0edf-74f7-4d0f-da8d-46dac0dd37ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coordinateDomain_iff_weighted_integrable (f : Lp ℂ 2 μ) :
    f ∈ coordinateDomain μ ↔
      Integrable (fun x => (1 + x ^ 2) * ‖f x‖ ^ 2) μ := by
  have ha : AEStronglyMeasurable (fun x : ℝ => (x : ℂ) * f x) μ :=
    Complex.continuous_ofReal.aestronglyMeasurable.mul (Lp.aestronglyMeasurable f)
  have hi := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable f)).mp (Lp.memLp f)
  have he (x : ℝ) : ‖(x : ℂ) * f x‖ ^ 2 = x ^ 2 * ‖f x‖ ^ 2 := by
    simp [mul_pow]
  constructor
  · intro hf
    have hm := (memLp_two_iff_integrable_sq_norm ha).mp hf
    apply (hi.add hm).congr
    exact Filter.Eventually.of_forall fun x => by simp only [Pi.add_apply, he]; ring
  · intro hf
    apply (memLp_two_iff_integrable_sq_norm ha).mpr
    apply hf.mono' (ha.norm.pow 2)
    exact Filter.Eventually.of_forall fun x => by
      change ‖‖(x : ℂ) * f x‖ ^ 2‖ ≤ (1 + x ^ 2) * ‖f x‖ ^ 2
      rw [he]
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (sq_nonneg x) (sq_nonneg ‖f x‖))]
      nlinarith [sq_nonneg ‖f x‖]

/-- The measure whose L² norm is the multiplication graph norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515433b03cd43bee70b7fd42f2fbba7b2e47dd5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
