# iteratedDeriv_two_cgf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bd321e9-5817-5b8f-f001-5cfdd861f94e",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_two_cgf",
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
  "slug": "iteratedderiv-two-cgf--554bfd19e602b012b3eb8a90",
  "source": {
    "blob": "b5118630963a7330f69dc335ed0975a70442368b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554bfd19e602b012b3eb8a90b9b4366108d1e50c67d6ecdbf65eca8309744a70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bd321e9-5817-5b8f-f001-5cfdd861f94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_two_cgf (h : v ∈ interior (integrableExpSet X μ)) :
    iteratedDeriv 2 (cgf X μ) v
      = μ[fun ω ↦ (X ω) ^ 2 * exp (v * X ω)] / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
  rw [iteratedDeriv_succ, iteratedDeriv_one]
  by_cases hμ : μ = 0
  · simp [hμ]
  have h_mem : ∀ᶠ y in 𝓝 v, y ∈ interior (integrableExpSet X μ) :=
    isOpen_interior.eventually_mem h
  have h_d_cgf : deriv (cgf X μ) =ᶠ[𝓝 v] fun u ↦ μ[fun ω ↦ X ω * exp (u * X ω)] / mgf X μ u := by
    filter_upwards [h_mem] with u hu using deriv_cgf hu
  have h_d_mgf : deriv (mgf X μ) =ᶠ[𝓝 v] fun u ↦ μ[fun ω ↦ X ω * exp (u * X ω)] := by
    filter_upwards [h_mem] with u hu using deriv_mgf hu
  rw [h_d_cgf.deriv_eq]
  calc deriv (fun u ↦ (∫ ω, X ω * exp (u * X ω) ∂μ) / mgf X μ u) v
  _ = (deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v * mgf X μ v -
      (∫ ω, X ω * exp (v * X ω) ∂μ) * deriv (mgf X μ) v) / mgf X μ v ^ 2 := by
    rw [deriv_fun_div]
    · rw [h_d_mgf.symm.differentiableAt_iff, ← iteratedDeriv_one]
      exact differentiableAt_iteratedDeriv_mgf h 1
    · exact differentiableAt_mgf h
    · exact (mgf_pos' hμ (interior_subset (s := integrableExpSet X μ) h)).ne'
  _ = (deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v * mgf X μ v -
      (∫ ω, X ω * exp (v * X ω) ∂μ) * ∫ ω, X ω * exp (v * X ω) ∂μ) / mgf X μ v ^ 2 := by
    rw [deriv_mgf h]
  _ = deriv (fun u ↦ ∫ ω, X ω * exp (u * X ω) ∂μ) v / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
    rw [sub_div]
    congr 1
    · rw [pow_two, div_mul_eq_div_div, mul_div_assoc, div_self, mul_one]
      exact (mgf_pos' hμ (interior_subset (s := integrableExpSet X μ) h)).ne'
    · rw [deriv_cgf h]
      ring
  _ = (∫ ω, (X ω) ^ 2 * exp (v * X ω) ∂μ) / mgf X μ v - deriv (cgf X μ) v ^ 2 := by
    congr
    convert! (hasDerivAt_integral_pow_mul_exp_real h 1).deriv using 1
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5118630963a7330f69dc335ed0975a70442368b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
